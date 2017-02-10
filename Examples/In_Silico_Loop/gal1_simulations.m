
clear model;
results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD'
gal1_load_model;

% Compile the model

clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

duration = 3000;

% Run a basic simulation - here we start in steady state and add gal1
    
inputs.exps.n_exp = 1;  % Just mocking one experiment
    
inputs.exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
inputs.exps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
inputs.exps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
 
y0_to_use = [ 2.0831    1.0415    1.0415];          % Initial conditions with 'correct' parameters
inputs.exps.exp_y0{1}=y0_to_use;           
    
inputs.exps.t_f{1}=duration;         % Experiment duration
inputs.exps.n_s{1}=duration/5 + 1;   % Number of sampling times
inputs.exps.t_s{1}=0:5:duration      % times of samples
    
inputs.exps.u_interp{1}='step';
inputs.exps.n_steps{1}=3; 
inputs.exps.u{1}=[0 2 1];
inputs.exps.t_con{1}=[0 1000 2000 duration];
   
%inputs.plotd.plotlevel='noplot';
    
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';
    
sim = AMIGO_SModel(inputs);
    



