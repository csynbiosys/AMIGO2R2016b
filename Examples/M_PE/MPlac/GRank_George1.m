results_folder = strcat('InduciblePromoter',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = strcat('IndPromX');
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';

inputs.model=Model_OpenLoop_BestFit_George1();
AMIGO_Prep(inputs);

load('PRData.mat');


% Define a randomised vector with the indexes of the experiments
exps_indexall = [6,3,11,7,14,8,5,1,2,4,13,9,10,12];


% Split the plate reader data in training and test set
exps_indexTraining = exps_indexall(1:ceil(length(exps_indexall)/3*2));
exps_indexTest =  exps_indexall(ceil(length(exps_indexall)/3*2)+1:end);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run  PE on the training set
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define the exps structure, containing the experimental data to fit

exps.n_exp = length(exps_indexTraining);            % Number of experiments to be used in the multi-experiments fit

y0 = MPLac_Compute_SteadyState(inputs.model.par,0);

for iexp=1:length(exps_indexTraining)
    exp_indexData = exps_indexTraining(iexp);
    exps.exp_type{iexp} = 'fixed';
    exps.n_obs{iexp} = 1;
%     exps.obs_names{iexp} = char('Fluorescence');
%     exps.obs{iexp} = char('Fluorescence = Cit_AU');
    exps.obs_names{iexp}=char('CitrineAU');      % Name of the observed quantities per experiment
    exps.obs{iexp}=char('CitrineAU=Cit_AU');            % Observation function
    exps.u_interp{iexp} = 'sustained';
    exps.t_f{iexp} = Data.t_con{1,exp_indexData}(end);
    exps.n_s{iexp} = Data.n_samples{1,exp_indexData};
    exps.t_s{iexp} = Data.t_samples{1,exp_indexData};
    exps.t_con{iexp} = Data.t_con{1,exp_indexData};
    %exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
    exps.u{iexp} = Data.input{1,exp_indexData};
    
    exps.data_type = 'real';
    %exps.noise_type = 'homo_var'; % 'homo'
    exps.exp_data{iexp} = Data.exp_data{1,exp_indexData};
    exps.error_data{iexp} = Data.standard_dev{1,exp_indexData};
    exps.exp_y0{iexp} = y0;
end
AMIGO_Prep(inputs);
inputs.exps  = exps;
x=18;

inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';



inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = strcat('PE-X');

include=true(1,inputs.model.n_par);
inputs.PEsol.id_global_theta='all';%inputs.model.par_names(include,:);                         % 'all'|User selected 
kd=inputs.model.par(3);
minmax=[1e-10,1;
    7.75e-5,1;
    1e-10,1;
    kd,1;
    0.001,1;
    1e-10,0.1;
    1,1e4;
    1,1e4;
    0.001,1;
    0.001,1;
    0.0005,0.0017;
    0.5,2;
    0.5,2;
    10,100]';
inputs.PEsol.global_theta_min=minmax(1,:);       % Minimum allowed values for the parameters
inputs.PEsol.global_theta_max=minmax(2,:);    % Maximum allowed values for the paramters
inputs.PEsol.global_theta_guess=inputs.model.par(include);    

    % COST FUNCTION RELATED DATA
    %inputs.PEsol.PEcost_type='lsq';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
    %inputs.PEsol.lsq_type='Q_expmax';
    inputs.PEsol.PEcost_type='llk';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
    inputs.PEsol.llk_type='homo_var';
    
    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';
    inputs.ivpsol.senssolver='cvodes';
    inputs.ivpsol.rtol=1.0D-8;
    inputs.ivpsol.atol=1.0D-8;

    % OPTIMIZATION
    inputs.nlpsol.nlpsolver='eSS';
%     inputs.nlpsol.nlpsolver='hyb_de_nl2sol';
%     inputs.nlpsol.DE.NP = 100;
%     inputs.nlpsol.DE.itermax = 2000;
%     inputs.nlpsol.DE.strategy = 2;
%     inputs.nlpsol.DE.cvarmax = 1e-6;
    inputs.nlpsol.eSS.maxeval = 100000;%200000;
    inputs.nlpsol.eSS.maxtime = 1000;%5000;
    inputs.nlpsol.eSS.log_var = 1:inputs.model.n_par;
    inputs.nlpsol.eSS.local.solver = 'nl2sol'; 
    %inputs.nlpsol.eSS.local.finish = 'lsqnonlin';
    %inputs.rid.conf_ntrials=500;
    inputs.plotd.plotlevel='full';
    

    pe_start = now;
    pe_inputs = inputs;
    results = AMIGO_PE(inputs);

    pe_results = results;
    pe_end = now;
    inputs.plotd.plotlevel='full';
    
    % Save the best theta
    best_global_theta(param_including_vector) = results.fit.thetabest;