%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In silico experiment loop script - runs PE, OED, mock experiment loops
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global epccOutputResultFileNameBase;
resultFileName = [epccOutputResultFileNameBase,'.dat'];

rng shuffle
rngToGetSeed = rng

% Write the header information
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

results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD'

% Read the model into the model variable
gal1_load_model;

% We start with no experiments
exps.n_exp=0;

% Initial guess for theta - the global unknows of model
best_global_theta = transpose([0.002,0.1,2.0,3.1,0.02,1,1,1,1]);
global_theta_max = [0.0176  0.8   4 33.6   0.1   10   10   10   10  ];  % Maximum allowed values for the paramters
global_theta_min = [0.00017 0.008 0  0.336 0.001  0.1  0.1  0.1  0.1];  % Minimum allowed values for the parameters
param_including_vector = [true,true,true,true,true,false,false,false,false];

% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

% Loop for 5 times 12 hour experiments
numLoops = 5;
duration = 12*60;   % minutes
stepDuration = 90;  % minutes
oidDuration = 300;  % seconds

for i=1:numLoops

    % Calculate the initial state based on current best estimate of theta.
    % The initial state is the steady state when gal is 0
    y0 = gal1_steady_state(best_global_theta, 0);

    % Need to determine the starting state of the next part of the
    % experiment we wish to design the input for. We get this state by
    % simulating the model using the current best theta for the duration
    % for which we have designed input.
    if exps.n_exp == 0
        oid_y0 = y0;
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

        oid_y0 = sim.sim.states{1}(end,:);
        
    end
        
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Optimal experiment design
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;
    
    % Add new experiment that is to be designed
    inputs.exps.n_exp = inputs.exps.n_exp + 1; 
    iexp = inputs.exps.n_exp;
    inputs.exps.exp_type{iexp}='od';     
    inputs.exps.n_obs{iexp}=1;                               % Number of observed quantities per experiment                         
    inputs.exps.obs_names{iexp}=char('Fluorescence');        % Name of the observed quantities per experiment    
    inputs.exps.obs{iexp}=char('Fluorescence=gal1_fluo');    % Observation function
       
    % Fixed parts of the experiment
    inputs.exps.exp_y0{iexp}=oid_y0;                         % Initial conditions
    inputs.exps.t_f{iexp}=duration;                          % Duration
    inputs.exps.n_s{iexp}=duration/5+1;                      % Number of sampling times - sample every 5 min

    % OED of the input 
    inputs.exps.u_type{iexp}='od';
    inputs.exps.u_interp{iexp}='stepf';                             % Stimuli definition for experiment
    inputs.exps.n_steps{iexp}=duration/stepDuration;                % Number of steps
    inputs.exps.u_min{iexp}=0*ones(1,inputs.exps.n_steps{iexp});
    inputs.exps.u_max{iexp}=2*ones(1,inputs.exps.n_steps{iexp});% Minimum and maximum value for the input

    inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
    inputs.PEsol.global_theta_guess=transpose(best_global_theta(param_including_vector));
      
    inputs.exps.noise_type='hetero';           % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default) 
    inputs.exps.std_dev{iexp}=[0.1];     
    inputs.OEDsol.OEDcost_type='Eopt';
    
    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'cvodes'(default, C)|'ode15s' (default, MATLAB, sbml)|'ode113'|'ode45'
    inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes'(default, C)| 'sensmat'(matlab)|'fdsens2'|'fdsens5' 
    inputs.ivpsol.rtol=1.0D-7;                            % [] IVP solver integration tolerances
    inputs.ivpsol.atol=1.0D-7; 

    % OPTIMIZATION
    inputs.nlpsol.nlpsolver='eSS';
    inputs.nlpsol.eSS.maxeval = 666*oidDuration;
    inputs.nlpsol.eSS.maxtime = oidDuration;
    inputs.nlpsol.eSS.local.solver = 'fmincon';
    inputs.nlpsol.eSS.local.finish = 'fmincon';
                                                       
    inputs.nlpsol.eSS.local.nl2sol.maxiter  =     300;     % max number of iteration
    inputs.nlpsol.eSS.local.nl2sol.maxfeval =     400;     % max number of function evaluation

    inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('oed-',int2str(i));
    
    oed_start = now;
    results = AMIGO_OED(inputs);
    oed_results{i} = results;
    oed_end = now;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Create a new experiment to simulate with the merged input
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    newExps.n_exp = 1;
    newExps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
    newExps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    newExps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
    newExps.exp_y0{1}=y0;    
    
    newExps.t_f{1}=i*duration;                % Experiment duration
    newExps.n_s{1}=(i*duration)/5 + 1;        % Number of sampling times
    newExps.t_s{1}=0:5:(i*duration);          % Times of samples
    
    newExps.u_interp{1}='step';
    newExps.n_steps{1}=(i*duration)/stepDuration; 
    newExps.t_con{1}=0:stepDuration:(i*duration);
    
    % Megre the input signal
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
    % The parameters in the model are the parameter values we are trying to
    % determine - keep the model as it is for the simulation
    
    inputs.exps = newExps;
    if exps.n_exp > 0
        inputs.exps = rmfield(inputs.exps,'exp_type');
        inputs.exps = rmfield(inputs.exps,'exp_data');
        inputs.exps = rmfield(inputs.exps,'error_data');
    end
    
    inputs.exps.data_type='pseudo';
    inputs.exps.noise_type='hetero';
    inputs.exps.std_dev{1}=[0.1];
    
    inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('sim-',int2str(i));
    
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
    

    % TODO - these noise types are a bit of a mess - only one type for all
    % experiments.  I probably need to be better about these.
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
    inputs.pathd.runident       = strcat('pe-',int2str(i));

    % GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)
    inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
    inputs.PEsol.global_theta_guess=transpose(best_global_theta(param_including_vector)); 
    inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the paramters
    inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters

    % COST FUNCTION RELATED DATA
    inputs.PEsol.PEcost_type='llk';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost' 
    inputs.PEsol.lsq_type='Q_I';
    inputs.PEsol.llk_type='homo_var';                     % [] To be defined for llk function, 'homo' | 'homo_var' | 'hetero' 

    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';
    inputs.ivpsol.senssolver='cvodes';
    inputs.ivpsol.rtol=1.0D-8;
    inputs.ivpsol.atol=1.0D-8;
    

    % OPTIMIZATION
    inputs.nlpsol.nlpsolver='eSS';
    inputs.nlpsol.eSS.maxeval = 200000;
    inputs.nlpsol.eSS.maxtime = 300;
    inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
    inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
    inputs.rid.conf_ntrials=500;

    inputs.plotd.plotlevel='noplot';

    pe_start = now;
    results = AMIGO_PE(inputs);
    pe_inputs{i} = inputs;
    pe_results{i} = results;
    pe_end= now;

    % Save the best theta
    best_global_theta(param_including_vector)=results.fit.thetabest;  

    % Write some results to the output file
    fid = fopen(resultFileName,'a');
    used_par_names = model.par_names(param_including_vector,:);

    for j=1:size(used_par_names,1)
        fprintf(fid,'ITERATION %d PARAM_FIT %s %f\n', i, used_par_names(j,:), results.fit.thetabest(j));
        fprintf(fid,'ITERATION %d REL_CONF %s %f\n',  i, used_par_names(j,:), results.fit.rel_conf_interval(j));
        fprintf(fid,'ITERATION %d RESIDUAL %s %f\n', i, used_par_names(j,:), results.fit.residuals{1}(j));
        fprintf(fid,'ITERATION %d REL_RESIDUAL %s %f\n', i, used_par_names(j,:), results.fit.rel_residuals{1}(j));
    end
    % Time in seconds
    fprintf(fid,'ITERATION %d OED_TIME %.1f\n', i, (oed_end-oed_start)*24*60*60);
    fprintf(fid,'ITERATION %d PE_TIME %.1f\n',  i, (pe_end-pe_start)*24*60*60);
    fclose(fid);

	best_global_theta_log{i}=best_global_theta;

end

true_param_values = model.par(param_including_vector);
save([epccOutputResultFileNameBase,'.mat'], 'pe_results','oed_results','exps','inputs','true_param_values');






