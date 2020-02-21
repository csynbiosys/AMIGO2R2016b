function inputs = loadExperimentSettings_Lucia_George(inputs)
%steplength=50;

%Run a basic simulation - here we start in steady state and add gal1
load('PseudoData_HomoVar005.mat');
exps_indexTraining = [6,3,11,7,8,5,1,2];

inputs.exps.n_exp = length(exps_indexTraining);

y0=InduciblePromoter_steady_state(inputs.model.par,0);

for iexp=1:length(exps_indexTraining)
    exp_indexData = exps_indexTraining(iexp);
    inputs.exps.exp_type{iexp} = 'fixed';
    inputs.exps.n_obs{iexp} = 1;
    inputs.exps.obs_names{iexp} = char('Fluorescence');
    inputs.exps.obs{iexp} = char('Fluorescence = Cit_fluo');
    inputs.exps.u_interp{iexp} = Data.u_interp{1,exp_indexData};
    inputs.exps.t_f{iexp} = Data.t_con{1,exp_indexData}(end);
    inputs.exps.n_s{iexp} = Data.n_s{1,exp_indexData};
    inputs.exps.t_s{iexp} = Data.t_s{1,exp_indexData};
    inputs.exps.t_con{iexp} = Data.t_con{1,exp_indexData};
    
    if exp_indexData>3 && exp_indexData<7 % Pulses
        inputs.exps.n_pulses{iexp} = Data.n_pulses{1,exp_indexData};
        inputs.exps.u_min{iexp} = Data.u_min{1,exp_indexData};
        inputs.exps.u_max{iexp} = Data.u_max{1,exp_indexData};
    else
        inputs.exps.n_steps{iexp} = length(inputs.exps.t_con{iexp})-1;
        inputs.exps.u{iexp} = Data.u{1,exp_indexData};
    end
    
    inputs.exps.data_type = 'real'; % check if this is the case
    inputs.exps.noise_type = 'homo_var'; % check if this is the case
    inputs.exps.exp_data{iexp} = Data.exp_data{1,exp_indexData};
    inputs.exps.error_data{iexp} = Data.error_data{1,exp_indexData};
    inputs.exps.exp_y0{iexp} = y0;
end
end