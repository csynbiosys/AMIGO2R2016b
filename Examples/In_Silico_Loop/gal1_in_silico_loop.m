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
global_theta_guess(3) = logRand(0.1,5,1);
global_theta_guess = global_theta_guess .* model.par;
global_theta_guess = global_theta_guess';

% Max is one order of magnitude above truth and one order of magnitude
% below truth
global_theta_max = model.par*10.0;   % Maximum allowed values for the paramters
global_theta_min = model.par*0.1;    % Minimum allowed values for the parameters
% Don't want h1 too high
global_theta_max(3) = 5;

% Focusing on the 5 parameters for transcription
param_including_vector = [true,true,true,true,true,false,false,false,false];

% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

% Calculate the initial state based on current best estimate of theta.
% The initial state is the steady state when gal is 0
y0 = gal1_steady_state(global_theta_guess, 0);
       
% Fixed parts of the experiment
duration = 60*60;     % Duration in minutes
numSteps = 61;        % needs to be an odd number

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
newExps.n_steps{1}=numSteps; 
inp = linspace(0,2,numSteps/2+1);
newExps.u{1}=[ inp fliplr(inp(1:end-1)) ];  % Goes from 0 to 2 and back to 0               
newExps.t_con{1}=linspace(0,duration,numSteps+1);  

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
    inputs.exps.t_s{1}          = 0:5:duration;            % Times of samples
    
    inputs.exps.n_steps{1}      = sum(exps.t_con{1} < duration);
    inputs.exps.t_con{1}        = exps.t_con{1}(1:inputs.exps.n_steps{1}+1);
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
    inputs.rid.conf_ntrials=500;

    inputs.plotd.plotlevel='noplot';

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
save([epccOutputResultFileNameBase,'.mat'], 'pe_results','exps','inputs','true_param_values');

