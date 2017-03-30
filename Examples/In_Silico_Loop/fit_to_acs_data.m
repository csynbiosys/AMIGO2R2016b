% Proprocesses the data from Fiore 2016 ACS so that it can be processed
% by Amigo2

files = dir('data/*.mat');
iexp = 1;

predata_duration = 600;     % minutes
calibration_duration = 175; % minutes
sampling_interval = 5;      % minutes

clear exps;

for file = files'
    load(file.name);
    file.name
    % Seems to have too much input data so take as much as we need
    % according to how much output we have
    input_duration = (size(ypn,2)-1) * sampling_interval - calibration_duration;
    total_duration = predata_duration + calibration_duration + input_duration;
    data_duration  = calibration_duration + input_duration;
    
    exps.exp_type{iexp}='fixed';
    exps.n_obs{iexp}=1;                                        % Number of observed quantities per experiment                         
    exps.obs_names{iexp}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    exps.obs{iexp}=char('Fluorescence=gal1_fluo');             % Observation function
    exps.t_f{iexp}=total_duration;                             % Experiments duration
    exps.n_s{iexp}=data_duration/sampling_interval+1;          % Number of sampling times
    exps.t_s{iexp}=predata_duration:sampling_interval:total_duration;  % Sampling times, by default equidistant                                                            
    exps.u_interp{iexp}='step';
    exps.n_steps{iexp}=input_duration+1; 
    exps.u{iexp}=[2 2*ingresso];            
    exps.t_con{iexp}=[0 (predata_duration+calibration_duration):total_duration];                               % input value change points

    exps.data_type      = 'real';    
    exps.noise_type     = 'homo';
    exps.exp_data{iexp} = ypn';
    exps.std_dev{iexp}  = [0.045];

    % These should not matter if we give enough time to reach steady
    % state.
    exps.exp_y0{iexp} = [1 1 1];  
    
    exps.n_exp = iexp;
    iexp = iexp + 1;
end

% Now we need to run the parameter estimation...

results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD'

% Read the model into the model variable
gal1_load_model;

% Initial guess for theta - the global unknows of model
best_global_theta = transpose([0.002,0.1,2.0,1.5,0.02,1,1,1,1]);
global_theta_max = [0.0176  0.8   4 2   0.1   10   10   10   10  ];  % Maximum allowed values for the paramters
global_theta_min = [0.00017 0.008 0  0.01 0.001  0.1  0.1  0.1  0.1];  % Minimum allowed values for the parameters
param_including_vector = [true,true,true,true,true,true,true,true,true];

% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);


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

results = AMIGO_PE(inputs);

    