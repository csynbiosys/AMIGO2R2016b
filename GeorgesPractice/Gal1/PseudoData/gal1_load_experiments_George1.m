function exps = gal1_load_experiments_George1(inputs)
% Run a basic simulation - here we start in steady state and add gal1
cprintf('loading gal1_experiments_George1\n');

duration = 6000;
steplength=5;

% Run a basic simulation - here we start in steady state and add gal1
    
exps.n_exp = 1;  % Just mocking one experiment
    
exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
exps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
exps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
 

exps.exp_y0{1}=gal1_steady_state_George1(inputs,2);           % Initial conditions with 'correct' parameters          
    
exps.t_f{1}=duration;         % Experiment duration
ts=0:steplength:duration;
exps.n_s{1}=length(ts);% Number of sampling times
exps.t_s{1}=ts;      % times of samples
    
exps.u_interp{1}='step';
exps.n_steps{1}=6; 
exps.u{1}=    [ 0    2    0    2  2 0];
exps.t_con{1}=[0 1000 2000 3000 4000 5000 duration];
    
exps.noise_type = 'hetero';
exps.std_dev{1}=[0.1];

end