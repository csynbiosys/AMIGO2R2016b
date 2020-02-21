function pe_results = PEMIPr(designs,results)

% The 12 experiments (3 for each of the step, pulse, ramp and random input
% classes) are randomised and split in training (8 experiments) and test (4
% experiments) sets.
% PE is run, starting from 100 initial guesses for the parameters, on the training set.
% Each vector of estimates is used to compute the SSE over the test set.
% Hence the estimate yielding the minimum SSE is selected.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Write the header information of the .dat file in which the results of
% PE (estimates, relative confidence intervals, residuals, relative
% residuals and the time required for computation) will be stored.


% Specify folder name and short_name
results_folder = strcat('InduciblePromoter',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = strcat('IndProm');

% Read the model into the model variable
InduciblePromoter_load_model_optimised;

% Define boundaries for the parameters (taken from scientific literature)
global_theta_min = [3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012];
global_theta_max = [0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217];

global_theta_guess = model.par';

%Compute the steady state considering the initial theta guess and 0 IPTG
% y0 = [InduciblePromoter_steady_state(global_theta_guess,0),0];

% Define a randomised vector with the indexes of the experiments
%exps_indexall = [6,3,11,7,8,5,1,2,4,9,10,12];
exps_indexall=1:length(results.sim.exp_data);

% Split the pseudo-data in training and test set
% exps_indexTraining = exps_indexall(1:length(exps_indexall)/3*2);
exps_indexTraining = exps_indexall;
exps_indexTest =  exps_indexall(length(exps_indexall)/3*2+1:end);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run  PE on the training set
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define the exps structure, containing the experimental data to fit

exps.n_exp = length(exps_indexTraining);            % Number of experiments to be used in the multi-experiments fit

for iexp=1:length(exps_indexTraining)
    exp_indexData = exps_indexTraining(iexp);
    exps.exp_type{iexp} = 'fixed';
    exps.n_obs{iexp} = 1;
    exps.obs_names{iexp} = char('Fluorescence');
    exps.obs{iexp} = char('Fluorescence = Cit_fluo');
    exps.u_interp{iexp} = 'step';
    exps.t_f{iexp} = designs{exp_indexData}.oed.t_f{1};
    exps.n_s{iexp} = designs{exp_indexData}.oed.n_s{1};
    exps.t_s{iexp} = designs{exp_indexData}.oed.t_s{1};
    exps.t_con{iexp} = designs{exp_indexData}.oed.t_con{1};
    
    %     if exp_indexData>3 && exp_indexData<7 % Pulses, requires to specify maximum and minimum value for the input
    %         exps.n_pulses{iexp} = Data.n_pulses{1,exp_indexData};
    %         exps.u_min{iexp} = Data.u_min{1,exp_indexData};
    %         exps.u_max{iexp} = Data.u_max{1,exp_indexData};
    %     else
    exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
    exps.u{iexp} = designs{exp_indexData}.oed.u{1};
    %     end
    
    exps.data_type = 'real';
    exps.noise_type = 'hetero';
    exps.exp_data{iexp} = results.sim.exp_data{exp_indexData};
    exps.error_data{iexp} = results.sim.error_data{exp_indexData};
    exps.exp_y0{iexp} = designs{exp_indexData}.oed.exp_y0{1};
end

best_global_theta = global_theta_guess;
param_including_vector = [true,true,true,true,true,true,true,true];

clear inputs;
inputs.model = model;
inputs.exps  = exps;

inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';

AMIGO_Prep(inputs);

inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = strcat('pe-',int2str(1));

% GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERMENTS)
inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
inputs.PEsol.global_theta_guess=transpose(best_global_theta(param_including_vector));
inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the parameters
inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters

% COST FUNCTION RELATED DATA
inputs.PEsol.PEcost_type='lsq';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
inputs.PEsol.lsq_type='Q_expmax';

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-8;
inputs.ivpsol.atol=1.0D-8;

% OPTIMIZATION
inputs.nlpsol.nlpsolver='eSS';
inputs.nlpsol.eSS.maxeval = 200000;
inputs.nlpsol.eSS.maxtime = 5000;
inputs.nlpsol.eSS.log_var = [1 2 3 4 5 6 7 8];
inputs.nlpsol.eSS.local.solver = 'lsqnonlin';
inputs.nlpsol.eSS.local.finish = 'lsqnonlin';
inputs.rid.conf_ntrials=500;
%inputs.plotd.plotlevel='noplot';

pe_results = AMIGO_PE(inputs);
% Save the best theta
best_global_theta(param_including_vector) = pe_results.fit.thetabest;

save([strcat(epccOutputResultFileNameBase,'.mat')],'pe_results','pe_inputs','best_global_theta');

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Run simulation on the test set
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% best_global_theta = global_theta_guess;
% clear inputs;
% clear exps;
% exps.n_exp = length(exps_indexTest);
%
% for iexp=1:length(exps_indexTest)
%     exp_indexData = exps_indexTest(iexp);
%     exps.exp_type{iexp} = 'fixed';
%     exps.n_obs{iexp} = 1;
%     exps.obs_names{iexp} = char('Fluorescence');
%     exps.obs{iexp} = char('Fluorescence = Cit_fluo');
%     exps.u_interp{iexp} = Data.u_interp{1,exp_indexData};
%     exps.t_f{iexp} = Data.t_con{1,exp_indexData}(end);
%     exps.n_s{iexp} = Data.n_s{1,exp_indexData};
%     exps.t_s{iexp} = Data.t_s{1,exp_indexData};
%     exps.t_con{iexp} = Data.t_con{1,exp_indexData};
%
%     if exp_indexData>3 && exp_indexData<7 % Pulses
%         exps.n_pulses{iexp} = Data.n_pulses{1,exp_indexData};
%         exps.u_min{iexp} = Data.u_min{1,exp_indexData};
%         exps.u_max{iexp} = Data.u_max{1,exp_indexData};
%     else
%         exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
%         exps.u{iexp} = Data.u{1,exp_indexData};
%     end
%
%     exps.exp_data{iexp} = Data.exp_data{1,exp_indexData};
%     exps.error_data{iexp} = Data.error_data{1,exp_indexData};
%     y0_to_use = M3D_steady_state(best_global_theta,0);
%     exps.exp_y0{iexp}=y0_to_use;
% end
%
% inputs.model = model;
% inputs.model.par = best_global_theta;
% inputs.exps  = exps;
%
% inputs.pathd.results_folder = results_folder;
% inputs.pathd.short_name     = short_name;
% inputs.pathd.runident       ='-sim';
% inputs.plotd.plotlevel='noplot';
%
% AMIGO_Prep(inputs);
%
% % SIMULATION
% inputs.ivpsol.ivpsolver='cvodes';
% inputs.ivpsol.senssolver='cvodes';
% inputs.ivpsol.rtol=1.0D-8;
% inputs.ivpsol.atol=1.0D-8;
%
% inputs.plotd.plotlevel='full';
% sim_results = AMIGO_SObs(inputs);
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Compute SSE on the test set
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% SSE = zeros(size(exps_indexTest));
% for iexp=1:length(exps_indexTest)
%     exp_indexData = exps_indexTest(iexp);
%     SSE(iexp) = sum((Data.exp_data{1,exp_indexData}-sim_results.sim.sim_data{1,iexp}).^2);
% end

end