%follows from SingleExperimentDynamics_Stelling_Us_IP.m 
% Check which corrections should be performed so as to 
for e= 1:exps.n_exp
    figure; 
    errorbar((exps.t_s{1,e}-exps.t_s{1,e}(1,1))/3600,exps.exp_data{1,e}/492,exps.error_data{1,e}*(0.6745)/492,'ob'); hold on;
    plot((sim_results_Stelling.sim.tsim{1,e}(44:end)-sim_results_Stelling.sim.tsim{1,e}(44))/3600,sim_results_Stelling.sim.obs{1,e}(44:end)/492,'b'); hold on;
    plot((sim_results_Cross.sim.tsim{1,e}(44:end)-sim_results_Cross.sim.tsim{1,e}(44))/3600,sim_results_Cross.sim.obs{1,e}(44:end)/492,'r'); hold on 
    plot((sim_results_IP.sim.tsim{1,e}(44:end)-sim_results_IP.sim.tsim{1,e}(44))/3600,sim_results_IP.sim.obs{1,e}(44:end)/492,'g');
    xlabel('Time (hours)');
    ylabel('Citrine (AU)');
    title(int2str(e))
end


% Create csv with the experimental data
time_exp = (exps.t_s{1,e}-exps.t_s{1,e}(1,1))/3600; % hours
Citrine_AU = exps.exp_data{1,e}/492;
Iqr = exps.error_data{1,e}*(2*0.6745)/492;

T_exp = table(time_exp',Citrine_AU,Iqr);
writetable(T_exp,'ExperimentalData_Dynamics.csv')

% Create csv with Stelling model 
time_Stelling =  (sim_results_Stelling.sim.tsim{1,e}(44:end)-sim_results_Stelling.sim.tsim{1,e}(44))/3600; 
CitrineAU_Stelling = sim_results_Stelling.sim.obs{1,e}(44:end)/492;
T_Stelling = table(time_Stelling',CitrineAU_Stelling);
writetable(T_Stelling,'Dynamics_Stelling.csv')

% Create csv with Cross model 
time_Cross =  (sim_results_Cross.sim.tsim{1,e}(44:end)-sim_results_Cross.sim.tsim{1,e}(44))/3600; 
CitrineAU_Cross = sim_results_Cross.sim.obs{1,e}(44:end)/492;
T_Cross = table(time_Cross',CitrineAU_Cross);
writetable(T_Cross,'Dynamics_Cross.csv')

% Create csv with IP model 
time_IP =  (sim_results_IP.sim.tsim{1,e}(44:end)-sim_results_IP.sim.tsim{1,e}(44))/3600; 
CitrineAU_IP = sim_results_IP.sim.obs{1,e}(44:end)/492;
T_IP = table(time_IP',CitrineAU_IP);
writetable(T_IP,'Dynamics_IP.csv')