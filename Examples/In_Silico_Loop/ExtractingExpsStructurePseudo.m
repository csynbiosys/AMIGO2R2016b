% Load step
load('Step_input_3_experiments_2ndtime.mat')
for iexp = 1:3
    exps.exp_type{iexp} = 'fixed';
    exps.n_obs{iexp} = 1;
    exps.obs_names = char('Fluorescence');
    exps.obs{iexp} = char('Fluorescence = Cit_fluo');
    exps.u_interp{iexp} = 'step';
    exps.n_steps{iexp} = inputs.exps.n_steps{1,iexp};
    exps.n_s{iexp} = inputs.exps.n_s{1,iexp};
    exps.t_f{iexp} = inputs.exps.t_f{1,iexp}/60; % conversion to min 
    exps.t_s{iexp} = inputs.exps.t_s{1,iexp}/60; % conversion to min
    exps.t_con{iexp} = inputs.exps.t_con{1,iexp}/60;
    exps.u{iexp} = inputs.exps.u{1,iexp};
    exps.exp_data{iexp} = inputs.exps.exp_data{1,iexp};
    exps.error_data{iexp} = inputs.exps.error_data{1,iexp}

end

clear inputs
clear results

% Load pulses
load('Pulse_input_3_experiments_2ndtime.mat')
i = 1; 
for iexp = 4:6
    exps.exp_type{iexp} = 'fixed';
    exps.n_obs{iexp} = 1;
    exps.obs_names = char('Fluorescence');
    exps.obs{iexp} = char('Fluorescence = Cit_fluo');
    exps.u_interp{iexp} = 'pulse-up';
    exps.n_pulses{iexp} = inputs.exps.n_pulses{1,i};
    exps.n_s{iexp} = inputs.exps.n_s{1,i};
    exps.t_f{iexp} = inputs.exps.t_f{1,i}/60; % conversion to min 
    exps.t_s{iexp} = inputs.exps.t_s{1,i}/60; % conversion to min
    exps.t_con{iexp} = inputs.exps.t_con{1,i}/60;
    exps.u_min{iexp} = inputs.exps.u_min{1,i};
    exps.u_max{iexp} = inputs.exps.u_max{1,i};
    exps.exp_data{iexp} = results.sim.exp_data{1,i};
    exps.error_data{iexp} = results.sim.error_data{1,i};
    i = i+1;

end

clear inputs
clear results

% Load Ramp 
%load('Ramp_input_3_experiments_2ndtime.mat')
load('Ramp_Input_Data_run_2.mat')
i = 1; 
for iexp = 7:9
    exps.exp_type{iexp} = 'fixed';
    exps.n_obs{iexp} = 1;
    exps.obs_names = char('Fluorescence');
    exps.obs{iexp} = char('Fluorescence = Cit_fluo');
    exps.u_interp{iexp} = 'step';
    exps.n_steps{iexp} = inputs.exps.n_steps{1,i};
    exps.n_s{iexp} = inputs.exps.n_s{1,i};
    exps.t_f{iexp} = inputs.exps.t_f{1,i}/60; % conversion to min 
    exps.t_s{iexp} = inputs.exps.t_s{1,i}/60; % conversion to min
    exps.t_con{iexp} = inputs.exps.t_con{1,i}/60;
    exps.u{iexp} = inputs.exps.u{1,i};
    exps.exp_data{iexp} = results.sim.exp_data{1,i};
    exps.error_data{iexp} = results.sim.error_data{1,i};
    i = i+1;
end

clear inputs
clear results

% Load Pseudo random  
load('PseudoRandom_input_3_experiments_2ndtime.mat')
i = 1; 
for iexp = 10:12
    exps.exp_type{iexp} = 'fixed';
    exps.n_obs{iexp} = 1;
    exps.obs_names = char('Fluorescence');
    exps.obs{iexp} = char('Fluorescence = Cit_fluo');
    exps.u_interp{iexp} = 'step';
    exps.n_steps{iexp} = inputs.exps.n_steps{1,i};
    exps.n_s{iexp} = inputs.exps.n_s{1,i};
    exps.t_f{iexp} = inputs.exps.t_f{1,i}/60; % conversion to min 
    exps.t_s{iexp} = inputs.exps.t_s{1,i}/60; % conversion to min
    exps.t_con{iexp} = inputs.exps.t_con{1,i}/60;
    exps.u{iexp} = inputs.exps.u{1,i};
    exps.exp_data{iexp} = results.sim.exp_data{1,i};
    exps.error_data{iexp} = results.sim.error_data{1,i};
    i = i+1;
end

clear inputs
clear results
exps.data_type = 'real';
exps.noise_type = 'hetero';

% for i=9
%     %figure; 
%     errorbar(exps.t_s{1,i}*60,exps.exp_data{1,i},exps.error_data{1,i}); 
% end
%%
Data = exps;
save('PseudoData.mat','Data')


    