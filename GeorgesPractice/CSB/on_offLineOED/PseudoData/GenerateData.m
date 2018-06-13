function [results,rngSeeds]=GenerateData(OEDresults,numTrials)
%generate n copy of in-silico experimetnal data based on the
%given experimental design

results=cell(numTrials,1);
% param_including_vector = [true,true,true,true,true,true,true,true];
%load the model
InduciblePromoter_load_model_optimised;

rng shuffle;
rngSeeds.this = rng;
rngSeeds.this = rngSeeds.this.Seed;
subseeds=round(1e8*rand(numTrials,1));
results_folder = strcat('InduciblePromoter',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = strcat('IndProm');

inputs.model = model;
clear model;
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);
format long g

inputs.exps.n_exp = length(OEDresults);                      % Number of experiments
for iexp=1:inputs.exps.n_exp                              % Specify the type of experiment: 'od' optimally designed
    inputs.exps.n_obs{iexp}=OEDresults{iexp}.oed.n_obs{1};                                      % Number of observables in the experiment
    inputs.exps.obs_names{iexp}=char('Fluorescence');               % Name of the observables in the experiment
    inputs.exps.obs{iexp}=char('Fluorescence = Cit_fluo');          % Observation function
    
    % Fixed parts of the experiment
    inputs.exps.exp_y0{iexp}=OEDresults{iexp}.oed.exp_y0{1};                                % Initial conditions
    inputs.exps.t_f{iexp}=OEDresults{iexp}.oed.t_f{1};                              % Duration of the experiment (minutes)
    inputs.exps.n_s{iexp}=OEDresults{iexp}.oed.n_s{1};                             % Number of sampling times - sample every 5 min
    
    % OED of the input
    inputs.exps.u_interp{iexp}='step';                             % Stimuli definition for experiment: 'stepf' steps of constant duration
    inputs.exps.n_steps{iexp}=length(OEDresults{iexp}.oed.u{1});         % Number of steps in the input
    inputs.exps.t_con{iexp,1}=OEDresults{iexp}.oed.t_con{1};            % Switching times
    inputs.exps.u{iexp}=OEDresults{iexp}.oed.u{1};    % Lower boundary for the input value
    
%     inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
%     inputs.PEsol.global_theta_guess=transpose(global_theta_guess(param_including_vector));
%     inputs.PEsol.global_theta_max=theta_max(param_including_vector);  % Maximum allowed values for the parameters
%     inputs.PEsol.global_theta_min=theta_min(param_including_vector);  % Minimum allowed values for the parameters
%     
    inputs.exps.noise_type='homo_var';           % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default)
    inputs.exps.std_dev{iexp}=0.05;
%     inputs.OEDsol.OEDcost_type='Dopt';
    
end

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'cvodes'(default, C)|'ode15s' (default, MATLAB, sbml)|'ode113'|'ode45'
inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes'(default, C)| 'sensmat'(matlab)|'fdsens2'|'fdsens5'
inputs.ivpsol.rtol=1.0D-8;                            % [] IVP solver integration tolerances
inputs.ivpsol.atol=1.0D-8;

% OPTIMIZATION
%oidDuration=600;
inputs.nlpsol.nlpsolver='eSS';
inputs.nlpsol.eSS.maxeval = 5e4;
inputs.nlpsol.eSS.maxtime = 6e3*5;
inputs.nlpsol.eSS.local.solver = 'fminsearch'; % note that, in order to handle constraints, an SQP approach is required (e.g. fminsearch cannot be used).
inputs.nlpsol.eSS.local.finish = 'fmincon';%fmincon';

inputs.nlpsol.eSS.local.nl2sol.maxiter  =     300;     % max number of iteration
inputs.nlpsol.eSS.local.nl2sol.maxfeval =     500;     % max number of function evaluation
inputs.nlpsol.eSS.log_var=1:inputs.exps.n_steps{iexp};
%inputs.plotd.plotlevel='noplot';

inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = strcat('Sim-',int2str(i));

inputs.plotd.plotlevel='full';
sim_results = AMIGO_SObs(inputs);
% use parfor if the parallel pool has been created.
if (isempty(gcp('nocreate')))
    warning('off');
    for epcc_exps=1:numTrials
        rng(subseeds(epcc_exps));
        results{epcc_exps}= AMIGO_SData(inputs);
    end
else
    pctRunOnAll warning('off', 'all');
    parfor epcc_exps=1:numTrials
        rng(subseeds(epcc_exps));
        results{epcc_exps}= AMIGO_SData(inputs);
    end
end

rngSeeds.subseeds=subseeds;
save(['PredictionResults',datestr(now,'yyyy-mm-dd-HHMMSS'),'.mat'],'results','rngSeeds');
end