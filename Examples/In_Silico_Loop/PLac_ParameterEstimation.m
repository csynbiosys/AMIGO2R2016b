% Run Parameter estimation on the hysteresis data acquired on the Open loop
% circuit
% Load experimental data
load StellingData.mat; 

% Specify folder for PE
results_folder = strcat('PLac_OpenLoop',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name = 'PlacOL';

% Read the model into the model variable
PLac_load_model_scIncl; 

% Initial guesses for theta
%model.par=[0.005,2.79e-6,7.75e-5,0.012,2.7e-4,0.0049,0.929,5.4e-4,1.5, 2800, 54.93,0.049,1e-10];
global_theta_min = [0.001,1e-10,7.75e-5, 7.75e-5 ,1e-10, 7.75e-5, 0.001, 5e-4, 1, 2800, 1,0.001, 1e-10,10];
global_theta_max = [1,1,7.75e-5, 1, 1, 1, 1, 1.7e-3, 1e4, 2800, 1000, 1, 1,100];

%global_theta_guess = [logRand(0.001,1) logRand(1e-10,1) 7.75e-5 logRand(7.75e-5,1) logRand(1e-10,1) logRand(7.75e-5,1) logRand(0.001,1) logRand(5e-4,1.7e-3) logRand(1,1e4) 2800 logRand(1,1000) logRand(0.001,1) logRand(1e-10,1)]; 
global_theta_guess = model.par;
global_theta_guess = global_theta_guess';

y0 = PLac_Compute_SteadyState(global_theta_guess,0);
exps.n_exp = length(Data.expName);
for iexp=1:length(Data.expName)
    exps.exp_type{iexp} = 'fixed'; 
    exps.n_obs{iexp} = 1; 
    exps.obs_names{iexp} = char('Fluorescence');
    exps.obs{iexp} = char('Fluorescence = Cit_AU');
    exps.t_f{iexp} = Data.t_con{1,iexp}(end); 
    exps.n_s{iexp} = Data.n_samples{1,iexp};
    exps.t_s{iexp} = Data.t_samples{1,iexp}; 
    
    if iexp<13
        exps.u_interp{iexp} = 'sustained';
        exps.t_con{iexp} = Data.t_con{1,iexp};
        exps.u{iexp} = Data.input{1,iexp};
        
    else
        exps.u_interp{iexp} = 'step';
        exps.t_con{iexp} = Data.t_con{1,iexp};
        exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
        exps.u{iexp} = [1000 Data.input{1,iexp}];
    end
    
    exps.data_type = 'real';
    exps.noise_type = 'homo';
    exps.exp_data{iexp} = Data.exp_data{1,iexp};
    exps.std_dev{iexp} = Data.standard_dev{1,iexp};
    exps.exp_y0{iexp} = y0;
end

best_global_theta = global_theta_guess; 
param_including_vector = [true,true,false,true,true,true,true,true,true,false,true,true,true,true];
 
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
inputs.nlpsol.eSS.log_var = [1 2 3 4 5 6 7 8 9 10 11 12];
inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
inputs.rid.conf_ntrials=500;
 
results = AMIGO_PE(inputs);
 
