clear model;

results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD';

% Compile the model

clear inputs;
inputs.model.input_model_type='charmodelC'; 
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';


inputs=gal1_load_model_George1(inputs);

duration = 6000;
steplength=5;

% Run a basic simulation - here we start in steady state and add gal1
    
inputs.exps.n_exp = 1;  % Just mocking one experiment
    
inputs.exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
inputs.exps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
inputs.exps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
 
inputs.exps.exp_y0{1}=[ 2.0831    1.0415    1.0415];           % Initial conditions with 'correct' parameters          
    
inputs.exps.t_f{1}=duration;         % Experiment duration
ts=0:steplength:duration;
inputs.exps.n_s{1}=length(ts);% Number of sampling times
inputs.exps.t_s{1}=ts;      % times of samples
    
inputs.exps.u_interp{1}='step';
inputs.exps.n_steps{1}=6; 
inputs.exps.u{1}=    [ 0    2    0    2  2 0];
inputs.exps.t_con{1}=[0 1000 2000 3000 4000 5000 duration];
   
%inputs.plotd.plotlevel='noplot';
    
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';
AMIGO_Prep(inputs)
inputs.exps.noise_type = 'hetero';
inputs.exps.std_dev{1}=[0.1];


AMIGO_SData(inputs)

exps=inputs.exps;

sim_res=cell(1,1);
sim_res{1} = AMIGO_SModel(inputs);