function [out]=fit_to_InduciblePromoter_OptimisedeSS(epccOutputResultFileNameBase,epccNumLoops,stepd,epcc_exps,global_theta_guess)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In silico experiment OID script - runs PE, OED, mock experiment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
resultFileName = [strcat(epccOutputResultFileNameBase),'.dat'];
rng shuffle;
rngToGetSeed = rng;

% Write the header information of the .dat file in which the results of
% PE (estimates, relative confidence intervals, residuals, relative
% residuals and the time required for computation) will be stored.
fid = fopen(resultFileName,'w');
fprintf(fid,'HEADER DATE %s\n', datestr(datetime()));
fprintf(fid,'HEADER RANDSEED %d\n',rngToGetSeed.Seed);
fclose(fid);

startTime = datenum(now);

clear model;
clear exps;
clear best_global_theta_log;
clear pe_results;
clear ode_results;

results_folder = strcat('InduciblePromoter',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = strcat('IndProm',int2str(epcc_exps));

% Read the model into the model variable
InduciblePromoter_load_model_optimised;

% We start with no experiments
exps.n_exp=0;


% Defining boundaries for the parameters (taken from scientific literature)
global_theta_max = [0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217];       % Maximum allowed values for the parameters
global_theta_min = [3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012];    % Minimum allowed values for the parameters
%giving the theta guess here...
global_theta_guess = [0.0164186333380725 0.291556643109224 1.71763487775568 5.14394334860864 0.229999999999978 6.63776658557266 0.00575139649497780 0.0216999999961899];

global_theta_guess = global_theta_guess';

% Specify the parameters to be calibrated.
% The selection depends on the identifiability analysis preceding the
% comparison: parameters that are not identifiable will fixed to the best
% estimate available for them.
% In our case, all parameters are identifiable.
param_including_vector = [true,true,true,true,true,true,true,true];

% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

% Fixed parts of the experiment
totalDuration = 50*60;               % Duration in of the experiment (minutes)
numLoops = epccNumLoops;             % Number of OID loops
duration = totalDuration/numLoops;   % Duration of each loop (in our case the number is 1)
stepDuration = stepd;                % Duration of each step (minutes). Note that the value passed to the function exceeds the response time, quantified in 80 mins for MPLac,r

% strucure containing the default setting of the sub-experiment to opitmise
%Compute the steady state considering the initial theta guess and 0 IPTG
inputsOED.model = model;

% Add new experiment that is to be designed
inputsOED.exps.n_exp = 1;                      % Number of experiments                                     % Index of the experiment
inputsOED.exps.exp_type{1}='od';                                % Specify the type of experiment: 'od' optimally designed
inputsOED.exps.n_obs{1}=1;                                      % Number of observables in the experiment
inputsOED.exps.obs_names{1}=char('Fluorescence');               % Name of the observables in the experiment
inputsOED.exps.obs{1}=char('Fluorescence = Cit_fluo');          % Observation function

y0=InduciblePromoter_steady_state(global_theta_guess,0);
% Fixed parts of the experiment
inputsOED.exps.exp_y0{1}=[y0,0];                                % Initial conditions
inputsOED.exps.t_f{1}=duration;                                 % Duration of the experiment (minutes)
inputsOED.exps.n_s{1}=duration/5+1;                             % Number of sampling times - sample every 5 min

% OED of the input
inputsOED.exps.u_type{1}='od';
inputsOED.exps.u_interp{1}='stepf';                             % Stimuli definition for experiment: 'stepf' steps of constant duration
inputsOED.exps.n_steps{1}=round(duration/stepDuration);         % Number of steps in the input
inputsOED.exps.t_con{1}=0:stepDuration:(duration);            % Switching times
inputsOED.exps.u_min{1}=0*ones(1,inputsOED.exps.n_steps{1});    % Lower boundary for the input value
inputsOED.exps.u_max{1}=1000*ones(1,inputsOED.exps.n_steps{1}); % Upper boundary for the input value

inputsOED.PEsol.id_global_theta=model.par_names(param_including_vector,:);
inputsOED.PEsol.global_theta_guess=transpose(global_theta_guess(param_including_vector));
inputsOED.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the parameters
inputsOED.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters


inputsOED.exps.noise_type='homo_var';           % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default)
inputsOED.exps.std_dev{1}=[0.05];
inputsOED.OEDsol.OEDcost_type='Dopt';


% final time constraint
inputsOED.exps.n_const_ineq_tf{1}=1;
inputsOED.exps.const_ineq_tf{1}=char('cviol');     % c<=0
inputsOED.exps.ineq_const_max_viol=1.0e-5;


% SIMULATION
inputsOED.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'cvodes'(default, C)|'ode15s' (default, MATLAB, sbml)|'ode113'|'ode45'
inputsOED.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes'(default, C)| 'sensmat'(matlab)|'fdsens2'|'fdsens5'
inputsOED.ivpsol.rtol=1.0D-8;                            % [] IVP solver integration tolerances
inputsOED.ivpsol.atol=1.0D-8;

% OPTIMIZATION
%oidDuration=600;
inputsOED.nlpsol.nlpsolver='eSS';
inputsOED.nlpsol.eSS.maxeval = 2;%5e4;
inputsOED.nlpsol.eSS.maxtime = 6e3;
inputsOED.nlpsol.eSS.local.solver = 'fmincon'; % note that, in order to handle constraints, an SQP approach is required (e.g. fminsearch cannot be used).
inputsOED.nlpsol.eSS.local.finish = 'fmincon';%fmincon';

inputsOED.nlpsol.eSS.local.nl2sol.maxiter  =     300;     % max number of iteration
inputsOED.nlpsol.eSS.local.nl2sol.maxfeval =     500;     % max number of function evaluation
inputsOED.nlpsol.eSS.log_var=1:inputsOED.exps.n_steps{1};
inputsOED.plotd.plotlevel='noplot';

inputsOED.pathd.results_folder = results_folder;
inputsOED.pathd.short_name     = short_name;
inputsOED.pathd.runident       = strcat('oed-1');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:numLoops
    % Need to determine the starting state of the next part of the
    % experiment we wish to design the input for. If there are multiple loops,
    % We get this state by importing the last state in the previous experiment
   
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Optimal experiment design
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if exps.n_exp == 0
        inputs=inputsOED;
    else
        inputs.exps = exps;
        inputs=appendOED(inputs,inputsOED);
        %inputs=inputsOED;
        inputs.model.par = best_global_theta;
        inputs.exps.exp_y0{end+1}=results.sim.states{1}(end,:);
        inputs.plotd.plotlevel='noplot';
        inputs.pathd.results_folder = results_folder;
        inputs.pathd.short_name     = short_name;
        inputs.pathd.runident       = strcat('OED-',int2str(i));      
    end  
    oed_start = now;
    results = AMIGO_OED(inputs);
    oed_results{i} = results;
    oed_end = now;
    
    results.plotd.plotlevel = 'noplot';
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Create a new experiment to simulate with the merged input
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear newExps;
    newExps.n_exp = 1;
    newExps.n_obs{1}=1;
    newExps.obs_names{1}=char('Fluorescence');
    newExps.obs{1}= char('Fluorescence = Cit_fluo');
    newExps.exp_y0{1}= [y0 0];
    
    newExps.t_f{1}=i*duration;
    newExps.n_s{1}=(i*duration)/5 + 1;
    newExps.t_s{1}=0:5:(i*duration);
    
    newExps.u_interp{1}='step';
    newExps.n_steps{1}=(i*duration)/stepDuration;
    newExps.t_con{1}=0:stepDuration:(i*duration);
    
    % Merge the input signal
    
    if exps.n_exp == 0
        newExps.u{1}=results.oed.u{results.oed.n_exp};
    else
        newExps.u{1}=[exps.u{1} results.oed.u{results.oed.n_exp}];
    end
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Mock an experiment
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear inputs;
    inputs.model = model;
    inputs.exps = newExps;
    
    inputs.exps.data_type='pseudo';
    inputs.exps.noise_type='homo_var';
    inputs.exps.std_dev{1}=[0.05];
    
    inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder = results_folder;
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('sim-',int2str(epcc_exps),'-',int2str(i));
    
    sim = AMIGO_SData(inputs);
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Now we need to add this experiment output to newExps and copy
    % to exps
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    newExps.exp_type{1}='fixed';
    if exps.n_exp == 0
        newExps.exp_data{1}   = sim.sim.exp_data{1};
        newExps.error_data{1} = sim.sim.error_data{1};
    else
        newExps.exp_data{1}   = [ exps.exp_data{1}   ; sim.sim.exp_data{1}((size(exps.exp_data{1},1)+1):end)];
        newExps.error_data{1} = [ exps.error_data{1} ; sim.sim.error_data{1}((size(exps.exp_data{1},1)+1):end)];
    end
    
    newExps.data_type='real';                                     % Type of data: 'pseudo'|'pseudo_pos'|'real'
    newExps.noise_type='homo_var';                                % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default)
    
    exps = newExps;
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Parameter estimation
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;
    
    inputs.pathd.results_folder = results_folder;
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-',int2str(epcc_exps),'-',int2str(i));
    
    % GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)
    inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
    inputs.PEsol.global_theta_guess=transpose(global_theta_guess(param_including_vector));
    inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the paramters
    inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters
    
    % COST FUNCTION RELATED DATA
    inputs.PEsol.PEcost_type='lsq';        % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
    inputs.PEsol.lsq_type='Q_expmax';
    
    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';
    inputs.ivpsol.senssolver='cvodes';
    inputs.ivpsol.rtol=1.0D-7;
    inputs.ivpsol.atol=1.0D-7;
    
    
    % OPTIMIZATION
    inputs.nlpsol.nlpsolver='eSS';
    inputs.nlpsol.eSS.maxeval = 2;%200000;
    inputs.nlpsol.eSS.maxtime = 5000;
    inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
    inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
    inputs.rid.conf_ntrials=500;
    
    inputs.plotd.plotlevel='noplot';
    
    pe_start = now;
    results = AMIGO_PE(inputs);
    pe_inputs{i} = inputs;
    pe_results{i} = results;
    pe_end= now;
    
    results.plotd.plotlevel = 'noplot';
    
    %Save the best theta
    best_global_theta(param_including_vector)=results.fit.thetabest;
    
    %Write some results to the output file
    fid = fopen(resultFileName,'a');
    used_par_names = model.par_names(param_including_vector,:);
    
    for j=1:size(used_par_names,1)
        fprintf(fid,'ITERATION %d PARAM_FIT %s %f\n', i, used_par_names(j,:), results.fit.thetabest(j));
        if isfield(results.fit,'rel_conf_interval')
            fprintf(fid,'ITERATION %d REL_CONF %s %f\n',  i, used_par_names(j,:), results.fit.rel_conf_interval(j));
        end
        if isfield(results.fit,'residuals')
            fprintf(fid,'ITERATION %d RESIDUAL %s %f\n', i, used_par_names(j,:), results.fit.residuals{1}(j));
        end
        if isfield(results.fit,'rel_residuals')
            fprintf(fid,'ITERATION %d REL_RESIDUAL %s %f\n', i, used_par_names(j,:), results.fit.rel_residuals{1}(j));
        end
    end
    %Time in seconds
    fprintf(fid,'ITERATION %d OED_TIME %.1f\n', i, (oed_end-oed_start)*24*60*60);
    fprintf(fid,'ITERATION %d PE_TIME %.1f\n',  i, (pe_end-pe_start)*24*60*60);
    fclose(fid);
    
    best_global_theta_log{i}=best_global_theta;
    
end

true_param_values = model.par(param_including_vector);
save([strcat(epccOutputResultFileNameBase),'.mat'], 'pe_inputs','pe_results','oed_results','exps','inputs','true_param_values','best_global_theta_log');

out= 1;
end

function inputs =appendOED(inputs,inputsOED)

% Add new experiment that is to be designed
inputs.exps.n_exp = inputs.exps.n_exp+1;
inputs.exps.exp_type=[inputs.exps.exp_type,inputsOED.exps.exp_type];
inputs.exps.n_obs=[inputs.exps.n_obs,inputsOED.exps.n_obs];
inputs.exps.obs_names=[inputs.exps.obs_names,inputsOED.exps.obs_names];
inputs.exps.obs=[inputs.exps.obs,inputsOED.exps.obs];


% Fixed parts of the experiment
inputs.exps.t_f=[inputs.exps.t_f,inputsOED.exps.t_f];
inputs.exps.n_s=[inputs.exps.n_s,inputsOED.exps.n_s];

% OED of the input
inputs.exps.u_type=repmat(inputsOED.exps.u_type,inputs.exps.n_exp,1);
inputs.exps.u_interp=[inputs.exps.u_interp,inputsOED.exps.u_interp];
inputs.exps.n_steps=[inputs.exps.n_steps,inputsOED.exps.n_steps];
inputs.exps.t_con=[inputs.exps.t_con,inputsOED.exps.t_con];
inputs.exps.u_min=repmat(inputsOED.exps.u_min,inputs.exps.n_exp,1);
inputs.exps.u_max=repmat(inputsOED.exps.u_max,inputs.exps.n_exp,1);

inputs.PEsol.id_global_theta=inputsOED.PEsol.id_global_theta;
inputs.PEsol.global_theta_guess=inputsOED.PEsol.global_theta_guess;
inputs.PEsol.global_theta_max=inputsOED.PEsol.global_theta_max;
inputs.PEsol.global_theta_min=inputsOED.PEsol.global_theta_min;

inputs.exps.noise_type=inputsOED.exps.noise_type;
inputs.exps.std_dev=repmat(inputsOED.exps.std_dev,inputs.exps.n_exp);;
inputs.OEDsol.OEDcost_type=inputsOED.OEDsol.OEDcost_type;

inputs.exps.n_const_ineq_tf=inputsOED.exps.n_const_ineq_tf;
inputs.exps.const_ineq_tf=inputsOED.exps.const_ineq_tf;
inputs.exps.ineq_const_max_viol=inputsOED.exps.ineq_const_max_viol;


% SIMULATION
inputs.ivpsol=inputsOED.ivpsol;

% OPTIMIZATION
%oidDuration=600;
inputs.nlpsol=inputsOED.nlpsol;

inputs.pathd.results_folder = inputsOED.pathd.results_folder;
inputs.pathd.short_name     = inputsOED.pathd.results_folder;
end