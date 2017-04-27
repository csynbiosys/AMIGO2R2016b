% Proprocesses the data from Fiore 2016 ACS so that it can be processed
% by Amigo2

files = dir('data/*.mat');
%files = dir('data/clcnd039.mat');

iexp = 1;

predata_duration = 600;     % minutes
calibration_duration = 175; % minutes
sampling_interval = 5;      % minutes

clear exps;

for file = files'
    load(strcat('data/',file.name));
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
    
    u= [2];
    t_con = [0 predata_duration+calibration_duration];
    
    t = predata_duration+calibration_duration;
    for i = 1:length(vton)
        if vton(i) == 0
            % No galactose for 5 minutes
            u     = [u 0];
            t_con = [t_con t+5*i];
        elseif vton(i) == 300
            % Galactose for 5 minutes
            u     = [u 2];
            t_con = [t_con t+5*i];
        else
            % Galactose for less than 5 mins
            u     = [u 2 0 ];
            t_con = [t_con t+5*(i-1)+5*vton(i)/300 t+5*i];
        end
    end
    
    % clean up u and t_con
    new_u = u(1);
    new_t_con = t_con(1);
    for i=2:length(u)
        if u(i) ~= u(i-1)
            new_u = [new_u u(i)];
            new_t_con = [new_t_con t_con(i)];
        end
    end
    new_t_con = [new_t_con t_con(length(t_con))];
    u = new_u;
    t_con = new_t_con;
        
    exps.n_steps{iexp} = length(u); 
    exps.u{iexp}       = u;           % input values
    exps.t_con{iexp}   = t_con;       % input value change points

    exps.data_type      = 'real';    
    exps.noise_type     = 'homo';
    exps.exp_data{iexp} = ypn';
    exps.std_dev{iexp}  = [0.045];

    % These should not matter if we give enough time to reach steady
    % state.
    exps.exp_y0{iexp} = [6 1 1];  
    
    exps.n_exp = iexp;
    iexp = iexp + 1;
end

% Now we need to run the parameter estimation...

results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD'

% Read the model into the model variable
gal1_load_model_v4;

%                                  r     h1   Km      d1gal   d1glu   d2    K1    Kb   Kf
best_global_theta = transpose([0.001,   1.6,  0.025,  0.0346, 0.0346, 0.006, 10, 0.006, 0.1]);

%                   r          h1  Km  d1gal  d1glu  d2     K1    Kb      Kf
global_theta_min = [0.0003     0.5  0  0.03   0.10  0.0020   0.1 0.0020  0.010];  % Minimum allowed values for the parameters
global_theta_max = [0.0050     5.0  2  0.060  0.35  0.5000   100  0.5000  0.500];  % Maximum allowed values for the paramters
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

% LOCAL UNKNOWNS (DIFFERENT VALUE FOR ALL EXPERIMENTS)
%inputs.PEsol.id_global_theta='none';
%for i = 1:exps.n_exp
%    inputs.PEsol.id_local_theta{i}=model.par_names(param_including_vector,:);
%    inputs.PEsol.local_theta_max{i}=global_theta_max(param_including_vector);  % Maximum allowed values for the paramters
%    inputs.PEsol.local_theta_min{i}=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters
%    inputs.PEsol.local_theta_guess{i}=transpose(best_global_theta(param_including_vector)); 
%end


% COST FUNCTION RELATED DATA
inputs.PEsol.PEcost_type='lsq';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost' 
inputs.PEsol.lsq_type='Q_I';
inputs.PEsol.llk_type='homo_var';                     % [] To be defined for llk function, 'homo' | 'homo_var' | 'hetero' 

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-8;
inputs.ivpsol.atol=1.0D-8;
    
% OPTIMIZATION
inputs.nlpsol.nlpsolver='eSS';
inputs.nlpsol.eSS.maxeval = 20000000;
inputs.nlpsol.eSS.maxtime = 300;
inputs.nlpsol.eSS.log_var = [ 1 3 4 5 6 7 8];
inputs.nlpsol.eSS.local.solver = 'fminsearch';  % nl2sol not yet installed on my mac
inputs.nlpsol.eSS.local.finish = 'fminsearch';  % nl2sol not yet installed on my mac
%inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
%inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
%inputs.rid.conf_ntrials=500;

results = AMIGO_PE(inputs);

% Run a simulation for each input


    