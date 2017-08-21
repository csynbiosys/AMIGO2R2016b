%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In silico experiment loop script - runs PE, OED, mock experiment loops
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global epccOutputResultFileNameBase;
resultFileName = [epccOutputResultFileNameBase,'.dat'];

rng shuffle;
rngToGetSeed = rng;

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
global_theta_guess = [logRand(0.1,10,5) 1 1 1 1];
global_theta_guess = global_theta_guess .* model.par;
global_theta_guess(3) = logRand(0.1,5,1);
global_theta_guess = global_theta_guess';

% Max is one order of magnitude above truth and one order of magnitude
% below truth
global_theta_max = model.par*10.0;   % Maximum allowed values for the paramters
global_theta_min = model.par*0.1;    % Minimum allowed values for the parameters
% Don't want h1 too high
global_theta_max(3) = 5;

% Focusing on the 5 parameters for transcription
param_including_vector = [true,true,true,true,true,false,false,false,false];
log_transform_indicies = [1,2,4,5];

% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);


% Run OID to choose the best input

% Calculate the initial state based on current best estimate of theta.
% The initial state is the steady state when gal is 0
y0 = gal1_steady_state(global_theta_guess, 2);

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
duration = 60*60;                                    % Duration in minutes
stepDuration = 60;                                   % Step duration in minutes

inputs.exps.exp_y0{iexp}=y0;                         % Initial conditions
inputs.exps.t_f{iexp}=duration;                      % Duration
inputs.exps.n_s{iexp}=duration/5+1;                  % Number of sampling times - sample every 5 min

% OED of the input 
inputs.exps.u_type{iexp}='od';
inputs.exps.u_interp{iexp}='stepf';                             % Stimuli definition for experiment
inputs.exps.n_steps{iexp}=duration/stepDuration;                % Number of steps
inputs.exps.u_min{iexp}=0*ones(1,inputs.exps.n_steps{iexp});    % Minimum value for the input
inputs.exps.u_max{iexp}=2*ones(1,inputs.exps.n_steps{iexp});    % Maximum value for the input

inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
inputs.PEsol.global_theta_guess=transpose(global_theta_guess(param_including_vector));
      
inputs.exps.noise_type='homo_var';           % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default) 
inputs.exps.std_dev{iexp}=[0.1];     
inputs.OEDsol.OEDcost_type='Eopt';
    
% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'cvodes'(default, C)|'ode15s' (default, MATLAB, sbml)|'ode113'|'ode45'
inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes'(default, C)| 'sensmat'(matlab)|'fdsens2'|'fdsens5' 
inputs.ivpsol.rtol=1.0D-7;                            % [] IVP solver integration tolerances
inputs.ivpsol.atol=1.0D-7; 

% OPTIMIZATION
oidDuration = 300;  % seconds
inputs.nlpsol.nlpsolver='eSS';
inputs.nlpsol.eSS.maxeval = 666*oidDuration;
inputs.nlpsol.eSS.maxtime = oidDuration;
inputs.nlpsol.eSS.local.solver = 'fmincon';
inputs.nlpsol.eSS.local.finish = 'fmincon';
inputs.nlpsol.eSS.log_var = log_transform_indicies;
                                                       
inputs.nlpsol.eSS.local.nl2sol.maxiter  =     300;     % max number of iteration
inputs.nlpsol.eSS.local.nl2sol.maxfeval =     400;     % max number of function evaluation

inputs.plotd.plotlevel='noplot';
    
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = strcat('oed-',int2str(i));
    
oed_start = now;
results = AMIGO_OED(inputs);
oed_results{1} = results;
oed_end = now;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create a new experiment to simulate with the OID input
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear newExps;
newExps.n_exp = 1;
newExps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
newExps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
newExps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
newExps.exp_y0{1}=y0;    
    
newExps.t_f{1}=duration;                % Experiment duration
newExps.n_s{1}=duration/5 + 1;          % Number of sampling times
newExps.t_s{1}=0:5:duration ;           % Times of samples
    
newExps.u_interp{1}='step';
newExps.n_steps{1}=duration/stepDuration; 
newExps.t_con{1}=0:stepDuration:duration;
newExps.u{1}=results.oed.u{1};

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mock an experiment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
clear inputs;
inputs.model = model;
% The parameters in the model are the parameter values we are trying to
% determine - keep the model as it is for the simulation
    
inputs.exps = newExps;
    
inputs.exps.data_type='pseudo';
inputs.exps.noise_type='homo_var';
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
newExps.exp_data{1}   = sim.sim.exp_data{1};
newExps.error_data{1} = sim.sim.error_data{1};
    
% TODO - these noise types are a bit of a mess - only one type for all
% experiments.  I probably need to be better about these.
newExps.data_type='real';                                     % Type of data: 'pseudo'|'pseudo_pos'|'real'             
newExps.noise_type='homo_var';                                % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default) 
    
exps = newExps;
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameter estimation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i=1:10

    duration = i*6*60;  % Duration in minutes
    
    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;
    
    % Reduce the input to a smaller set of values
    inputs.exps.t_f{1}          = duration;                % Experiment duration
    inputs.exps.n_s{1}          = duration/5 + 1;          % Number of sampling times
    inputs.exps.t_s{1}          = 0:5:duration ;           % Times of samples
    inputs.exps.n_steps{1}      = duration/stepDuration; 
    inputs.exps.t_con{1}        = 0:stepDuration:duration;
    inputs.exps.u{1}            = exps.u{1}(1:inputs.exps.n_steps{1});
    inputs.exps.exp_data{1}     = exps.exp_data{1}(1:inputs.exps.n_s{1});
    inputs.exps.error_data{1}   = exps.error_data{1}(1:inputs.exps.n_s{1});

    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-',int2str(i));

    % GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)
    inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
    inputs.PEsol.global_theta_guess=transpose(global_theta_guess(param_including_vector)); 
    inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the paramters
    inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters

    % COST FUNCTION RELATED DATA
    inputs.PEsol.PEcost_type='lsq';        % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost' 
    inputs.PEsol.lsq_type='Q_I';

    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';
    inputs.ivpsol.senssolver='cvodes';
    inputs.ivpsol.rtol=1.0D-7;
    inputs.ivpsol.atol=1.0D-7;


    % OPTIMIZATION
    inputs.nlpsol.nlpsolver='eSS';
    inputs.nlpsol.eSS.maxeval = 200000;
    inputs.nlpsol.eSS.maxtime = 300;
    inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
    inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
    inputs.nlpsol.eSS.log_var = log_transform_indicies;
    inputs.rid.conf_ntrials=500;

    inputs.plotd.plotlevel='noplot';

    save('inputs.mat', 'inputs');

    pe_start = now;
    results = AMIGO_PE(inputs);
    pe_inputs{i} = inputs;
    pe_results{i} = results;
    pe_end= now;

    % Write some results to the output file
    fid = fopen(resultFileName,'a');
    used_par_names = model.par_names(param_including_vector,:);


    for j=1:size(used_par_names,1)
        fprintf(fid,'HOUR %d PARAM_FIT %s %f\n', i*6, used_par_names(j,:), results.fit.thetabest(j));
        fprintf(fid,'HOUR %d REL_CONF %s %f\n',  i*6, used_par_names(j,:), results.fit.rel_conf_interval(j));
        fprintf(fid,'HOUR %d RESIDUAL %s %f\n', i*6, used_par_names(j,:), results.fit.residuals{1}(j));
        fprintf(fid,'HOUR %d REL_RESIDUAL %s %f\n', i*6, used_par_names(j,:), results.fit.rel_residuals{1}(j));
    end
    % Time in seconds
    fprintf(fid,'HOUR %d PE_TIME %.1f\n',  i*6, (pe_end-pe_start)*24*60*60);
    fclose(fid);

    best_global_theta_log{i}=results.fit.thetabest;

end

true_param_values = model.par(param_including_vector);
save([epccOutputResultFileNameBase,'.mat'], 'pe_results','oed_results','exps','inputs','true_param_values');
