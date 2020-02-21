% Parameter estimation based on sampled data acquired before
% Author: Zhaozheng Hou (George)

load('M3DrandomStep2.mat','inputs');
U=inputs.exps.u;
clear inputs;

%======================
% PATHS RELATED DATA
%======================
inputs.pathd.results_folder=strcat('MIP_model_PE',datestr(now,'yyyy-mm-dd-HHMMSS'));         % Folder to keep results (in Results) for a given problem
inputs.pathd.short_name='MIPPE';                      % To identify figures and reports for a given problem
inputs.pathd.runident=strcat('MIP',int2str(10));                         % [] Identifier required in order not to overwrite previous results


%============================
% MODEL RELATED DATA
%============================
MIP_with_scaling_factor;
inputs.model = model;
clear model;


%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

% Fixed parts of the experiment
duration = 3000;     % Duration of the experiment in second
inputs.exps.n_exp=5;%length(data.input);
step=150;
sample=5;
ITPGmax=10;

for iexp=1:inputs.exps.n_exp
    inputs.exps.n_obs{iexp}=1;                                     % Number of observables per experiment
    inputs.exps.obs_names{iexp}=char('Fluorescence');                 % Name of the observables
    inputs.exps.obs{iexp}=char('Fluorescence=Cit_AU');          % Observation function
    inputs.exps.exp_y0{iexp}=M3D_steady_state2(inputs.model.par, 0);
    
    inputs.exps.t_f{iexp}=duration;                % Experiment duration
    
    inputs.exps.t_s{iexp}=0:sample:duration;
    inputs.exps.n_s{iexp}=length(inputs.exps.t_s{iexp});
    inputs.exps.u_interp{iexp} = 'step';
    inputs.exps.n_steps{iexp}=ceil(duration/step);
    inputs.exps.t_con{iexp} = 0:step:duration;
    inputs.exps.std_dev{iexp} = 0.05;
end

inputs.exps.u=U;
clear U;


%==================================
% EXPERIMENTAL DATA RELATED INFO
%==================================
inputs.exps.data_type = 'real';
inputs.exps.noise_type = 'homo_var';


load('M3DrandomStep2.mat','results');
inputs.exps.exp_data=results.sim.exp_data;
inputs.exps.error_data=results.sim.error_data;
clear results;


% ====================================
% Initial guesses for parameter values
% ====================================
inputs.PEsol.id_global_theta='all';                         % 'all'|User selected
inputs.PEsol.global_theta_max=[0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217,1000];
inputs.PEsol.global_theta_min=[3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012,10];
inputs.PEsol.global_theta_guess=inputs.model.par;


%    This may be modified from command line. 'run1'(default)

AMIGO_Prep(inputs)      % Calls the task for pre-processing

%====================================
% ANALYTICAL COMPUTATION RELATED DATA
%====================================
inputs.model.AMIGOsensrhs = 1;      % compute the right hand side of the sensitivity eqs analytically
inputs.exps.NLObs = 1;           % compute the Jacobian of the nonlinear observation function.


%==================================
% COST FUNCTION RELATED DATA
%==================================

inputs.PEsol.PEcost_type    = 'lsq';                     % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'userPEcost'
inputs.PEsol.lsq_type       = 'Q_expmax';
inputs.PEsol.llk_type       = 'homo_var';


%========================
% SIMULATION RELATED DATA
%========================

inputs.ivpsol.ivpsolver='cvodes';                     % IVP solver
inputs.ivpsol.senssolver='cvodes';                    % Sensitivities solver
inputs.ivpsol.rtol=1.0e-8;                            % IVP solver integration tolerances
inputs.ivpsol.atol=1.0e-8;


%==================================
% NUMERICAL METHODS RELATED DATA
%==================================

inputs.plotd.plotlevel = 'full';
inputs.nlpsol.nlpsolver = 'eSS';
inputs.nlpsol.eSS.local.solver = 'lsqnonlin'; %'nl2sol';
inputs.nlpsol.eSS.local.finish = 'lsqnonlin'; %'nl2sol';
inputs.nlpsol.eSS.maxeval = 20000;
inputs.nlpsol.eSS.maxtime = 3000;
inputs.rid.conf_ntrials = 500;

% Run parameter estimation
AMIGO_Prep(inputs);
AMIGO_PE(inputs);