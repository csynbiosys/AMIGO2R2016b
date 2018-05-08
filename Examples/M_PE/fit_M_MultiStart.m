function [out] = fit_M(epccOutputResultFileNameBase,epcc_exps,global_theta_guess)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fit_M - runs PE on the plate reader data located in PRData.m.
% The 14 experiments (3 for each of the step, pulse, ramp and random input
% classes) are randomised and split in training (10 experiments) and test (4
% experiments) sets.
% PE is run, starting from 100 initial guesses for the parameters, on the training set.
% Each vector of estimates is used to compute the SSE over the test set. 
% Hence the estimate yielding the minimum SSE is selected. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Write the header information of the .dat file in which the results of
    % PE (estimates, relative confidence intervals, residuals, relative
    % residuals and the time required for computation) will be stored. 
    
    resultFileName = [strcat(epccOutputResultFileNameBase),'.dat'];
    %rng shuffle;
    rngToGetSeed = rng;
    
    fid = fopen(resultFileName,'w');
    fprintf(fid,'HEADER DATE %s\n',datestr(datetime()));
    fprintf(fid,'HEADER RANDSEED %d\n',rngToGetSeed.Seed);
    fclose(fid);
    
    startTime = datenum(now);
    
    clear model;
    clear exps;
    clear best_global_theta;
    clear pe_results;
    clear pe_inputs;
    
    
    % Specify folder name and short_name
    results_folder = strcat('InduciblePromoter',datestr(now,'yyyy-mm-dd-HHMMSS'));
    short_name     = strcat('IndProm',int2str(epcc_exps));
 
    % Load plate reader data
     load('PRData.mat');
 
    % Read the model into the model variable
    M_load_model; 
    
   % Define boundaries for the parameters (taken from scientific literature)
    %global_theta_min = [3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012,1e-3];
    %global_theta_max = [0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217,1e3];
    global_theta_min = [3.88e-8,3.88e-5,0.5,1,0.0077,0.2433,2.39e-4,0.0058,1e-6];
    global_theta_max = [0.4950,0.4950,4.9,10,0.69,6.8067,0.2449,0.0462,1e2];


    global_theta_guess = global_theta_guess';
    
    %Compute the steady state considering the initial theta guess and 0 IPTG
    y0 = M_steady_state(global_theta_guess,0);
    
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

    for iexp=1:length(exps_indexTraining)
        exp_indexData = exps_indexTraining(iexp);
        exps.exp_type{iexp} = 'fixed'; 
        exps.n_obs{iexp} = 1; 
        exps.obs_names{iexp} = char('Fluorescence');
        exps.obs{iexp} = char('Fluorescence = Cit_AU');
        exps.u_interp{iexp} = 'sustained';
        exps.t_f{iexp} = Data.t_con{1,exp_indexData}(end); 
        exps.n_s{iexp} = Data.n_samples{1,exp_indexData};
        exps.t_s{iexp} = Data.t_samples{1,exp_indexData}; 
        exps.t_con{iexp} = Data.t_con{1,exp_indexData};
        %exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
        exps.u{iexp} = Data.input{1,exp_indexData};
      
        exps.data_type = 'real'; 
        exps.noise_type = 'homo_var'; % 'homo'
        exps.exp_data{iexp} = Data.exp_data{1,exp_indexData};
        exps.error_data{iexp} = Data.standard_dev{1,exp_indexData};
        exps.exp_y0{iexp} = y0;
    end

    best_global_theta = global_theta_guess; 
    param_including_vector = [true,true,true,true,true,true,true,true,true];

    % Compile the model
    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;

    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = 'initial_setup';
    
    AMIGO_Prep(inputs);

    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-',int2str(epcc_exps));
    
 
    % GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERMENTS)
    inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
    inputs.PEsol.global_theta_guess=transpose(best_global_theta(param_including_vector));
    inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the parameters
    inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters
 
    % COST FUNCTION RELATED DATA
    %inputs.PEsol.PEcost_type='lsq';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
    %inputs.PEsol.lsq_type='Q_expmax';
    inputs.PEsol.PEcost_type = 'llk';
    inputs.PEsol.llk_type='homo_var';
    
    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';
    inputs.ivpsol.senssolver='cvodes';
    inputs.ivpsol.rtol=1.0D-8;
    inputs.ivpsol.atol=1.0D-8;

    % OPTIMIZATION
    %inputs.nlpsol.nlpsolver = 'multi_nl2sol';
    inputs.nlpsol.nlpsolver = 'multi_fmincon';
    inputs.nlpsol.multi_starts = 200;
    inputs.nlpsol.multistart.maxeval = 2000*200;
    inputs.nlpsol.multistart.maxtime = 1e6;
    inputs.plotd.plotlevel='full';
%     inputs.nlpsol.nlpsolver='eSS';
%     inputs.nlpsol.eSS.maxeval = 200000;
%     inputs.nlpsol.eSS.maxtime = 5000;
%     inputs.nlpsol.eSS.log_var = [1 2 3 4 5 6 7 8 9];
%     inputs.nlpsol.eSS.local.solver = 'lsqnonlin'; 
%     inputs.nlpsol.eSS.local.finish = 'lsqnonlin';
%     inputs.rid.conf_ntrials=500;
%     inputs.plotd.plotlevel='full';
    

    pe_start = now;
    pe_inputs = inputs;
    results = AMIGO_PE(inputs);
    pe_results = results;
    pe_end = now;
    inputs.plotd.plotlevel='full';
    
    % Save the best theta
    best_global_theta(param_including_vector) = results.fit.thetabest;
    
    % Write results to the output file
    fid = fopen(resultFileName,'a');
    used_par_names = model.par_names(param_including_vector,:);
    
    for j=1:size(used_par_names,1)
        fprintf(fid,'PARAM_FIT %s %f\n', used_par_names(j,:), results.fit.thetabest(j));
    end
 
    % Time in seconds
    fprintf(fid,'PE_TIME %.1f\n', (pe_end-pe_start)*24*60*60);
    fclose(fid);
  
    save([strcat(epccOutputResultFileNameBase,'.mat')],'pe_results','exps','pe_inputs','best_global_theta');
%         
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Run simulation on the test set
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     
%     %best_global_theta = global_theta_guess;
%     clear inputs;
%     clear exps;
%     exps.n_exp = length(exps_indexTest);
%     
%     for iexp=1:length(exps_indexTest)
%         exp_indexData = exps_indexTest(iexp);
%         exps.exp_type{iexp} = 'fixed'; 
%         exps.n_obs{iexp} = 1; 
%         exps.obs_names{iexp} = char('Fluorescence');
%         exps.obs{iexp} = char('Fluorescence = Cit_AU');
%         exps.u_interp{iexp} = 'sustained';
%         exps.t_f{iexp} = Data.t_con{1,exp_indexData}(end); 
%         exps.n_s{iexp} = Data.n_samples{1,exp_indexData};
%         exps.t_s{iexp} = Data.t_samples{1,exp_indexData}; 
%         exps.t_con{iexp} = Data.t_con{1,exp_indexData};
%         %exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
%         exps.u{iexp} = Data.input{1,exp_indexData};
%         exps.exp_data{iexp} = Data.exp_data{1,exp_indexData};
%         exps.error_data{iexp} = Data.standard_dev{1,exp_indexData};     
%         y0_to_use = M_steady_state(best_global_theta,0);
%         exps.exp_y0{iexp}=y0_to_use;  
%         
% 
%         exps.data_type = 'real'; 
%         exps.noise_type = 'homo';
% 
%     end
%    
%     inputs.model = model;
%     inputs.model.par = best_global_theta;
%     inputs.exps  = exps;
% 
%     inputs.pathd.results_folder = results_folder;
%     inputs.pathd.short_name     = short_name;
%     inputs.pathd.runident       ='-sim';
%     inputs.plotd.plotlevel='full';
%     
%     AMIGO_Prep(inputs);
% 
%     % SIMULATION
%     inputs.ivpsol.ivpsolver='cvodes';
%     inputs.ivpsol.senssolver='cvodes';
%     inputs.ivpsol.rtol=1.0D-8;
%     inputs.ivpsol.atol=1.0D-8;
% 
%     inputs.plotd.plotlevel='full';
%     sim_results = AMIGO_SObs(inputs);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Compute SSE on the test set
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%     SSE = zeros(size(exps_indexTest));
%     for iexp=1:length(exps_indexTest)
%         exp_indexData = exps_indexTest(iexp);
%         SSE(iexp) = sum((Data.exp_data{1,exp_indexData}-sim_results.sim.sim_data{1,iexp}).^2);
%     end
%     
% 
%     sim_inputs = inputs;
%     sim_exps = exps;
%     save([strcat('Sim-',epccOutputResultFileNameBase,'.mat')],'sim_results','sim_inputs','sim_exps','best_global_theta','SSE');

   out = 1;
end
