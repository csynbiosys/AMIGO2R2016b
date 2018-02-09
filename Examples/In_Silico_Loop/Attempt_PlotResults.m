% Script to plot the results of PE
% run the simulations
for exp=1:exps.n_exp;
     
    figure;
    
    clear inputs;
    inputs.model     = model;
    inputs.model.par = [results.fit.thetabest(1:2,1)' model.par(3) results.fit.thetabest(3:8,1)' model.par(10) results.fit.thetabest(9:12,1)']; % 2 parameters were not fitted
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-foo');
    
    % run a simulation
    inputs.exps.n_exp = 1;  % Just mocking one experiment
    inputs.exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
    inputs.exps.obs_names{1} = char('Fluorescence');
    inputs.exps.obs{1} = char('Fluorescence = Cit_AU');
    y0_to_use = PLac_Compute_SteadyState(inputs.model.par,0);          
    inputs.exps.exp_y0{1}=y0_to_use;           
    
    total_duration = exps.t_s{1,exp}(end);
 
    inputs.exps.t_f{1}=total_duration;         % Experiment duration
    inputs.exps.n_s{1}=exps.n_s{1,exp};   % Number of sampling times
    inputs.exps.t_s{1}=exps.t_s{1,exp};     % times of samples
    
    if iexp<13
        inputs.exps.u_interp{1} = 'sustained';
        inputs.exps.t_con{1} = exps.t_con{1,exp};
        inputs.exps.u{1} = exps.u{1,exp};

    else
        inputs.exps.u_interp{1} = 'step';
        inputs.exps.t_con{1} = exps.t_con{1,exp};
        inputs.exps.n_steps{1} = length(inputs.exps.t_con{1})-1;
        inputs.exps.u{1} = exps.u{1,exp};
    end
    
   
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = 'sim';
    
    inputs.plotd.plotlevel='noplot';
    %inputs.plotd.plotlevel='noplot';
    sim_res_PostFit{exp} = AMIGO_SModel(inputs);
end

for exp=1:exps.n_exp;
     
    figure;
    
    clear inputs;
    inputs.model     = model;
    inputs.model.par = model.par;
    
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-foo');
    
    % run a simulation
    inputs.exps.n_exp = 1;  % Just mocking one experiment
    inputs.exps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
    inputs.exps.obs_names{1} = char('Fluorescence');
    inputs.exps.obs{1} = char('Fluorescence = Cit_AU');
    y0_to_use = PLac_Compute_SteadyState(inputs.model.par,0);          
    inputs.exps.exp_y0{1}=y0_to_use;           
    
    total_duration = exps.t_s{1,exp}(end);
 
    inputs.exps.t_f{1}=total_duration;         % Experiment duration
    inputs.exps.n_s{1}=exps.n_s{1,exp};   % Number of sampling times
    inputs.exps.t_s{1}=exps.t_s{1,exp};     % times of samples
    
    if iexp<13
        inputs.exps.u_interp{1} = 'sustained';
        inputs.exps.t_con{1} = exps.t_con{1,exp};
        inputs.exps.u{1} = exps.u{1,exp};

    else
        inputs.exps.u_interp{1} = 'step';
        inputs.exps.t_con{1} = exps.t_con{1,exp};
        inputs.exps.n_steps{1} = length(inputs.exps.t_con{1})-1;
        inputs.exps.u{1} = [exps.u{1,exp}];
    end
    
   
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = 'sim';
    inputs.plotd.plotlevel='noplot';
    %inputs.plotd.plotlevel='noplot';
    
    sim_res_Stelling{exp} = AMIGO_SModel(inputs);
end
 %% Plotting the results
 Stelling_DataExtraction; 
 % Extracting results at 24 hours and converting them to AU
 Cit_res_PostFit_up = zeros(1,12);
 Cit_res_PostFit_down = zeros(1,12);
 Cit_res_Stelling_up = zeros(1,12);
 Cit_res_Stelling_down = zeros(1,12);
 j =1; 
for i=1:length(sim_res_PostFit)
    if i<13
        Cit_res_PostFit_up (1,i) = sim_res_PostFit{1,i}.sim.states{1,1}(52,11);
        Cit_res_Stelling_up (1,i) = sim_res_Stelling{1,i}.sim.states{1,1}(52,11);
    else
        Cit_res_PostFit_down (1,j) = sim_res_PostFit{1,i}.sim.states{1,1}(74,11);
        Cit_res_Stelling_down (1,j) = sim_res_Stelling{1,i}.sim.states{1,1}(74,11);
        j = j+1;
    end
end
 
IPTG_sim = [0 2.5 5 7.5 10 15 20 25 35 50 100 1000] ;
figure; 
errorbar(IPTG, Citrine_Median,Citrine_iqr/2,'ok'); hold on;
plot(IPTG_sim,Cit_res_PostFit_up/492,'*b',IPTG_sim,Cit_res_PostFit_down/492,'sb'); hold on; 
plot(IPTG_sim,Cit_res_Stelling_up/492,'*r',IPTG_sim,Cit_res_Stelling_down/492,'sr'); hold on; 
set(gca,'XScale','log')
 
 %%
figure; 
plot(sim_res_PostFit{1,1}.sim.tsim{1,1},sim_res_PostFit{1,1}.sim.states{1,1}(:,10)'); hold on; 
plot(sim_res_PostFit{1,1}.sim.tsim{1,1},sim_res_PostFit{1,12}.sim.states{1,1}(:,10)'); hold on; 
plot(sim_res_PostFit{1,1}.sim.tsim{1,1},sim_res_PostFit{1,13}.sim.states{1,1}(:,10)'); hold on;
% figure;
% for exp=1:exps.n_exp;
%     subplot(ceil(exps.n_exp/2),2,exp);
%     
%     plot(exps.t_s{exp},exps.exp_data{exp}, 'r', results.sim.tsim{exp},results.sim.obs{exp}, 'b', sim_res{exp}.sim.tsim{1}, sim_res{exp}.sim.states{1}(:,3), 'g');
%     title(int2str(exp));
% end
%  
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
