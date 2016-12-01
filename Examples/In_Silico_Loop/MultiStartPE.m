%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MultiStartPE
%
% Run parameter estimation with multistart.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Fix the random seed for reproducability while debugging
rng('default')

% Parameters we may change

experimentDuration = 200*60;  % 200 hours
sampleInterval     = 5;       % 5 mins

% Parameters for the experiment input - this could be changed to something
% better when we have this working.  For the moment this is very simple
% input pattern.

u_interp = 'step';
n_steps  = experimentDuration/5;
increment = 2.0/n_steps;
u = 0:increment:2;
increment = experimentDuration/(n_steps+1);
t_con = 1:increment:experimentDuration;

% Load the model etc.

clear model;
clear exps;

results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD';

% Read the model into the model variable
%gal1_load_model_m;  % matlab version of model
gal1_load_model;     % C version of model


% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

% Mock an experiment
    
clear inputs;
inputs.model = model;
% The parameters in the model are the parameter values we are trying to
% determine - keep the model as it is for the simulation

inputs.exps.n_exp = 1;  % Just mocking one experiment

inputs.exps.n_obs{1}=3;                                                 % Number of observed quantities per experiment                         
inputs.exps.obs_names{1}=char('mRNA','FoldedProtein', 'Fluorescence');  % Name of the observed quantities per experiment    
inputs.exps.obs{1}=char('mRNA=gal1_mrna','FoldedProtein=gal1_foldedP', 'Fluorescence=gal1_fluo'); % Observation function
    
%inputs.exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
%inputs.exps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
%inputs.exps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function

% Initial condition with 10% gaussian noise added
y0 = [ 2.0831    1.0415    1.0415];          % Initial conditions with 'correct' parameters
y0 = y0 + y0*0.1.*normrnd(0,1,1,length(y0));
inputs.exps.exp_y0{1}=y0;           

inputs.exps.t_f{1}=experimentDuration;                      % Experiment duration
inputs.exps.n_s{1}=experimentDuration/sampleInterval+1;     % Number of sampling times

inputs.exps.u_interp{1}=u_interp;
inputs.exps.n_steps{1}=n_steps; 
inputs.exps.u{1}=u;                      
inputs.exps.t_con{1}=t_con;

% TODO - in a bit of a mess with the noise types that are inconsistent
% over this loop
inputs.exps.data_type='pseudo';
inputs.exps.noise_type='hetero';
inputs.exps.std_dev{1}=[0.1, 0.1, 0.1];

inputs.plotd.plotlevel='noplot';

inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';

sim = AMIGO_SData(inputs);

% Now we need to add this experiment to the experiments    
exps.n_exp=1;
iexp=exps.n_exp;
exps.exp_type{iexp}='fixed';
exps.n_obs{iexp}=3;                                        % Number of observed quantities per experiment                         
exps.obs_names{iexp}=char('mRNA','FoldedProtein', 'Fluorescence');  % Name of the observed quantities per experiment    
exps.obs{iexp}=char('mRNA=gal1_mrna','FoldedProtein=gal1_foldedP', 'Fluorescence=gal1_fluo'); % Observation function
    
% exps.n_obs{iexp}=1;                                        % Number of observed quantities per experiment                         
% exps.obs_names{iexp}=char('Fluorescence');                 % Name of the observed quantities per experiment    
% exps.obs{iexp}=char('Fluorescence=gal1_fluo');             % Observation function

exps.exp_y0{iexp}=y0;                                      % Initial conditions for experiment       
exps.t_f{iexp}=experimentDuration;
exps.n_s{iexp}=experimentDuration/sampleInterval+1         % Number of sampling times
exps.u_type{iexp}='fixed';
exps.u_interp{iexp}=u_interp;
exps.n_steps{iexp}=n_steps; 
exps.u{iexp}=u;                       
exps.t_con{iexp}=t_con;

exps.exp_data{iexp}=sim.sim.sim_data{1};
exps.error_data{iexp}=sim.sim.error_data{1};

% TODO - these noise types are a bit of a mess - only one type for all
% experiments.  I probably need to be better about these.
exps.data_type='real';                                     % Type of data: 'pseudo'|'pseudo_pos'|'real'             
exps.noise_type='homo_var';                                % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default) 
   

% TODO - Run PE multistart
best_global_theta = transpose([0.002,0.1,2.0,3.1,0.02,1,1,1,1]);

clear inputs;
inputs.model = model;
inputs.exps  = exps;

inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'pe-';

 % GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)
inputs.PEsol.id_global_theta='all';             % 'all'|User selected 

inputs.PEsol.global_theta_max=[0.0176 0.8 4 33.6 0.1 10 10 10 10 ];            % Maximum allowed values for the paramters
inputs.PEsol.global_theta_min= [0.00017 0.008 0 0.336 0.001 0.1 0.1 0.1 0.1];  % Minimum allowed values for the parameters
inputs.PEsol.global_theta_guess=transpose(best_global_theta);      

% COST FUNCTION RELATED DATA
inputs.PEsol.PEcost_type='llk';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost' 
inputs.PEsol.lsq_type='Q_I';
inputs.PEsol.llk_type='homo_var';                     % [] To be defined for llk function, 'homo' | 'homo_var' | 'hetero' 

% SIMULATION
inputs.ivpsol.ivpsolver='ode15s';
inputs.ivpsol.senssolver='ode15s';
inputs.ivpsol.rtol=1.0D-8;
inputs.ivpsol.atol=1.0D-8;

% OPTIMIZATION
%inputs.nlpsol.nlpsolver='multi_nomad';
inputs.nlpsol.nlpsolver='multi_fmincon';
%inputs.nlpsol.nlpsolver='multi_lsqnonlin';
inputs.nlpsol.multistart.maxeval = 20000;            % Maximum number of function evaluations for the multistart                                                         
inputs.nlpsol.multistart.maxtime = 120;              % Maximum allowed time for the optimization                                                                       

inputs.plotd.plotlevel='noplot';

results = AMIGO_PE(inputs);
        
% TODO - View the results

