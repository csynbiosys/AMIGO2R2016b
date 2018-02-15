function [out] = fit_to_Stelling_data_crossvalidation_equal_simulations_f_mod(epccOutputResultFileNameBase,epcc_exps,global_theta_guess)
% in this function, only 16/24 experiments are used for the fitting (training set). The
% remaining being use as a test set 

    resultFileName = [strcat(epccOutputResultFileNameBase),'.dat'];
    rng shuffle;
    rngToGetSeed = rng;
    
    % Write the header information
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
    results_folder = strcat('PLac_OpenLoop',datestr(now,'yyyy-mm-dd-HHMMSS'));
    short_name     = strcat('PLacOL');
 
    %     % Load pseudo-experimental data
     load('PseudoData.mat');
 
    % Read the model into the model variable
    PLac_load_model_scIncl; 
    
   % Initial guesses for theta
%     global_theta_min = [0.001,1e-10,7.75e-5 ,1e-10, 7.75e-5, 0.001, 5e-4, 1, 1,0.001, 1e-10,10];
%     global_theta_max = [1,1,1, 1, 1, 1, 1.7e-3, 1e4, 1000, 1, 1,100];

    global_theta_guess = global_theta_guess';
    
    %Compute the steady state considering the initial theta guess and 0 IPTG
    y0 = PLac_Compute_SteadyState(global_theta_guess,0);
    
    %exps_indexall = [6,3,11,7,8,5,1,2,4,9,10,12];
    exps_indexall=1:12;
    exps.n_exp = length(exps_indexall);
%% Simulate the behaviour of the system using the true parameter values
    for iexp=1:length(exps_indexall)
        exp_indexData = exps_indexall(iexp);
        exps.exp_type{iexp} = 'fixed'; 
        exps.n_obs{iexp} = 1; 
        exps.obs_names{iexp} = char('Fluorescence');
        exps.obs{iexp} = char('Fluorescence = Cit_molec');
        exps.u_interp{iexp} = Data.u_interp{1,exp_indexData};
        exps.t_f{iexp} = Data.t_con{1,exp_indexData}(end)*60; 
        exps.n_s{iexp} = Data.n_s{1,exp_indexData};
        exps.t_s{iexp} = Data.t_s{1,exp_indexData}*60; 
        exps.t_con{iexp} = Data.t_con{1,exp_indexData}*60;

        if exp_indexData>3 && exp_indexData<7 % Pulses
            exps.n_pulses{iexp} = Data.n_pulses{1,exp_indexData};
            exps.u_min{iexp} = Data.u_min{1,exp_indexData};
            exps.u_max{iexp} = Data.u_max{1,exp_indexData};
        else
            exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
            exps.u{iexp} = Data.u{1,exp_indexData};
        end

        exps.data_type = 'pseudo'; % check if this is the case
        exps.noise_type = 'homo_var'; % check if this is the case
        exps.std_dev{iexp} = [0.05];
        exps.exp_y0{iexp} = y0;
    end
    
    inputs.model = model;
    inputs.model.par  = global_theta_guess;
    inputs.exps  = exps;
    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('sim-',int2str(epcc_exps));
    inputs.plotd.plotlevel = 'full';
    
    AMIGO_Prep(inputs);
    
    sim = AMIGO_SData(inputs);
    save('PartialOnStelling.mat','sim');
%    
    
%     % Load experimental data
%     load('StellingData_EqualSimulations.mat');
%  
%     % Read the model into the model variable
%     PLac_load_model_scIncl; 
% 
%     % Initial guesses for theta
%     global_theta_min = [0.001,1e-10,7.75e-5, 7.75e-5 ,1e-10, 7.75e-5, 0.001, 5e-4, 1, 2800, 1,0.001, 1e-10,10];
%     global_theta_max = [1,1,7.75e-5, 1, 1, 1, 1, 1.7e-3, 1e4, 2800, 1000, 1, 1,100];
% 
%     global_theta_guess = global_theta_guess';
%     
%     %Compute the steady state considering the initial theta guess and 0 IPTG
%     y0 = PLac_Compute_SteadyState(global_theta_guess,0);
%     
%     exps_indexall = [22,3,10,19,17,15,4,14,6,8,21,20,13,24,7,11,16,23,2,18,1,12,5,9];
%     exps_indexTraining = exps_indexall(1:16);
%     exps_indexTest =  exps_indexall(17:end);
%     
%     exps.n_exp = length(exps_indexTraining);
%     
%     for iexp=1:length(exps_indexTraining)
%         exp_indexData = exps_indexTraining(iexp);
%         exps.exp_type{iexp} = 'fixed'; 
%         exps.n_obs{iexp} = 1; 
%         exps.obs_names{iexp} = char('Fluorescence');
%         exps.obs{iexp} = char('Fluorescence = Cit_AU');
%         exps.t_f{iexp} = Data.t_con{1,exp_indexData}(end); 
%         exps.n_s{iexp} = Data.n_samples{1,exp_indexData};
%         exps.t_s{iexp} = Data.t_samples{1,exp_indexData}; 
%         exps.u_interp{iexp} = 'step';
%         exps.t_con{iexp} = Data.t_con{1,exp_indexData};
%         exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
% 
%         if exp_indexData<13
%            exps.u{iexp} =  [0 Data.input{1,exp_indexData}];
% 
%         else
%            exps.u{iexp} = [1000 Data.input{1,exp_indexData}];
%         end
% 
%         exps.data_type = 'real';
%         exps.noise_type = 'homo';
%         exps.exp_data{iexp} = Data.exp_data{1,exp_indexData};
%         exps.error_data{iexp} = Data.standard_dev{1,exp_indexData};
%         exps.exp_y0{iexp} = y0;
%     end
% 
%     best_global_theta = global_theta_guess; 
%     param_including_vector = [true,true,false,true,true,true,true,true,true,false,true,true,true,true];
% 
%     % Compile the model
%     clear inputs;
%     inputs.model = model;
%     inputs.exps  = exps;
% 
%     inputs.pathd.results_folder = results_folder;                        
%     inputs.pathd.short_name     = short_name;
%     inputs.pathd.runident       = 'initial_setup';
%     
%     AMIGO_Prep(inputs);
% 
%     inputs.pathd.results_folder = results_folder;                        
%     inputs.pathd.short_name     = short_name;
%     inputs.pathd.runident       = strcat('pe-',int2str(epcc_exps));
%     
%  
%     % GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERMENTS)
%     inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
%     inputs.PEsol.global_theta_guess=transpose(best_global_theta(param_including_vector));
%     inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the paramters
%     inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters
%  
%     % COST FUNCTION RELATED DATA
%     inputs.PEsol.PEcost_type='lsq';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
%     inputs.PEsol.lsq_type='Q_expmax';
%     inputs.PEsol.llk_type='homo_var';                     % [] To be defined for llk function, 'homo' | 'homo_var' | 'hetero'
%  
%     % SIMULATION
%     inputs.ivpsol.ivpsolver='cvodes';
%     inputs.ivpsol.senssolver='cvodes';
%     inputs.ivpsol.rtol=1.0D-8;
%     inputs.ivpsol.atol=1.0D-8;
% 
%     % OPTIMIZATION
%     inputs.nlpsol.nlpsolver='eSS';
%     inputs.nlpsol.eSS.maxeval = 200000;
%     inputs.nlpsol.eSS.maxtime = 5000;
%     inputs.nlpsol.eSS.log_var = [1 2 3 4 5 6 7 8 9 10 11 12];
%     inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
%     inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
%     inputs.rid.conf_ntrials=500;
% 
%     pe_start = now;
%     pe_inputs = inputs;
%     results = AMIGO_PE(inputs);
%     pe_results = results;
%     pe_end = now;
%     
%     % Save the best theta
%     best_global_theta(param_including_vector) = results.fit.thetabest;
%     
%     % Write results to the output file
%     fid = fopen(resultFileName,'a');
%     used_par_names = model.par_names(param_including_vector,:);
%     
%     for j=1:size(used_par_names,1)
%         fprintf(fid,'PARAM_FIT %s %f\n', used_par_names(j,:), results.fit.thetabest(j));
% %         if isfield(results.fit,'rel_conf_interval')
% %             fprintf(fid,'REL_CONF %s %f\n', used_par_names(j,:), results.fit.rel_conf_interval(j));
% %         end
% %         if isfield(results.fit,'residuals')
% %             fprintf(fid,'RESIDUAL %s %f\n', used_par_names(j,:), results.fit.residuals{1}(j));
% %         end
% %         if isfield(results.fit,'rel_residuals')
% %             fprintf(fid,'REL_RESIDUAL %s %f\n', used_par_names(j,:), results.fit.rel_residuals{1}(j));
% %         end
%     end
%  
%     % Time in seconds
%     fprintf(fid,'PE_TIME %.1f\n', (pe_end-pe_start)*24*60*60);
%     fclose(fid);
%     
%     save([strcat(epccOutputResultFileNameBase,'.mat')],'pe_results','exps','pe_inputs','best_global_theta');
%     
%     
%     
%     %% Now run simulations on the test set
%     clear inputs;
%     clear exps;
%     
%     exps.n_exp = length(exps_indexTest);
%     
%     for iexp=1:length(exps_indexTest)
%         
%         exp_indexData = exps_indexTest(iexp);
%         exps.exp_type{iexp} = 'fixed'; 
%         exps.n_obs{iexp} = 1; 
%         exps.obs_names{iexp} = char('Fluorescence');
%         exps.obs{iexp} = char('Fluorescence = Cit_AU');
%         y0_to_use = PLac_Compute_SteadyState(best_global_theta,0);   
%         exps.exp_y0{iexp}=y0_to_use;  
%         exps.t_f{iexp} = Data.t_con{1,exp_indexData}(end); 
%         exps.n_s{iexp} = Data.n_samples{1,exp_indexData};
%         exps.t_s{iexp} = Data.t_samples{1,exp_indexData}; 
%         exps.u_interp{iexp} = 'step';
%         exps.t_con{iexp} = Data.t_con{1,exp_indexData};
%         exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
% 
%         if exp_indexData<13
%            exps.u{iexp} =  [0 Data.input{1,exp_indexData}];
% 
%         else
%            exps.u{iexp} = [1000 Data.input{1,exp_indexData}];
%         end
%         
%         exps.exp_data{iexp} = Data.exp_data{1,exp_indexData};
%         exps.error_data{iexp} = Data.standard_dev{1,exp_indexData};
%     end
%    
%     inputs.model = model;
%     inputs.model.par = best_global_theta;
%     inputs.exps  = exps;
% 
%     inputs.pathd.results_folder = results_folder;
%     inputs.pathd.short_name     = short_name;
%     inputs.pathd.runident       ='-sim';
%     inputs.plotd.plotlevel='noplot';
%     
%     AMIGO_Prep(inputs);
% 
%     % SIMULATION
%     inputs.ivpsol.ivpsolver='cvodes';
%     inputs.ivpsol.senssolver='cvodes';
%     inputs.ivpsol.rtol=1.0D-8;
%     inputs.ivpsol.atol=1.0D-8;
% 
%     %inputs.plotd.plotlevel='full';
%     sim_results = AMIGO_SObs(inputs);
% 
%     % Now computing sum of squared residuals
%     SSE = zeros(size(exps_indexTest));
%     for iexp=1:length(exps_indexTest)
%         exp_indexData = exps_indexTest(iexp);
%         SSE(iexp) = sum((Data.exp_data{1,exp_indexData}-sim_results.sim.sim_data{1,iexp}).^2);
%     end
%     
% 
%     sim_inputs = inputs;
%     sim_exps = exps;
%     save([strcat(epccOutputResultFileNameBase,'-sim','.mat')],'sim_results','sim_inputs','sim_exps','best_global_theta','SSE');
%     

    out = 1;
end
