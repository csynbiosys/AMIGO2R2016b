clear model exps sim inputs data;
load('M3DrandomStep2.mat','inputs');
U=inputs.exps.u;
clear inputs;

inputs.pathd.results_folder = strcat('MIP_rep',datestr(now,'yyyy-mm-dd-HHMMSS'));
inputs.pathd.short_name     = 'MIP';

% Read the model into the model variable
%M3D_load_model;
MIP_with_scaling_factor;

% Compile the model
inputs.model = model;
clear model;
inputs.pathd.runident       = 'initial_setup';

% Fixed parts of the experiment
duration = 3000;     % Duration of the experiment in second
inputs.exps.n_exp=5;
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
    
    inputs.exps.data_type = 'pseudo';
    inputs.exps.noise_type = 'hetero';
    inputs.exps.std_dev{iexp} = 0.05;
end
inputs.exps.u=U;
clear U;

load('M3DrandomStep2.mat','results');
inputs.exps.exp_data=results.sim.exp_data;
inputs.exps.error_data=results.sim.error_data;
clear results;
% GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)

include=true(1,inputs.model.n_par);
include(end)=false;

inputs.PEsol.id_global_theta='all';                         % 'all'|User selected

inputs.PEsol.global_theta_max=[0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217,1000];
inputs.PEsol.global_theta_min=[3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012,10];
inputs.PEsol.global_theta_guess=inputs.model.par;

%==================================
% COST FUNCTION RELATED DATA
%==================================
inputs.PEsol.PEcost_type='lsq';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
inputs.PEsol.lsq_type='Q_expmax';                  % [] To be defined for llk function, 'homo' | 'homo_var' | 'hetero'

%==================================
% NUMERICAL METHODS RELATED DATA
%==================================
%
% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: C:'cvodes'; MATLAB:'ode15s'(default)|'ode45'|'ode113'


inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes' (C)
%                          'sensmat' (matlab) |
%                          'fdsens2','fdsens5' (finite differences)

inputs.ivpsol.rtol=1.0D-7;                            % [] IVP solver integration tolerances
inputs.ivpsol.atol=1.0D-7;


% [] Number of samples for global sensitivities and global rank within LHS (default: 10000)

% OPTIMIZATION
inputs.nlpsol.nlpsolver='eSS';
inputs.nlpsol.eSS.maxeval = 2000;
inputs.nlpsol.eSS.maxtime = 600;
inputs.nlpsol.eSS.log_var = 1:8;
inputs.nlpsol.eSS.local.solver = 'nl2sol'; %'lsqnonlin';  % nl2sol not yet installed on my mac
inputs.nlpsol.eSS.local.finish = 'nl2sol'; %'lsqnonlin';  %   nl2sol not yet installed on my mac
inputs.rid.conf_ntrials=500;

AMIGO_Prep(inputs);
%inputs.plotd.plotlevel='noplot';
tic;
AMIGO_RIdent(inputs);
time=toc;