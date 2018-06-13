function [results,rngSeed]=solveOEDeSS...
    (theta_min,theta_max,numSteps,numLoops,global_theta_guess)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In silico experiment OID script
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the model into the model variable
InduciblePromoter_load_model_optimised;
% Duration in of the experiment (minutes)
totalDuration = 50*60;
% Specify the parameters to be calibrated.
% The selection depends on the identifiability analysis preceding the
% comparison: parameters that are not identifiable will fixed to the best
% estimate available for them.
% In our case, all parameters are identifiable.
param_including_vector = [true,true,true,true,true,true,true,true];


rng shuffle;
rngSeed = rng;
rngSeed = rngSeed.Seed;
results_folder = strcat('InduciblePromoter',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = strcat('IndProm');

% We start with no experiments
exps.n_exp=0;
global_theta_guess = global_theta_guess';

% Compile the model
inputs.model = model;
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

% Fixed parts of the experiment
duration = totalDuration/numLoops;   % Duration of each loop (in our case the number is 1)
stepDuration = duration/numSteps;% Duration of each step (minutes). Note that the value passed to the function exceeds the response time, quantified in 80 mins for MPLac,r

for i=1:numLoops
    %Compute the steady state considering the initial theta guess and 0 IPTG
    y0 = InduciblePromoter_steady_state(global_theta_guess,0);
    
    % Need to determine the starting state of the next part of the
    % experiment we wish to design the input for. If there are multiple loops,
    % We get this state by simulating the model using the current best theta
    % for the duration for which we have designed input.
    if exps.n_exp == 0
        oid_y0 = [y0 0];                        % Add the state variable required for the constraint
        best_global_theta = global_theta_guess;
    else
        % Simulate the experiment without noise to find end state
        clear inputs;
        inputs.model = model;
        inputs.model.par = best_global_theta;
        inputs.exps = exps;
        
        inputs.plotd.plotlevel='noplot';
        inputs.pathd.results_folder = results_folder;
        inputs.pathd.short_name     = short_name;
        inputs.pathd.runident       = strcat('sim-',int2str(i));
        
        sim = AMIGO_SData(inputs);
        
        oid_y0 = [sim.sim.states{1}(end,:) 0];
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Optimal experiment design
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;
    format long g
    
    % Add new experiment that is to be designed
    inputs.exps.n_exp = inputs.exps.n_exp + 1;                      % Number of experiments
    iexp = inputs.exps.n_exp;                                       % Index of the experiment
    inputs.exps.exp_type{iexp}='od';                                % Specify the type of experiment: 'od' optimally designed
    inputs.exps.n_obs{iexp}=1;                                      % Number of observables in the experiment
    inputs.exps.obs_names{iexp}=char('Fluorescence');               % Name of the observables in the experiment
    inputs.exps.obs{iexp}=char('Fluorescence = Cit_fluo');          % Observation function
    
    % Fixed parts of the experiment
    inputs.exps.exp_y0{iexp}=oid_y0;                                % Initial conditions
    inputs.exps.t_f{iexp}=duration;                                 % Duration of the experiment (minutes)
    inputs.exps.n_s{iexp}=duration/5+1;                             % Number of sampling times - sample every 5 min
    
    % OED of the input
    inputs.exps.u_type{iexp}='od';
    inputs.exps.u_interp{iexp}='stepf';                             % Stimuli definition for experiment: 'stepf' steps of constant duration
    inputs.exps.n_steps{iexp}=round(duration/stepDuration);         % Number of steps in the input
    inputs.exps.t_con{iexp}=0:stepDuration:(i*duration);            % Switching times
    inputs.exps.u_min{iexp}=0*ones(1,inputs.exps.n_steps{iexp});    % Lower boundary for the input value
    inputs.exps.u_max{iexp}=1000*ones(1,inputs.exps.n_steps{iexp}); % Upper boundary for the input value
    
    inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
    inputs.PEsol.global_theta_guess=transpose(global_theta_guess(param_including_vector));
    inputs.PEsol.global_theta_max=theta_max(param_including_vector);  % Maximum allowed values for the parameters
    inputs.PEsol.global_theta_min=theta_min(param_including_vector);  % Minimum allowed values for the parameters
    
    inputs.exps.noise_type='homo_var';           % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default)
    inputs.exps.std_dev{iexp}=[0.05];
    inputs.OEDsol.OEDcost_type='Dopt';
    
    % final time constraint
    for iexp=1:inputs.exps.n_exp
        inputs.exps.n_const_ineq_tf{iexp}=1;
        inputs.exps.const_ineq_tf{iexp}=char('cviol');     % c<=0
    end
    inputs.exps.ineq_const_max_viol=1.0e-5;
    
    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'cvodes'(default, C)|'ode15s' (default, MATLAB, sbml)|'ode113'|'ode45'
    inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes'(default, C)| 'sensmat'(matlab)|'fdsens2'|'fdsens5'
    inputs.ivpsol.rtol=1.0D-8;                            % [] IVP solver integration tolerances
    inputs.ivpsol.atol=1.0D-8;
    
    % OPTIMIZATION
    oidDuration=600;
    inputs.nlpsol.nlpsolver='eSS';
    inputs.nlpsol.eSS.maxeval = 5e4*5;
    inputs.nlpsol.eSS.maxtime = 6e3*5;
    inputs.nlpsol.eSS.local.solver = 'fminsearch'; % note that, in order to handle constraints, an SQP approach is required (e.g. fminsearch cannot be used). 
    inputs.nlpsol.eSS.local.finish = 'fmincon';%fmincon';
                                                       
    inputs.nlpsol.eSS.local.nl2sol.maxiter  =     300;     % max number of iteration
    inputs.nlpsol.eSS.local.nl2sol.maxfeval =     500;     % max number of function evaluation
    inputs.nlpsol.eSS.log_var=1:inputs.exps.n_steps{iexp};
    %inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('oed-',int2str(i));
    
    results = AMIGO_OED(inputs);

end