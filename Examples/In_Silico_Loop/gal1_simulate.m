clear model;
clear exps;
clear best_global_theta_log;

results_folder = 'Gal1-noDelay-simulate';
short_name     = 'gal1noD'

% Read the model into the model variable
gal1_load_model;


% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'simulate';
AMIGO_Prep(inputs);

% Run the simulation
inputs.exps.n_exp = 1;  % Just mocking one experiment
    
inputs.exps.n_obs{1}=3;                                        % Number of observed quantities per experiment                         
inputs.exps.obs_names{1}=char('mRNA','FoldedProtein', 'Fluorescence');  % Name of the observed quantities per experiment    
inputs.exps.obs{1}=char('mRNA=gal1_mrna','FoldedProtein=gal1_foldedP', 'Fluorescence=gal1_fluo'); % Observation function
inputs.exps.exp_y0{1}=[1 1 1];   % Initial conditions for each experiment       
inputs.exps.t_f{1}=1200;         % Experiment duration
inputs.exps.n_s{1}=241;                    % Number of sampling times

inputs.exps.u_interp{1}='sustained';                   
inputs.exps.t_con{1}=[0 1200];                      % stimulus swithching times, experiment 1  
inputs.exps.u{1}(1,:)=2; 

% inputs.exps.u_interp{1}='pulse-down';
% inputs.exps.n_pulses{1}=10; 
% inputs.exps.u_min{1}=0;                               % Minimum value for the input
% inputs.exps.u_max{1}=2;                               % Maximum value for the input
% inputs.exps.t_con{1}=[1:59:1200];


% inputs.exps.u_interp{1}='pulse-down';
% inputs.exps.n_pulses{1}=10; 
% inputs.exps.u_min{1}=0;                               % Minimum value for the input
% inputs.exps.u_max{1}=2;                               % Maximum value for the input
% inputs.exps.t_con{1}=[1:59:1200];


inputs.exps.data_type='pseudo';
inputs.exps.noise_type='hetero';
inputs.exps.std_dev{1}=[0.1 0.1 0.1];
    
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = strcat('sim');
    
%sim = AMIGO_SData(inputs);
sim = AMIGO_SModel(inputs);
