%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In silico experiment loop script - runs PE, OED, mock experiment loops
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear model;
clear exps;

% Read the model into the model variable
batch_bac_growth_load_model;

% Initialise set of experiments into the exps variable
batch_bac_growth_load_experiments;

% Initial guess for theta - the global unknows of model
best_global_theta = transpose([5 5 5 5]);

% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder='Bacterial_batch_growth';                        
inputs.pathd.short_name='bbg';
inputs.pathd.runident='initial_setup';
AMIGO_Prep(inputs);

% Now loop through the stages

numLoops = 3;
for i=1:numLoops

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Parameter estimation
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;
    
    % TODO: Do we need these data files?
    inputs.pathd.results_folder='Bacterial_batch_growth';                        
    inputs.pathd.short_name='bbg';
    inputs.pathd.runident=strcat('pe-',int2str(i));
    
     % GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)
    inputs.PEsol.id_global_theta='all';             % 'all'|User selected 
    inputs.PEsol.global_theta_max=[10 10 10 10];    % Maximum allowed values for the paramters
    inputs.PEsol.global_theta_min= [0 0 0 0];       % Minimum allowed values for the parameters
    inputs.PEsol.global_theta_guess=transpose(best_global_theta);      
    
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
    inputs.nlpsol.eSS.maxeval = 10000;
    inputs.nlpsol.eSS.maxtime = 10;
    inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
    inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
    inputs.rid.conf_ntrials=500;
    
    inputs.plotd.plotlevel='noplot';
    
    results = AMIGO_PE(inputs);
    
    % Save the best theta
    best_global_theta=results.fit.thetabest;  
    best_global_theta_log{i}=results.fit.thetabest;
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Optimal experiment design
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;
    
    % Add new experiment that is to be designed
    inputs.exps.n_exp = inputs.exps.n_exp + 1; 
    iexp = inputs.exps.n_exp;
    inputs.exps.exp_type{iexp}='od';     
    inputs.exps.n_obs{iexp}=2;                              % Number of observed quantities per experiment                         
    inputs.exps.obs_names{iexp}=char('obsB','obsS');        % Name of the observed quantities per experiment    
    inputs.exps.obs{iexp}=char('obsB=cb','obsS=cs');        % Observation function
 
    %Initial conditions to be designed
    inputs.exps.exp_y0_type{iexp}='od';
    inputs.exps.id_y0{iexp}=char('cb','cs');
    inputs.exps.y0_min{iexp}=[1 5];               % MIN: Initial conditions for each experiment 
    inputs.exps.y0_max{iexp}=[5 40];              % MAX:Initial conditions for each experiment 
    inputs.exps.y0_guess{iexp}=[3 20];            % Guess at the initial conditions
    inputs.exps.tf_type{iexp}='od';               % [] Type of experiment duration: 'fixed'(default) | 'od' (to be designed) 
    inputs.exps.tf_min{iexp}=8;
    inputs.exps.tf_max{iexp}=20;
    inputs.exps.ts_type{iexp}='fixed';            % [] Type of sampling times: 'fixed'(default) | 'od' (to be designed)
    inputs.exps.n_s{iexp}=11;                     % Number of sampling times

    inputs.PEsol.id_global_theta='all';    
    % TODO - note that if the theta that you can optimising for is a subset
    % of the global theta then there is a control here to populate only the
    % correct subset.  I had these elsewhere - copy that approach to here.
    inputs.PEsol.global_theta_guess=transpose(best_global_theta);
      
    inputs.exps.noise_type='hetero';           % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default) 
    inputs.exps.std_dev{iexp}=[0.1 0.1];     
    inputs.OEDsol.OEDcost_type='Eopt';
    
    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'cvodes'(default, C)|'ode15s' (default, MATLAB, sbml)|'ode113'|'ode45'
    inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes'(default, C)| 'sensmat'(matlab)|'fdsens2'|'fdsens5' 
    inputs.ivpsol.rtol=1.0D-7;                            % [] IVP solver integration tolerances
    inputs.ivpsol.atol=1.0D-7; 

    % OPTIMIZATION
    inputs.nlpsol.nlpsolver='eSS';
    inputs.nlpsol.eSS.maxeval = 10000;
    inputs.nlpsol.eSS.maxtime = 60;
    inputs.nlpsol.eSS.local.solver = 'fmincon';
    inputs.nlpsol.eSS.local.finish = 'fmincon';
                                                       
    inputs.nlpsol.multi_starts=500;                        % [] Number of different initial guesses to run local methods in the multistart approach
    inputs.nlpsol.multistart.maxeval = 20000;            % Maximum number of function evaluations for the multistart
    inputs.nlpsol.multistart.maxtime = 120;                % Maximum allowed time for the optimization
    inputs.nlpsol.eSS.local.nl2sol.maxiter             =     300;        % max number of iteration
    inputs.nlpsol.eSS.local.nl2sol.maxfeval            =     400;         % max number of function evaluation

    inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder='Bacterial_batch_growth'; 
    inputs.pathd.short_name='bbg';
    inputs.pathd.runident=strcat('oed-',int2str(i));
    
    results = AMIGO_OED(inputs);
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Mock an experiment
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear inputs;
    inputs.model = model;
    % The parameters in the model are the parameter values we are trying to
    % determine - keep the model as it is for the simulation
    
    inputs.exps.n_exp = 1;  % Just mocking one experiment
    
    inputs.exps.n_obs{1}=2;                                        % Number of observed quantities per experiment                         
    inputs.exps.obs_names{1}=char('obsB','obsS');                  % Name of the observed quantities per experiment    
    inputs.exps.obs{1}=char('obsB=cb','obsS=cs');                  % Observation function
    inputs.exps.exp_y0{1}=results.oed.exp_y0{results.oed.n_exp};   % Initial conditions for each experiment       
    inputs.exps.t_f{1}=results.oed.t_f{results.oed.n_exp};         % Experiments duration
    inputs.exps.n_s{1}=results.oed.n_s{results.oed.n_exp};          % Number of sampling times
    inputs.exps.t_s{1}=results.oed.t_s{results.oed.n_exp};
    
    % TODO - in a bit of a mess with the noise types that are inconsistent
    % over this loop
    inputs.exps.data_type='pseudo';
    inputs.exps.noise_type='hetero';
    inputs.exps.std_dev{1}=[0.1 0.1];
    
    inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder='Bacterial_batch_growth'; 
    inputs.pathd.short_name='bbg';
    inputs.pathd.runident=strcat('sim-',int2str(i));
    
    sim = AMIGO_SData(inputs);
    
    % Now we need to add this experiment to the experiments    
    exps.n_exp=exps.n_exp+1;
    iexp=exps.n_exp;
    exps.n_obs{iexp}=2;                                        % Number of observed quantities per experiment                         
    exps.obs_names{iexp}=char('obsB','obsS');                  % Name of the observed quantities per experiment    
    exps.obs{iexp}=char('obsB=cb','obsS=cs');                  % Observation function
    exps.exp_y0{iexp}=results.oed.exp_y0{results.oed.n_exp};   % Initial conditions for each experiment       
    exps.t_f{iexp}=results.oed.t_f{results.oed.n_exp};         % Experiments duration
    exps.n_s{iexp}=results.oed.n_s{results.oed.n_exp};         % Number of sampling times
    exps.t_s{iexp}=results.oed.t_s{results.oed.n_exp};         % [] Sampling times, by default equidistant                                                            

    exps.exp_data{iexp}=sim.sim.sim_data{1};
	exps.error_data{iexp}=sim.sim.error_data{1};

    % TODO - these noise types are a bit of a mess - only one type for all
    % experiments.  I probably need to be better about these.
    exps.data_type='real';                                     % Type of data: 'pseudo'|'pseudo_pos'|'real'             
    exps.noise_type='homo_var';                                % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default) 
    
end

best_global_theta
best_global_theta_log

