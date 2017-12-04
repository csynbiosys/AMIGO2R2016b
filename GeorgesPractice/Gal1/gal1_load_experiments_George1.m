function exps = gal1_load_experiments_George1(inputs)
% Run a basic simulation - here we start in steady state and add gal1
cprintf(['loading ',mfilename,'...\n']);

exps.data_type='pseudo_pos';

duration = 6000;
steplength=5;
ts=0:steplength:duration;

% Run a basic simulation - here we start in steady state and add gal1

exps.n_exp = 2;  % Just mocking one experiment

for i=1:exps.n_exp
    exps.n_obs{i}=1;                                        % Number of observed quantities per experiment
    exps.obs_names{i}=char('Fluorescence');                 % Name of the observed quantities per experiment
    exps.obs{i}=char('Fluorescence=gal1_fluo');             % Observation function
    
    
    exps.exp_y0{i}=gal1_steady_state_George1(inputs,2);           % Initial conditions with 'correct' parameters
    
    exps.t_f{i}=duration;         % Experiment duration
    exps.n_s{i}=length(ts);% Number of sampling times
    exps.t_s{i}=ts;      % times of samples
end

exps.u_interp{1}='step';
exps.n_steps{1}=6;
exps.u{1}=    [ 0    2    0    2  2 0];
exps.t_con{1}=[0 1000 2000 3000 4000 5000 duration];


exps.u_interp{2}='step';
exps.n_steps{2}=6;
exps.u{2}=    [ 0    2    10    20  30 40];
exps.t_con{2}=[0 1000 2000 3000 4000 5000 duration];

exps.noise_type = 'hetero';
exps.std_dev{1}=[0.1];
exps.noise_type = 'hetero';
exps.std_dev{2}=[0.1];

end