% Run multiple simulations with different parameter sets

% Read in the files one at a time
directory = '/Users/ahume/datasync/FLIP_MATLAB_DATA/Experiment-Krennic/';

clear model;
results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD'
gal1_load_model;

param_including_vector = [true,true,true,true,true,false,false,false,false];


% Compile the model

clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

duration = 2000;

data = [];


files = dir(strcat(directory,'Krennic*.mat'));
for file = files'
    file.name
    load(strcat(directory,file.name));
    % Get the param values
    params = pe_results{5}.fit.global_theta_estimated;
    
    % Run the simsulation
    clear inputs;
    inputs.model = model;
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
    inputs.exps.u{1}=[2 0 1];
    inputs.exps.t_con{1}=[0 200 1100 duration];
   
    inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = 'sim';
    
    model.par(param_including_vector) = params;
    
    sim = AMIGO_SModel(inputs);
    
    data = [data sim.sim.states{1}(:,3)];
    
end

% Now do one with 10% gaussian noise
clear inputs;
inputs.model = model;
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
    inputs.exps.u{1}=[2 0 1];
    inputs.exps.t_con{1}=[0 200 1100 duration];
   
inputs.plotd.plotlevel='noplot';
    
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';
    
model.par(param_including_vector) = params;
    
inputs.exps.data_type='pseudo';
inputs.exps.noise_type='hetero';
inputs.exps.std_dev{1}=[0.1];

sim = AMIGO_SData(inputs);

data = [ data sim.sim.exp_data{1}];

% Plot the result
plot(0:5:duration, data)

