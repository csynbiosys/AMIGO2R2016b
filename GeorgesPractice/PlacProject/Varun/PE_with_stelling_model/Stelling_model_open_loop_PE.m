% Estimate model parameters from experimental data shared by the authors of
% the Stelling paper: doi: 10.1021/acssynbio.6b00013
% Author: Varun Kothamachu

% ==========
% LOAD model 
% ==========

Stelling_open_loop_model
                                                                      
% ====================================
% Initial guesses for parameter values
% ====================================
global_theta_min = [0.001,1e-10,7.75e-5,1e-10,7.75e-5,0.001,0.001,1e-10,7.75e-5,5e-4,1,1,2800,10]; % Lower bound
global_theta_max = [1,1,1,1,1,1,1,0.1,7.75e-5,0.0017,10000,10000,2800,100]; % Upper bound

% global_theta_guess=[random_parameter_picker(0.001,1);random_parameter_picker(1e-10,1);random_parameter_picker(7.75e-5,1);...
%     random_parameter_picker(1e-10,1);random_parameter_picker(7.75e-5,1);random_parameter_picker(0.001,1);random_parameter_picker(0.001,1);...
%     random_parameter_picker(1e-10,0.1);random_parameter_picker(7.75e-5,7.75e-5);random_parameter_picker(5e-4,0.0017);random_parameter_picker(1,10000);...
%     random_parameter_picker(1,10000);random_parameter_picker(2800,2800)];

global_theta_guess=[0.005;2.7e-4;0.0049;2.79e-6;0.012;0.049;1e-10;7.75e-5;5.4e-4;1.5;0.929;54.93;2800;27.18];

y0_all=Stelling_model_steady_state(global_theta_guess,0);

%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

load('StellingData.mat');                                            % Load experimental data from stelling model to refit parameters

exps.n_exp = length(Data.expName);                                   %Number of experiments to test different inputs

 for iexp=1:exps.n_exp   
     exps.exp_type{iexp} = 'fixed'; 
     exps.t_con{iexp}    = Data.t_con{1,iexp};                       % Input swithching times: Initial and final time    
     exps.n_s{iexp}      = Data.n_samples{1,iexp};                               % [] Number of sampling times for each experiment.
     exps.t_s{iexp}      = Data.t_samples{1,iexp};
     exps.t_f{iexp}      = Data.t_con{1,iexp}(end);

 if (iexp<=12)
     exps.u_interp{iexp} = 'sustained';                              %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
     exps.n_steps{iexp}  = 1;
     exps.u{iexp}        = Data.input{1,iexp};

 else
     exps.u_interp{iexp} = 'step';                              %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
     exps.n_steps{iexp}  = length(Data.t_con{1,iexp})-1;
     exps.u{iexp}        = [1000 Data.input{1,iexp}]; 
 end
 
 % Observables
 exps.n_obs{iexp}     = 1;                        % Number of observed quantities per experiment
 exps.obs_names{iexp} = char('Citrine');
 exps.obs{iexp}       = char('Citrine=Cit');

%===================
% EXPERIMENTAL DATA
%===================

exps.data_type           = 'real';    
exps.noise_type          = 'homo';
exps.exp_data{1,iexp}    = Data.exp_data{1,iexp};
exps.std_dev{iexp}       = Data.standard_dev{1,iexp};
exps.exp_y0{iexp}        = y0_all;

 end
 
 
%Listing best fitted parameter values
best_global_theta = global_theta_guess;
index_parameters_being_fit = [true,true,true,true,true,true,true,true,false,true,true,true,false,true];


clear inputs;

% Preparing inputs 
inputs.model = model;
inputs.exps  = exps;

% Unknown values for theta

inputs.PEsol.id_global_theta         =       inputs.model.par_names(index_parameters_being_fit,:);
inputs.PEsol.global_theta_guess      =       best_global_theta(index_parameters_being_fit)';
inputs.PEsol.global_theta_max        =       global_theta_max(index_parameters_being_fit);  % Maximum allowed values for the paramters
inputs.PEsol.global_theta_min        =       global_theta_min(index_parameters_being_fit);  % Minimum allowed values for the parameters

%======================
% PATHS RELATED DATA
%======================
inputs.pathd.results_folder=strcat('stelling_model_PE',datestr(now,'yyyy-mm-dd-HHMMSS'));         % Folder to keep results (in Results) for a given problem          
inputs.pathd.short_name='stellingPE';                      % To identify figures and reports for a given problem   
inputs.pathd.runident=strcat('pe_scaleMolec-',int2str(10));                         % [] Identifier required in order not to overwrite previous results
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
inputs.nlpsol.eSS.local.finish = 'lsqnonlin'; 'nl2sol';
inputs.nlpsol.eSS.maxeval = 20000;
inputs.nlpsol.eSS.maxtime = 3000;
inputs.rid.conf_ntrials = 500;

% Run parameter estimation
AMIGO_PE(inputs);
                        