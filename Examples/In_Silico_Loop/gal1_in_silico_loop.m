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

% Loop for 3 times 20 hour experiments
numLoops = 3;
duration = 20*60;   % minutes
stepDuration = 30;  % minutes
numSteps = duration/stepDuration;
oidDuration = 16*60;  % seconds

for i=1:numLoops

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Update all the experiment initial conditions based on current theta
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    y0 = gal1_initial_conditions(best_global_theta);
    for iexp=1:exps.n_exp
        exps.exp_y0{iexp} = y0;
    end
    used_y0{i} = y0;
    
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
    inputs.exps.exp_y0{iexp}=y0;                             % Initial conditions
    inputs.exps.t_f{iexp}=duration;                               % Duration 6 hours
    inputs.exps.n_s{iexp}=duration/5+1;                           % Number of sampling times - sample every 5 min

    % OED of the input 
    inputs.exps.u_type{iexp}='od';
    inputs.exps.u_interp{iexp}='stepf';                       % Stimuli definition for experiment
    inputs.exps.n_steps{iexp}=numSteps;                             % Number of steps
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
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Mock an experiment
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear inputs;
    inputs.model = model;
    % The parameters in the model are the parameter values we are trying to
    % determine - keep the model as it is for the simulation
    
    inputs.exps.n_exp = 1;  % Just mocking one experiment
    
    inputs.exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
    inputs.exps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    inputs.exps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
    % Initial condition with 10% gaussian noise added
    y0_to_use = [ 2.0831    1.0415    1.0415];          % Initial conditions with 'correct' parameters
    % 2017-01-05 Removing this noise addition to y0 because it is causing problems - let's start with simplest baseline approach first 
    % y0_to_use = y0_to_use + y0_to_use*0.1.*normrnd(0,1,1,length(y0));
    inputs.exps.exp_y0{1}=y0_to_use;           
    
    inputs.exps.t_f{1}=results.oed.t_f{results.oed.n_exp};         % Experiment duration
    inputs.exps.n_s{1}=results.oed.n_s{results.oed.n_exp};         % Number of sampling times
    inputs.exps.t_s{1}=results.oed.t_s{results.oed.n_exp};         % times of samples
    
    inputs.exps.u_interp{1}='step';
    inputs.exps.n_steps{1}=numSteps; 
    inputs.exps.u{1}=results.oed.u{results.oed.n_exp};                       
    inputs.exps.t_con{1}=results.oed.t_con{results.oed.n_exp};     % input value change points
   
    % TODO - in a bit of a mess with the noise types that are inconsistent
    % over this loop
    inputs.exps.data_type='pseudo';
    inputs.exps.noise_type='hetero';
    inputs.exps.std_dev{1}=[0.1];
    
    inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('sim-',int2str(i));
    
    sim = AMIGO_SData(inputs);
    
    % Now we need to add this experiment to the experiments    
    exps.n_exp=exps.n_exp+1;
    iexp=exps.n_exp;
    exps.exp_type{iexp}='fixed';
    exps.n_obs{iexp}=1;                                        % Number of observed quantities per experiment                         
    exps.obs_names{iexp}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    exps.obs{iexp}=char('Fluorescence=gal1_fluo');             % Observation function
    exps.exp_y0{iexp}=y0;                                      % Initial conditions for experiment       
    exps.t_f{iexp}=results.oed.t_f{results.oed.n_exp};         % Experiments duration
    exps.n_s{iexp}=results.oed.n_s{results.oed.n_exp};         % Number of sampling times
    exps.t_s{iexp}=results.oed.t_s{results.oed.n_exp};         % Sampling times, by default equidistant                                                            
    exps.u_interp{iexp}='step';
    exps.n_steps{iexp}=numSteps; 
    exps.u{iexp}=results.oed.u{results.oed.n_exp};                       
    exps.t_con{iexp}=results.oed.t_con{results.oed.n_exp};     % input value change points

    exps.exp_data{iexp}=sim.sim.exp_data{1};
    exps.error_data{iexp}=sim.sim.error_data{1};

    % TODO - these noise types are a bit of a mess - only one type for all
    % experiments.  I probably need to be better about these.
    exps.data_type='real';                                     % Type of data: 'pseudo'|'pseudo_pos'|'real'             
    exps.noise_type='homo_var';                                % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default) 
    
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






