function inputs = loadExperimentSettings_George1(inputs)
duration = 24*60*60;
steplength=50;

%Run a basic simulation - here we start in steady state and add gal1


testIPTG=[50,100];
inputs.exps.n_exp = length(testIPTG);  % Just

for i=1:inputs.exps.n_exp
    
    inputs.exps.n_obs{i}=1;                                        % Number of observed quantities per experiment
    inputs.exps.obs_names{i}=char('CitrineAU');      % Name of the observed quantities per experiment
    inputs.exps.obs{i}=char('CitrineAU=Citrine*scmolec/492');            % Observation function
    
    
    inputs.exps.exp_y0{i}=InitialConditions_Gal(0,0);           % Initial conditions with 'correct' parameters
    inputs.exps.t_f{i}=duration;         % Experiment duration
    ts=0:steplength:duration;
    inputs.exps.n_s{i}=length(ts);% Number of sampling times
    inputs.exps.t_s{i}=ts;      % times of samples
    
    inputs.exps.u_interp{i}='sustained';
    inputs.exps.t_con{i}=[0 duration];                         % Input swithching times: Initial and final time
    inputs.exps.u{i}=testIPTG(i);
    
    inputs.exps.noise_type = 'hetero';
    inputs.exps.std_dev{i}=0.1;
end
end