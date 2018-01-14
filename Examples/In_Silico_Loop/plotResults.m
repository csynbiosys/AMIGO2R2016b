% run the simulations
for exp=1:exps.n_exp;
     
    figure;
    
    clear inputs;
    inputs.model     = model;
    inputs.model.par = [3.38e-13; 0.767; 0.339; 0.0022; 0.627; 0.0023; 0.094; 0.0063];
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-foo');
    
    % run a simulation
    inputs.exps.n_exp = 1;  % Just mocking one experiment
    inputs.exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
    inputs.exps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    inputs.exps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
 
    y0_to_use = gal1_steady_state(inputs.model.par,2);          
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
    
    inputs.plotd.plotlevel='noplot';
    
    sim_resbestAll{exp} = AMIGO_SModel(inputs);

end

for exp=1:exps.n_exp;
     
    figure;
    
    clear inputs;
    inputs.model     = model;
    inputs.model.par = [1.86e-13; 3.59; 0.0108; 0.0092; 0.467; 0.0023; 0.112; 0.0091];
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-foo');
    
    % run a simulation
    inputs.exps.n_exp = 1;  % Just mocking one experiment
    inputs.exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
    inputs.exps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    inputs.exps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
 
    y0_to_use = gal1_steady_state(inputs.model.par,2);          
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
    
    sim_resbestRedExps{exp} = AMIGO_SModel(inputs);
end

for exp=1:exps.n_exp;
     
    figure;
    
    clear inputs;
    inputs.model     = model;
    inputs.model.par = [3.5e-5; 2.25; 0.255; 0.0092; 0.532; 0.0048; 0.108; 0.0092];
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-foo');
    
    % run a simulation
    inputs.exps.n_exp = 1;  % Just mocking one experiment
    inputs.exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
    inputs.exps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    inputs.exps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
 
    y0_to_use = gal1_steady_state(inputs.model.par,2);          
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
    
    sim_resbestRedPar{exp} = AMIGO_SModel(inputs);
end


figure;
for exp=1:exps.n_exp;
    subplot(ceil(exps.n_exp/2),2,exp);
    shadedErrorBar(exps.t_s{exp},exps.exp_data{exp},exps.error_data{exp},'lineprops','k'); hold on; 
    %errorbar(exps.t_s{exp},exps.exp_data{exp},exps.error_data{exp},'.k'); hold on;
    plot(sim_resbestAll{1,exp}.sim.tsim{1,1},sim_resbestAll{1,exp}.sim.states{1,1}(:,3), 'c', sim_resbestRedExps{1,exp}.sim.tsim{1,1}, sim_resbestRedExps{1,exp}.sim.states{1,1}(:,3), 'b',sim_resbestRedPar{1,exp}.sim.tsim{1,1}, sim_resbestRedPar{1,exp}.sim.states{1,1}(:,3), 'g');
    %legend('Exp data','Ave','best')
    title(int2str(exp));
end

% figure;
% for exp=1:exps.n_exp;
%     subplot(ceil(exps.n_exp/2),2,exp);
%     
%     t = repmat(exps.t_con{exp},2,1);
%     t = t(:)';
%     t = t(2:end-1);
%     
%     u = repmat(exps.u{exp},2,1);
%     u = u(:)';
%     area(t,u);
% end