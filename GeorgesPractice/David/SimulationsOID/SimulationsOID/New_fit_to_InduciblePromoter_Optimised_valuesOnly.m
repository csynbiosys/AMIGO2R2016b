%% In silico experiment OID script - runs PE, OED, mock experiment

% This script takes the same inputs that the function
% run_in_silico_experiment_parfor_Optimised plus the number of loops, step
% duration, number of experiments and name of the result file that are also
% present in the function. With this the script will reaise OED to
% calculate the optimal imput profile making use of the AMIGO Toolbox.

function [out]=fit_to_InduciblePromoter_Optimised_valuesOnly(epccOutputResultFileNameBase,epccNumLoops,stepd,epcc_exps,global_theta_guess,globalSolv,localSolv,CR,F,strategy,pf)

% Settings for the output data file
resultFileName = [strcat(epccOutputResultFileNameBase),'.dat'];
rng shuffle;
rngToGetSeed = rng;

fid = fopen(resultFileName,'w');
fprintf(fid,'HEADER DATE %s\n', datestr(datetime()));
fprintf(fid,'HEADER RANDSEED %d\n',rngToGetSeed.Seed);
fclose(fid);

startTime = datenum(now);

% Clear previous variables so it does not interfere
%George% no need for a context as a function
%     clear model;
%     clear exps;
%     clear best_global_theta_log;
%     clear pe_results;
%     clear ode_results;

% Where results will be stored
results_folder = strcat('InduciblePromoter',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = strcat('IndProm',int2str(epcc_exps));

% Read the model into the model variable
InduciblePromoter_load_model;

% We start with no experiments
exps.n_exp=0;

% Defining boundaries for the parameters
global_theta_max = [0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217];
global_theta_min = [3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012];
global_theta_guess = global_theta_guess';

% Specify the parameters to be calibrated.
param_including_vector = [true,true,true,true,true,true,true,true];

% Compile the model
%clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

% Duration of the experiment (3000s)
totalDuration = 50*60;
% Number of loops (1)
numLoops = epccNumLoops;
% Duration of each loop
duration = totalDuration/numLoops;
% Duration of each steep (200 min)
stepDuration = stepd;

%Compute steady state
y0 = InduciblePromoter_steady_state(global_theta_guess,0);
oid_y0 = y0;
best_global_theta = global_theta_guess;

for i=1:numLoops
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Optimal experiment design %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clear inputs;
    inputs.model = model;
    inputs.exps  = exps;
    format long g
    
    % Number of experiments to be designed (1)
    inputs.exps.n_exp = inputs.exps.n_exp + 1;
    % Index of experiment
    iexp = inputs.exps.n_exp;
    % Type of experiment. od = optimaly designed
    inputs.exps.exp_type{iexp}='od';
    % Number  of observables
    inputs.exps.n_obs{iexp}=1;
    % Name of observables
    inputs.exps.obs_names{iexp}=char('Fluorescence');
    % Observables function
    inputs.exps.obs{iexp}=char('Fluorescence = Cit_fluo');
    
    % Initial conditions
    inputs.exps.exp_y0{iexp}=oid_y0;
    % Duration of experiment (3000 min)
    inputs.exps.t_f{iexp}=duration;
    % Number of sampling times (1 every 5 min)
    inputs.exps.n_s{iexp}=duration/5+1;
    
    % OED of the input
    inputs.exps.u_type{iexp}='od';
    % Stimuli is steps with fixed duration
    inputs.exps.u_interp{iexp}='stepf';
    % Number of steps (15)
    inputs.exps.n_steps{iexp}=round(duration/stepDuration);
    % Switching times
    inputs.exps.t_con{iexp}=0:stepDuration:(duration);
    % Minimum value for the input
    inputs.exps.u_min{iexp}=0*ones(1,inputs.exps.n_steps{iexp});
    % Maximum value for the input
    inputs.exps.u_max{iexp}=1000*ones(1,inputs.exps.n_steps{iexp});
    
    % Loading information about the parameters
    inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
    inputs.PEsol.global_theta_guess=transpose(global_theta_guess(param_including_vector));
    inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);
    inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);
    
    % Deffinition of the exerimental noise (homoscedastic)
    inputs.exps.noise_type='homo_var';
    inputs.exps.std_dev{iexp}=[0.05];
    inputs.OEDsol.OEDcost_type='Dopt';
    
    % SIMULATION
    % IVP solver -- 'cvodes'(default, C)|'ode15s'
    % (default, MATLAB, sbml)|'ode113'|'ode45'
    inputs.ivpsol.ivpsolver='cvodes';
    % Sensitivities solver: 'cvodes'(default, C)| 'sensmat'(matlab)|
    % 'fdsens2'|'fdsens5'
    inputs.ivpsol.senssolver='cvodes';
    % IVP solver integration tolerances
    inputs.ivpsol.rtol=1.0D-8;
    inputs.ivpsol.atol=1.0D-8;
    
    % OPTIMIZATION
    
    % If statement to eslect the settings for the Global Optimiser selected
    % If eSS is selected then the next bit of code is considered
    switch (globalSolv)
        case 'eSS'
            % Deffinition of the global solver (eSS)
            inputs.nlpsol.nlpsolver=globalSolv;
            % Maximum number of function evaluations
            inputs.nlpsol.eSS.maxeval = 3e5;
            % Maximum number of CPU time
            inputs.nlpsol.eSS.maxtime = 30e3;
            % Definition of the local solver for the hybridisation
            inputs.nlpsol.eSS.local.solver = localSolv;
            inputs.nlpsol.eSS.local.finish = localSolv;
            % If nl2sol is selected as a local solver the next bit of code is
            % considered
            if mystrcmp(localSolv, 'nl2sol')
                % Maximum number of iterations and function evaluations for
                % nl2sol
                inputs.nlpsol.eSS.local.nl2sol.maxiter  =     500;
                inputs.nlpsol.eSS.local.nl2sol.maxfeval =     500;
            end
            inputs.nlpsol.eSS.log_var=1:inputs.exps.n_steps{iexp};
            % If de is selected then the next bit of code is considered
        case 'de'
            % If a loca solver is selected then hybridisation is performed
            if mystrcmp(localSolv,{'dhc','n12sol','fminsearch','fmincon'})
                hyb = ['hyb_de_',localSolv];
                inputs.nlpsol.nlpsolver=hyb;
            else
                inputs.nlpsol.nlpsolver=globalSolv;
            end
            % Population number size (usually greater than 10*number of
            % decision variables)
            inputs.nlpsol.DE.NP = max([200, 10*(2*inputs.exps.n_steps{iexp}-1)]);
            % Maximum number of iterations (number of funtion evaluations is
            % population size times the number of iterations
            inputs.nlpsol.DE.itermax = round((500*1e3)/inputs.nlpsol.DE.NP);
            % Maximum variance of population
            inputs.nlpsol.DE.cvarmax = 1e-5;
            % DE_Stepsize
            inputs.nlpsol.DE.F = F;
            % Crossover constant
            inputs.nlpsol.DE.CR = CR;
            % Strategy selected.
            % 1 --> DE/best/1/exp
            % 2 --> DE/rand/1/exp
            % 3 --> DE/rand-to-best/1/exp
            % 4 --> DE/best/2/exp
            % 5 --> DE/rand/2/exp
            % 6 --> DE/best/1/bin
            % 7 --> DE/rand/1/bin
            % 8 --> DE/rand-to-best/1/bin
            % 9 --> DE/best/2/bin
            % else DE/rand/2/bin
            inputs.nlpsol.DE.strategy = strategy;
            inputs.nlpsol.DE.refresh=2;
            % If sres is selected then the next bit of code is selected
        case 'sres'
            % If a loca solver is selected then hybridisation is performed
            if mystrcmp(localSolv,{'dhc','n12sol','fminsearch','fmincon'})
                hyb = ['hyb_sres_',localSolv];
                inputs.nlpsol.nlpsolver=hyb;
            else
                inputs.nlpsol.nlpsolver=globalSolv;
            end
            % Population size
            inputs.nlpsol.SRES.NP = max([200, 10*(2*inputs.exps.n_steps{iexp}-1)]);
            % Maximum number of iterations (number of funtion evaluations is
            % population size times the number of iterations
            inputs.nlpsol.SRES.itermax = round((500*1e3)/inputs.nlpsol.SRES.NP);
            % Maximum variance of population
            inputs.nlpsol.SRES.cvarmax = 1e-5;
            % Expected rate of convergence
            inputs.nlpsol.SRES.varphi = 1;
            % Pressure of fitness
            inputs.nlpsol.SRES.pf = pf;
    end
    
    % Specifications for the results
    inputs.plotd.plotlevel='noplot';
    
    inputs.pathd.results_folder = results_folder;
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('oed-',int2str(i));
    
    oed_start = now;
    oed_results{i} = AMIGO_OED(inputs);
    oed_end = now;
    if (numLoops~=1)
        oid_y0 = [oed_results{i}.sim.states(end,:) 0];
    end
    results.plotd.plotlevel = 'noplot';
    
end

%Saving of the results
true_param_values = model.par(param_including_vector);

save([strcat(epccOutputResultFileNameBase),'.mat'], 'oed_results','exps','inputs','true_param_values','best_global_theta','best_global_theta_log');

out= 1;
end

function result=mystrcmp(a,b)
if (iscell(b))
    result=max(cellarray(@(bsub) mystrcmp(a,bsub),b));
elseif (length(a)==length(b))
    result=min(a==b);
else
    result=false;
end
end