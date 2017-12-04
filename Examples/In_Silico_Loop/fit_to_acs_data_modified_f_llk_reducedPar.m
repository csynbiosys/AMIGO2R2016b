% Proprocesses the data from Fiore 2016 ACS so that it can be processed
% by Amigo2
function [out] = fit_to_acs_data_modified_f_reducedPar(epccOutputResultFileNameBase,epcc_exps)
    resultFileName = [strcat(epccOutputResultFileNameBase),'-',num2str(epcc_exps),'.dat'];
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
    results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
    short_name     = strcat('gal1noD',num2str(epcc_exps));

    
    wd = cd;
    cd('dataSingleCellStructure');
    load('Data_Menolascina_yeast_161007.mat')
    cd(wd)


    sampling_interval = 5;      % minutes

    clear exps;

    % Read the model into the model variable
    gal1_load_model_v2;


    % Compute the steady state for the model, based on the model
    % parameters, in 2% Galactose. 
    
    r_max = gal1_steady_state(model.par,2);

    % Define upper and lower boundaries on parameters value
    %                   r      h1   Km    d1       alpha2  d2    Kf    Kb
    global_theta_min = [0, 0.5, 0.01, 0.0077,  0.3,  0.0023,0.01,  0.0023];  % Minimum allowed values for the parameters
    global_theta_max = [7e-5, 4.0, 0.5,    0.14,    1.3,  0.0092,  0.2,  0.0092];  % Maximum allowed values for the paramters

    % Initial guesses for theta - the global unknonws for the model - imposing
    % constraint on the maximum fluorescence (0.9-1)
    % This is to be sure that we are exceeding the upper bound on
    % normalised fluorescence, so that we will enter the cycle
    y0 = r_max+0.01;
    while y0(1,3)<0.9 || y0(1,3)>1
        global_theta_guess = [3.5e-5 2.25 0.255,logRand(0.0077,0.25),logRand(0.1,1.5),logRand(0.0023,0.01),logRand(0.01,0.2),logRand(0.0023,0.01)]; % extract a random value from a uniform distribution in the plausible range for the parameters
        global_theta_guess = global_theta_guess';
        y0 = gal1_steady_state(global_theta_guess,2); % update the steady state(initial condition)of the system 
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Extract the experimental datasets in place them in structure exps 
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    % Exclude experiments in which 1) there are not single cell data 2)
    % limited number of cells in the acquisition
    ExcludeExperiments = {'Menolascina_extracted_160714','dataND053','dataND055','dataND057'};
    
    iexp = 1;
    for countexp = 1:size(S.Data,2)
        Name = S.Data(countexp).experimentName;
        if any(strcmp(Name,ExcludeExperiments))
            continue
        end
        input_duration = S.Data(countexp).time_input(end);
        total_duration = input_duration;
        data_duration  = input_duration;

        exps.exp_type{iexp}='fixed';
        exps.n_obs{iexp}=1;                                        % Number of observed quantities per experiment
        exps.obs_names{iexp}=char('Fluorescence');                 % Name of the observed quantities per experiment
        exps.obs{iexp}=char('Fluorescence=gal1_fluo');             % Observation function
        exps.t_f{iexp}=total_duration;                             % Experiments duration
        exps.n_s{iexp}=data_duration/sampling_interval;          % Number of sampling times
        exps.t_s{iexp}= linspace(0,total_duration,length(S.Data(countexp).output));  % Sampling times, by default equidistant
        exps.u_interp{iexp}='step';

        t_con = [0 find(diff(S.Data(countexp).input' == 1)) total_duration];
        exps.t_con{iexp}   = t_con;       % input value change points
        exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
        if rem(length(t_con),2) == 0
            exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2)) 2];           % input values
        else
            exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2))];
        end

        exps.data_type      = 'real';    
        exps.noise_type     = 'homo_var';
        exps.exp_data{iexp} = S.Data(countexp).output;

        exps.error_data{iexp} = S.Data(countexp).output_std;

        exps.exp_y0{iexp} = y0;

        exps.n_exp = iexp;
        iexp = iexp + 1;
    end


    best_global_theta = global_theta_guess;
    param_including_vector = [false,false,false,true,true,true,true,true];

    % Compile the model
    clear inputs;
    inputs.model = model;
    inputs.pathd.results_folder = results_folder;
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = 'initial_setup';
    AMIGO_Prep(inputs);

    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;

    inputs.pathd.results_folder = results_folder;
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-',int2str(1));

    % GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERMENTS)
    inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
    inputs.PEsol.global_theta_guess=transpose(best_global_theta(param_including_vector));
    inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the paramters
    inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters

    % COST FUNCTION RELATED DATA
    inputs.PEsol.PEcost_type='llk';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
    inputs.PEsol.llk_type='homo_var';                     % [] To be defined for llk function, 'homo' | 'homo_var' | 'hetero'

    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';
    inputs.ivpsol.senssolver='cvodes';
    inputs.ivpsol.rtol=1.0D-8;
    inputs.ivpsol.atol=1.0D-8;

    % OPTIMIZATION
    inputs.nlpsol.nlpsolver='eSS';
    inputs.nlpsol.eSS.maxeval = 200000;
    inputs.nlpsol.eSS.maxtime = 3000;
    inputs.nlpsol.eSS.log_var = [ 1 3 4 5 6 7 8];
    inputs.nlpsol.eSS.local.solver = 'fmincon';  % nl2sol not yet installed on my mac
    inputs.nlpsol.eSS.local.finish = 'fmincon';  % nl2sol not yet installed on my mac
    inputs.rid.conf_ntrials=500;
    
    pe_start = now;
    pe_inputs = inputs;
    results = AMIGO_PE(inputs);
    pe_results = results;
    pe_end = now;
    
    % Save the best theta
    best_global_theta(param_including_vector) = results.fit.thetabest;
    
    % Write results to the output file
    fid = fopen(resultFileName,'a');
    used_par_names = model.par_names(param_including_vector,:);
    
    for j=1:size(used_par_names,1)
        fprintf(fid,'PARAM_FIT %s %f\n', used_par_names(j,:), results.fit.thetabest(j));
        if isfield(results.fit,'rel_conf_interval')
            fprintf(fid,'REL_CONF %s %f\n', used_par_names(j,:), results.fit.rel_conf_interval(j));
        end
        if isfield(results.fit,'residuals')
            fprintf(fid,'RESIDUAL %s %f\n', used_par_names(j,:), results.fit.residuals{1}(j));
        end
        if isfield(results.fit,'rel_residuals')
            fprintf(fid,'REL_RESIDUAL %s %f\n', used_par_names(j,:), results.fit.rel_residuals{1}(j));
        end
    end

    % Time in seconds
    fprintf(fid,'PE_TIME %.1f\n', (pe_end-pe_start)*24*60*60);
    fclose(fid);
    
    save([strcat(epccOutputResultFileNameBase,'-',num2str(epcc_exps)),'.mat'],'pe_results','exps','pe_inputs');
    out = 1;
end



    