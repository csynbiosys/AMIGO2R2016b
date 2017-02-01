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


% Read in the experiments
load('Greedo-batch2-2.mat');
i = 10;

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
    inputs.nlpsol.eSS.maxtime = 60; 300;
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
    fclose(fid);

	best_global_theta_log{i}=best_global_theta;





