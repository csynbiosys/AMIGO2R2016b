% Proprocesses the data from Fiore 2016 ACS so that it can be processed
% by Amigo2
wd = cd; 
cd('dataSingleCellStructure'); 
load('Data_Menolascina_yeast_161007.mat')
cd(wd)

iexp = 1;
sampling_interval = 5;      % minutes

clear exps;

% Specify folder for PE

results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD';

% Read the model into the model variable
gal1_load_model_v2;

% Initial guesses for theta - the global unknonws for the model - imposing
% constraint on the maximum (0.9-1) and minimum fluorescence (0.045)
r_max = gal1_steady_state(model.par,2);

%                   r      h1   Km    d1       alpha2  d2    Kf    Kb
global_theta_min = [7e-8, 0.5, 0.01, 0.0077,  0.3,  0.0023,0.01,  0.0023];  % Minimum allowed values for the parameters
global_theta_max = [7e-5, 4.0, 0.5,    0.14,    1.3,  0.0092,  0.2,  0.0092];  % Maximum allowed values for the paramters

y0 = r_max+0.01;
while y0(1,3)<0.9 || y0(1,3)>1
    global_theta_guess = [logRand(7e-8,7e-5) logRand(0.5,4) logRand(0.01,0.5),logRand(0.0077,0.14),logRand(0.3,1.3),logRand(0.0023,0.0092),logRand(0.01,0.2),logRand(0.0023,0.0092)]; % it is better to extract a random number in the feasibility range for each parameter
    global_theta_guess = global_theta_guess';
    y0 = gal1_steady_state(global_theta_guess,2);
end

ExcludeExperiments = {'Menolascina_extracted_160714','dataND053','dataND055','dataND057'};

for countexp =2% 1:size(S.Data,2)
    Name = S.Data(countexp).experimentName;
    if any(strcmp(Name,ExcludeExperiments))
        continue
    end
    input_duration = S.Data(countexp).time_input(end);
    total_duration = input_duration;
    data_duration  = input_duration;
    
    exps.exp_type{iexp}='fixed';
    exps.n_obs{iexp}=1;                                        % Number of observed quantities per experiment                         
    exps.obs_names{iexp}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    exps.obs{iexp}=char('Fluorescence=gal1_fluo');             % Observation function
    exps.t_f{iexp}=total_duration;                             % Experiments duration
    exps.n_s{iexp}=data_duration/sampling_interval;          % Number of sampling times
    exps.t_s{iexp}= linspace(0,total_duration,length(S.Data(countexp).output));  % Sampling times, by default equidistant  
    exps.u_interp{iexp}='step';
    
    t_con = [0 find(diff(S.Data(countexp).input' == 1)) total_duration];
    exps.t_con{iexp}   = t_con;       % input value change points
    exps.n_steps{iexp} = length(exps.t_con{iexp})-1; 
    if rem(length(t_con),2) == 0
        exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2)) 2];           % input values
    else
        exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2))];
    end

    exps.data_type      = 'real';    
    exps.noise_type     = 'homo';
    exps.exp_data{iexp} = S.Data(countexp).output;
    IndexExitCP = find(S.Data(countexp).time_min >= t_con(2),1);
    
    exps.std_dev{iexp}  = [nanstd(S.Data(countexp).output(1:IndexExitCP))];

    exps.exp_y0{iexp} = y0;  
    
    exps.n_exp = iexp;
    iexp = iexp + 1;
end


best_global_theta = global_theta_guess; 
param_including_vector = [true,true,true,true,true,true,true,true];

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
inputs.pathd.runident       = strcat('pe-',int2str(10));

% GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERMENTS)
inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
inputs.PEsol.global_theta_guess=transpose(best_global_theta(param_including_vector)); 
inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the paramters
inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters

% COST FUNCTION RELATED DATA
inputs.PEsol.PEcost_type='lsq';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost' 
inputs.PEsol.lsq_type='Q_expmax';
inputs.PEsol.llk_type='homo_var';                     % [] To be defined for llk function, 'homo' | 'homo_var' | 'hetero' 

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-8;
inputs.ivpsol.atol=1.0D-8;
    
% OPTIMIZATION
inputs.nlpsol.nlpsolver='eSS';
inputs.nlpsol.eSS.maxeval = 200000;
inputs.nlpsol.eSS.maxtime = 3000;
inputs.nlpsol.eSS.log_var = [ 1 3 4 5 6 7 8];
inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
inputs.rid.conf_ntrials=500;

results = AMIGO_PE(inputs);

% Run a simulation for each input


    