function res = OEDlhs(numExperiments)

theta_min = [3.88e-05,0.388,1,4,0.0277,0.1,0.0023,0.0077,1e-03];
theta_max = [0.3,0.495,3,7,0.23,1,0.03,0.0231,0.1];

n_log_theta_min=log(theta_min);
n_log_theta_maxmin= repmat(log(theta_max)-n_log_theta_min,numExperiments,1);
n_log_theta_min=repmat(n_log_theta_min,numExperiments,1);

M=exp(n_log_theta_min+...
    n_log_theta_maxmin.*lhsdesign(numExperiments,length(theta_min)));

ParFull = M; % in this case I am fitting all the values

cost=cells(numExperiments,1);
designs=cost;
conv_curve_time=cost;
conv_curve_cost=cost;

if (isempty(gcp('nocreate')))
    for epcc_exps=1:numExperiments
        loopContent;
    end
else
    parfor epcc_exps=1:numExperiments
        loopContent;
    end
end
    stepd = 200;
    epccNumLoops = numLoops;
        try
            global_theta_guess = ParFull(epcc_exps,:);
            epccOutputResultFileNameBase = [resultBase,'-','Optsteps-',num2str(numLoops),'_loops-',num2str(epcc_exps)];
            [out] = fit_to_InduciblePromoter_Optimised(epccOutputResultFileNameBase,epcc_exps,global_theta_guess); 
        catch err
            %open file
            errorFile = [resultBase,'-','Optsteps-',num2str(numLoops),'_loops-',num2str(epcc_exps),'.errorLog'];
            fid = fopen(errorFile,'a+');
            fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
            % close file
            fclose(fid);
        end
end
function loopContent
rng shuffle;
rngToGetSeed = rng;

% Write the header information of the .dat file in which the results of
% PE (estimates, relative confidence intervals, residuals, relative
% residuals and the time required for computation) will be stored.
fid = fopen(resultFileName,'w');
fprintf(fid,'HEADER DATE %s\n', datestr(datetime()));
fprintf(fid,'HEADER RANDSEED %d\n',rngToGetSeed.Seed);
fclose(fid);

%startTime = datenum(now);

clear model;
clear exps;
clear best_global_theta_log;
clear pe_results;
clear ode_results;

results_folder = strcat('InduciblePromoter',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = strcat('IndProm',int2str(epcc_exps));

% Read the model into the model variable
InduciblePromoter_load_model_optimised;

% We start with no experiments
exps.n_exp=0;


% Defining boundaries for the parameters (taken from scientific literature)
global_theta_max = [0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217];       % Maximum allowed values for the parameters
global_theta_min = [3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012];    % Minimum allowed values for the parameters

% Latest Gusses
% global_theta_min = [3.88e-05,0.388,1,4,0.0277,0.1,0.0023,0.0077,1e-03];
% global_theta_max = [0.3,0.495,3,7,0.23,1,0.03,0.0231,0.1];

global_theta_guess = global_theta_guess';

% Specify the parameters to be calibrated.
% The selection depends on the identifiability analysis preceding the
% comparison: parameters that are not identifiable will fixed to the best
% estimate available for them.
% In our case, all parameters are identifiable.
param_including_vector = [true,true,true,true,true,true,true,true];

%% OED
% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

% Fixed parts of the experiment
totalDuration = 50*60;               % Duration in of the experiment (minutes)
numLoops = epccNumLoops;             % Number of OID loops
duration = totalDuration/numLoops;   % Duration of each loop (in our case the number is 1)
stepDuration = stepd;                % Duration of each step (minutes). Note that the value passed to the function exceeds the response time, quantified in 80 mins for MPLac,r


for i=1:numLoops
    
    %Compute the steady state considering the initial theta guess and 0 IPTG
    y0 = InduciblePromoter_steady_state(global_theta_guess,0);
    
    
    % Need to determine the starting state of the next part of the
    % experiment we wish to design the input for. If there are multiple loops,
    % We get this state by simulating the model using the current best theta
    % for the duration for which we have designed input.
    if exps.n_exp == 0
        oid_y0 = [y0 0];                        % Add the state variable required for the constraint
        best_global_theta = global_theta_guess;
    else
        % Simulate the experiment without noise to find end state
        clear inputs;
        inputs.model = model;
        inputs.model.par = best_global_theta;
        inputs.exps = exps;
        
        inputs.plotd.plotlevel='noplot';
        inputs.pathd.results_folder = results_folder;
        inputs.pathd.short_name     = short_name;
        inputs.pathd.runident       = strcat('sim-',int2str(i));
        
        sim = AMIGO_SData(inputs);
        
        oid_y0 = [sim.sim.states{1}(end,:) 0];
        
    end
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Optimal experiment design
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;
    format long g
    
    
    % Add new experiment that is to be designed
    inputs.exps.n_exp = inputs.exps.n_exp + 1;                      % Number of experiments
    iexp = inputs.exps.n_exp;                                       % Index of the experiment
    inputs.exps.exp_type{iexp}='od';                                % Specify the type of experiment: 'od' optimally designed
    inputs.exps.n_obs{iexp}=1;                                      % Number of observables in the experiment
    inputs.exps.obs_names{iexp}=char('Fluorescence');               % Name of the observables in the experiment
    inputs.exps.obs{iexp}=char('Fluorescence = Cit_fluo');          % Observation function
    
    
    % Fixed parts of the experiment
    inputs.exps.exp_y0{iexp}=oid_y0;                                % Initial conditions
    inputs.exps.t_f{iexp}=duration;                                 % Duration of the experiment (minutes)
    inputs.exps.n_s{iexp}=duration/5+1;                             % Number of sampling times - sample every 5 min
    
    % OED of the input
    inputs.exps.u_type{iexp}='od';
    inputs.exps.u_interp{iexp}='stepf';                             % Stimuli definition for experiment: 'stepf' steps of constant duration
    inputs.exps.n_steps{iexp}=round(duration/stepDuration);         % Number of steps in the input
    inputs.exps.t_con{iexp}=0:stepDuration:(i*duration);            % Switching times
    inputs.exps.u_min{iexp}=0*ones(1,inputs.exps.n_steps{iexp});    % Lower boundary for the input value
    inputs.exps.u_max{iexp}=1000*ones(1,inputs.exps.n_steps{iexp}); % Upper boundary for the input value
    
    inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
    inputs.PEsol.global_theta_guess=transpose(global_theta_guess(param_including_vector));
    inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the parameters
    inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters
    
    
    inputs.exps.noise_type='homo_var';           % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default)
    inputs.exps.std_dev{iexp}=[0.05];
    inputs.OEDsol.OEDcost_type='Dopt';
    
    
    % final time constraint
    for iexp=1:inputs.exps.n_exp
        inputs.exps.n_const_ineq_tf{iexp}=1;
        inputs.exps.const_ineq_tf{iexp}=char('cviol');     % c<=0
    end
    inputs.exps.ineq_const_max_viol=1.0e-5;
    
    
    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'cvodes'(default, C)|'ode15s' (default, MATLAB, sbml)|'ode113'|'ode45'
    inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes'(default, C)| 'sensmat'(matlab)|'fdsens2'|'fdsens5'
    inputs.ivpsol.rtol=1.0D-8;                            % [] IVP solver integration tolerances
    inputs.ivpsol.atol=1.0D-8;
    
    % OPTIMIZATION
    %inputs.nlpsol.global_solver='de';
    inputs.nlpsol.nlpsolver='de';                                           % Differential evolution
    inputs.nlpsol.DE.NP = max([100, 10*(2*inputs.exps.n_steps{iexp}-1)]);       % NP is the number of population members, usually greater than 10*number of decision variables
    inputs.nlpsol.DE.itermax = round((100e3)/inputs.nlpsol.DE.NP);        % maximum number of iterations ('generations')
        %inputs.nlpsol.DE.itermax = round((300*1e3)/inputs.nlpsol.DE.NP);        % maximum number of iterations ('generations')
    inputs.nlpsol.DE.cvarmax = 1e-5;                                        % cvarmax: maximum variance for a population at convergence
    inputs.nlpsol.DE.F = 0.5;                                               % F: DE-stepsize [0,2]
    inputs.nlpsol.DE.CR = 0.3;                                              % CR: crossover probability constant [0,1]
    inputs.nlpsol.DE.strategy =6;
    % strategy
    %                1 --> DE/best/1/exp
    %                2 --> DE/rand/1/exp
    %                3 --> DE/rand-to-best/1/exp
    %                4 --> DE/best/2/exp
    %                5 --> DE/rand/2/exp
    %                6 --> DE/best/1/bin
    %                7 --> DE/rand/1/bin
    %                8 --> DE/rand-to-best/1/bin
    %                9 --> DE/best/2/bin
    
    %               else DE/rand/2/bin
    inputs.nlpsol.DE.refresh=2;  % intermediate output will be produced after "refresh" iterations. No intermediate output will be produced if refresh is < 1
    inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder = results_folder;
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('oed-',int2str(i));
    
    
    oed_start = now;
    inputs.plotd.plotlevel='medium';
    results = AMIGO_OED(inputs);
    oed_results{i} = results;
    oed_end = now;
    
    results.plotd.plotlevel = 'medium';
    
    %% Simulate
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Create a new experiment to simulate with the merged input
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear newExps;
    newExps.n_exp = 1;
    newExps.n_obs{1}=1;
    newExps.obs_names{1}=char('Fluorescence');
    newExps.obs{1}= char('Fluorescence = Cit_fluo');
    newExps.exp_y0{1}= [y0 0];
    
    newExps.t_f{1}=i*duration;
    newExps.n_s{1}=(i*duration)/5 + 1;
    newExps.t_s{1}=0:5:(i*duration);
    
    newExps.u_interp{1}='step';
    newExps.n_steps{1}=(i*duration)/stepDuration;
    newExps.t_con{1}=0:stepDuration:(i*duration);
    
    % Merge the input signal
    
    if exps.n_exp == 0
        newExps.u{1}=results.oed.u{results.oed.n_exp};
    else
        newExps.u{1}=[exps.u{1} results.oed.u{results.oed.n_exp}];
    end
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Mock an experiment
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear inputs;
    inputs.model = model;
    inputs.exps = newExps;
    
    inputs.exps.data_type='pseudo';
    inputs.exps.noise_type='homo_var';
    inputs.exps.std_dev{1}=[0.05];
    
    inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder = results_folder;
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('sim-',int2str(epcc_exps),'-',int2str(i));
    
    %sim = AMIGO_SData(inputs);
    
    %% PE check
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Now we need to add this experiment output to newExps and copy
    % to exps
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    newExps.exp_type{1}='fixed';
    if exps.n_exp == 0
        newExps.exp_data{1}   = sim.sim.exp_data{1};
        newExps.error_data{1} = sim.sim.error_data{1};
    else
        newExps.exp_data{1}   = [ exps.exp_data{1}   ; sim.sim.exp_data{1}((size(exps.exp_data{1},1)+1):end)];
        newExps.error_data{1} = [ exps.error_data{1} ; sim.sim.error_data{1}((size(exps.exp_data{1},1)+1):end)];
    end
    
    newExps.data_type='real';                                     % Type of data: 'pseudo'|'pseudo_pos'|'real'
    newExps.noise_type='homo_var';                                % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default)
    
    exps = newExps;
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Parameter estimation
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;
    
    inputs.pathd.results_folder = results_folder;
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('pe-',int2str(epcc_exps),'-',int2str(i));
    
    % GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)
    inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
    inputs.PEsol.global_theta_guess=transpose(global_theta_guess(param_including_vector));
    inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the paramters
    inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters
    
    % COST FUNCTION RELATED DATA
    inputs.PEsol.PEcost_type='lsq';        % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
    inputs.PEsol.lsq_type='Q_expmax';
    
    % SIMULATION
    inputs.ivpsol.ivpsolver='cvodes';
    inputs.ivpsol.senssolver='cvodes';
    inputs.ivpsol.rtol=1.0D-7;
    inputs.ivpsol.atol=1.0D-7;
    
    
    % OPTIMIZATION
    inputs.nlpsol.nlpsolver='eSS';
    inputs.nlpsol.eSS.maxeval = 200000;
    inputs.nlpsol.eSS.maxtime = 5000;
    inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
    inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
    inputs.rid.conf_ntrials=500;
    
    inputs.plotd.plotlevel='medium';
    
    pe_start = now;
    %results = AMIGO_PE(inputs);
    pe_inputs{i} = inputs;
    pe_results{i} = results;
    pe_end= now;
    
    results.plotd.plotlevel = 'noplot';
    
    %Save the best theta
    best_global_theta(param_including_vector)=results.fit.thetabest;
    
    %Write some results to the output file
    fid = fopen(resultFileName,'a');
    used_par_names = model.par_names(param_including_vector,:);
    
    for j=1:size(used_par_names,1)
        fprintf(fid,'ITERATION %d PARAM_FIT %s %f\n', i, used_par_names(j,:), results.fit.thetabest(j));
        if isfield(results.fit,'rel_conf_interval')
            fprintf(fid,'ITERATION %d REL_CONF %s %f\n',  i, used_par_names(j,:), results.fit.rel_conf_interval(j));
        end
        if isfield(results.fit,'residuals')
            fprintf(fid,'ITERATION %d RESIDUAL %s %f\n', i, used_par_names(j,:), results.fit.residuals{1}(j));
        end
        if isfield(results.fit,'rel_residuals')
            fprintf(fid,'ITERATION %d REL_RESIDUAL %s %f\n', i, used_par_names(j,:), results.fit.rel_residuals{1}(j));
        end
    end
    %Time in seconds
    fprintf(fid,'ITERATION %d OED_TIME %.1f\n', i, (oed_end-oed_start)*24*60*60);
    fprintf(fid,'ITERATION %d PE_TIME %.1f\n',  i, (pe_end-pe_start)*24*60*60);
    fclose(fid);
    
    best_global_theta_log{i}=best_global_theta;
    
end

true_param_values = model.par(param_including_vector);
save([strcat(epccOutputResultFileNameBase),'.mat'], 'pe_inputs','pe_results','oed_results','exps','inputs','true_param_values','best_global_theta_log');

out= 1;
end
end