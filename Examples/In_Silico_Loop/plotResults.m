% run the simulations
for exp=1:exps.n_exp;
     
    figure;
    
    clear inputs;
    inputs.model     = model;
    inputs.model.par = results.fit.thetabest;
    inputs.model.par(8) = 0.02;
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-foo');
    
    % run a simulation
    inputs.exps.n_exp = 1;  % Just mocking one experiment
    inputs.exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
    inputs.exps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    inputs.exps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
 
    y0_to_use = [1 1 1];          
    inputs.exps.exp_y0{1}=y0_to_use;           
    
    total_duration = exps.t_s{exp}(end);

    inputs.exps.t_f{1}=total_duration;         % Experiment duration
    inputs.exps.n_s{1}=total_duration/5 + 1;   % Number of sampling times
    inputs.exps.t_s{1}=0:5:total_duration;     % times of samples
    
    inputs.exps.u_interp{1}='step';
    inputs.exps.n_steps{1}=exps.n_steps{exp}; 
    inputs.exps.u{1}=exps.u{exp};
    inputs.exps.t_con{1}=exps.t_con{exp};
   
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = 'sim';
    
    %inputs.plotd.plotlevel='noplot';
    
    sim_res{exp} = AMIGO_SModel(inputs);
end


figure;
for exp=1:exps.n_exp;
    subplot(ceil(exps.n_exp/2),2,exp);
    plot(exps.t_s{exp},exps.exp_data{exp}, 'r', results.sim.tsim{exp},results.sim.obs{exp}, 'b', sim_res{exp}.sim.tsim{1}, sim_res{exp}.sim.states{1}(:,3), 'g');
    title(int2str(exp));
end