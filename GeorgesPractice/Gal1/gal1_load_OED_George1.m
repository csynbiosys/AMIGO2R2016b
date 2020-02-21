function exps = gal1_load_OED_George1(inputs)
% Run a basic simulation - here we start in steady state and add gal1
cprintf(['loading ',mfilename,'...\n']);

duration = 6000;
steplength=5;

% Run a basic simulation - here we start in steady state and add gal1
    
exps.n_exp = 1;  % Just mocking one experiment
exps.exp_type{1}='od';                     % Indicates if the the experiment should
%  exps.exp_type{2}='od';                     % or not be optimally designed : 'od' and 'fixed'
% exps.exp_type{3}='od';      


exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
exps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
exps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
 
 exps.u_type{1}='od';                           % Type of stimulation: 'fixed' | 'od' (to be designed) 
 exps.u_interp{1}='step';                       % Stimuli definition for experiment 3:
                                                       % OPTIONS:u_interp:
                                                       % 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down' 
 exps.n_steps{1}=6;                             % Number of pulses _|-|_|-|_ 
  exps.u_min{1}=0*ones(1,exps.n_steps{1});
 exps.u_max{1}=2*ones(1,exps.n_steps{1});% Minimum and maximum value for the input

 ts=0:steplength:duration;
  exps.tf_type{1}='fixed';                       % [] Type of experiment duration: 'fixed'(default) | 'od' (to be designed) 
 exps.t_f{1}=duration;                               % Experiment duration
 exps.ts_type{1}='fixed';                       % [] Type of sampling times: 'fixed'(default) | 'od' (to be designed) 
 exps.n_s{1}=length(ts);
 exps.std_dev{1}=0.1;                           % Standard deviation of the noise for each experiment: Ex: 0.05 <=> 5%
 

exps.exp_y0{1}=gal1_steady_state_George1(inputs,2);           % Initial conditions with 'correct' parameters          
    
exps.t_f{1}=duration;         % Experiment duration
ts=0:steplength:duration;
exps.n_s{1}=length(ts);% Number of sampling times
exps.t_s{1}=ts;      % times of samples

end