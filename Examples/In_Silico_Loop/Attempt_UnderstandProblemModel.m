% This script compares the trend over time for all the experiments obtained
% with 
% a) the best fitted value for the OL circuit(as reported in Table S6 of the stelling paper);
% b) the best fitted value (minimum ESS over the test set) for the OL circuit computed in cross validation fittings
% 
% In addition, we compute the ESS in the two cases. 

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');

clear model;
clear exps;
clear best_global_theta;
clear pe_results;
clear pe_inputs;


% Specify folder name and short_name
results_folder = strcat('PLac_OpenLoop',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = strcat('PLacOL');

% Load experimental data
load('StellingData_EqualSimulations.mat');

% Read the model into the model variable
PLac_load_model_scIncl; 
% 
% exps_indexall = [22,3,10,19,17,15,4,14,6,8,21,20,13,24,7,11,16,23,2,18,1,12,5,9];
% exps.n_exp = length(exps_indexall);

inputs.model = model;
%inputs.model.par = [0.005,2.79e-6,7.75e-5,0.012,2.7e-4,0.0049,0.929,5.4e-4,1.5, 2800, 54.93,0.049,1e-10,27.18];
inputs.model.par =[0.0325733538256257 5.46705566202220e-10 7.75000000000000e-05 0.000654809767818206 0.00490818296698615 0.0307309277630367 0.840871329334178 0.00132658139648501 9593.67726098644 2800 106.300183525726 0.0967056122710768 0.0432774760580804 13.7502726488295]; % results of the fitting performed using CrossValidation equal
IPTG = [0,0.100000000000000,0.500000000000000,1,2.50000000000000,5,10,50,100,500,1000,10000];
exps.n_exp = length(IPTG);
for iexp=1:length(IPTG)
    exp_indexData = 1;
    exps.exp_type{iexp} = 'fixed'; 
    exps.n_obs{iexp} = 1; 
    exps.obs_names{iexp} = char('Fluorescence');
    exps.obs{iexp} = char('Fluorescence = Cit_AU');
    exps.t_f{iexp} = 24*3600; 
    exps.n_s{iexp} = 2;
    exps.t_s{iexp} = [0 exps.t_f{iexp}]; 
    exps.u_interp{iexp} = 'sustained';
    exps.t_con{iexp} = [0 24*3600];%Data.t_con{1,exp_indexData};
    exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
    exps.exp_y0{iexp} = PLac_Compute_SteadyState(inputs.model.par,0);

    if exp_indexData<13
       exps.u{iexp} = IPTG(iexp);
       

    else
       exps.u{iexp} = [1000 Data.input{1,exp_indexData}];
       exps.exp_y0{iexp} = PLac_Compute_SteadyState(inputs.model.par,1000);

    end

%     exps.data_type = 'real';
%     exps.noise_type = 'homo';
%     exps.exp_data{iexp} = Data.exp_data{1,exp_indexData};
%     exps.error_data{iexp} = Data.standard_dev{1,exp_indexData};
    
end

%% Compile and run the model with the Stelling estimates

inputs.exps  = exps;

inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       ='-simStelling';
inputs.plotd.plotlevel='noplot';
% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-8;
inputs.ivpsol.atol=1.0D-8;
inputs.plotd.plotlevel='full';

AMIGO_Prep(inputs);
sim_results_Stelling = AMIGO_SObs(inputs);

% % Now computing sum of squared residuals
% SSE_Stelling = zeros(size(exps_indexall));
% for iexp=1:length(exps_indexall)
%     exp_indexData = exps_indexall(iexp);
%     SSE_Stelling(iexp) = sum((Data.exp_data{1,exp_indexData}-sim_results_Stelling.sim.sim_data{1,iexp}).^2);
% end
% 
% inputs_Stelling = inputs;
% exps_Stelling = exps;
%%
res = zeros(1,length(IPTG));
for i=1:length(sim_results_Stelling.sim.sim_data)
    res(1,i)=sim_results_Stelling.sim.sim_data{1,i}(2,1);
end
res
%% Compile and run the model with the Cross Validation estimates
clear inputs; 
inputs.model = model;
inputs.model.par =[0.0325733538256257 5.46705566202220e-10 7.75000000000000e-05 0.000654809767818206 0.00490818296698615 0.0307309277630367 0.840871329334178 0.00132658139648501 9593.67726098644 2800 106.300183525726 0.0967056122710768 0.0432774760580804 13.7502726488295]; % results of the fitting performed using CrossValidation equal

for iexp=1:length(exps_indexall)
    exp_indexData = exps_indexall(iexp);
    exps.exp_type{iexp} = 'fixed'; 
    exps.n_obs{iexp} = 1; 
    exps.obs_names{iexp} = char('Fluorescence');
    exps.obs{iexp} = char('Fluorescence = Cit_AU');
    exps.t_f{iexp} = Data.t_con{1,exp_indexData}(end); 
    exps.n_s{iexp} = Data.n_samples{1,exp_indexData};
    exps.t_s{iexp} = Data.t_samples{1,exp_indexData}; 
    exps.u_interp{iexp} = 'step';
    exps.t_con{iexp} = Data.t_con{1,exp_indexData};
    exps.n_steps{iexp} = length(exps.t_con{iexp})-1;

    if exp_indexData<13
       exps.u{iexp} =  [0 Data.input{1,exp_indexData}];
       exps.exp_y0{iexp} = PLac_Compute_SteadyState(inputs.model.par,0);

    else
       exps.u{iexp} = [1000 Data.input{1,exp_indexData}];
       exps.exp_y0{iexp} = PLac_Compute_SteadyState(inputs.model.par,1000);

    end

    exps.data_type = 'real';
    exps.noise_type = 'homo';
    exps.exp_data{iexp} = Data.exp_data{1,exp_indexData};
    exps.error_data{iexp} = Data.standard_dev{1,exp_indexData};
    
end
% Compile the model with the Stelling estimates
inputs.exps  = exps;

inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       ='-simCross';

inputs.plotd.plotlevel='noplot';
% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-8;
inputs.ivpsol.atol=1.0D-8;
inputs.plotd.plotlevel='noplot';

AMIGO_Prep(inputs);
sim_results_Cross = AMIGO_SObs(inputs);

% Now computing sum of squared residuals
SSE_Cross = zeros(size(exps_indexall));
for iexp=1:length(exps_indexall)
    exp_indexData = exps_indexall(iexp);
    SSE_Cross(iexp) = sum((Data.exp_data{1,exp_indexData}-sim_results_Cross.sim.sim_data{1,iexp}).^2);
end

inputs_Cross = inputs; 
exps_Cross = exps; 

%% Now plotting the results
for e= 1:exps.n_exp
    figure; 
    errorbar(exps.t_s{1,e}/3600,exps.exp_data{1,e},exps.error_data{1,e},'ob'); hold on;
    plot(sim_results_Stelling.sim.tsim{1,e}/3600,sim_results_Stelling.sim.obs{1,e},'b'); hold on;
    plot(sim_results_Cross.sim.tsim{1,e}/3600,sim_results_Cross.sim.obs{1,e},'r');
    xlabel('Time (hours)');
    ylabel('Citrine (AU)');
    title(int2str(e))
end

%% Now testing if SSE are statistically different
[h,p] = kstest2(SSE_Stelling, SSE_Cross)
%% Save Results
%save('StellingVsCrossValidationAll.mat','exps_Cross','exps_Stelling','exps_indexall','inputs_Cross', 'inputs_Stelling','sim_results_Cross','sim_results_Stelling','SSE_Cross','SSE_Stelling');