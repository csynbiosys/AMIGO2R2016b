% Compare dose-response curve obtained with simulations in here and
% previously, using parameter set from the OL
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
    inputs.exps.obs{1} = char('Fluorescence = Cit_molec');
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
    
    
    sim_res_Stelling{exp} = AMIGO_SModel(inputs);
end
%%
Stelling_DataExtraction; 
figure; 
errorbar(IPTG, Citrine_Median,Citrine_iqr/2,'ob'); hold on; 
T1 = readtable('Stelling_Fig2OLPar-1.dat'); 
plot(T1{:,1},T1{:,3},'r'); hold on; 

 Cit_res_Stelling_up = zeros(1,12);
 Cit_res_Stelling_down = zeros(1,12);
 j =1; 
for i=1:length(sim_res_Stelling)
    if i<13
        Cit_res_Stelling_up (1,i) = sim_res_Stelling{1,i}.sim.states{1,1}(52,10);
    else

        Cit_res_Stelling_down (1,j) = sim_res_Stelling{1,i}.sim.states{1,1}(74,10);
        j = j+1;
    end
end
IPTG_sim = [0 2.5 5 7.5 10 15 20 25 35 50 100 1000] ;
plot(IPTG_sim,Cit_res_Stelling_up*27.18/492,'*g',IPTG_sim,Cit_res_Stelling_down*27.18/492,'sg'); hold on; 
set(gca,'XScale','log')