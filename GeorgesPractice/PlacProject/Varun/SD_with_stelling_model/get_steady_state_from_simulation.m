function [y0_all] = get_steady_state_from_simulation(model)
% This function calculates the steady state values for variables in the
% stelling model and requires model parameters and Input values. 


% Calculate Initial values of the variables in the model
y0_init_ss       =   Stelling_model_steady_state(model.par,0); % Stelling_model_steady_state(model.par,IPTGext_max); % using 0 here as initial IPTGext value has been fixed to 0.


% Setting up input related parameters
exps.exp_type{1} = 'fixed';
exps.u_interp{1} = 'sustained';                               %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
exps.t_con{1}    = [0 24*3600];                       % Input swithching times: Initial and final time
exps.t_f{1}      = 24*3600;
exps.exp_y0{1}   = y0_init_ss;                                       %initial values of all states in the model
exps.u{1}        = 0;                                                   % Values of the inputs
exps.n_exp       = 1;

%% Folder where results will be stored
ss.pathd.results_folder     = 'Initial_value_calculation';         % Folder to keep results (in Results) for a given problem          
ss.pathd.short_name         = 'stelling_y0Calc_Data';                      % To identify figures and reports for a given problem   
ss.pathd.runident           = strcat('y0_Data_stelling_',int2str(10));      % [] Identifier required in order not to overwrite previous results


% NUMERICAL METHODS RELATED DATA
ss.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'radau5'(default, fortran)|'rkf45'|'lsodes'|
ss.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes' (C)
ss.ivpsol.rtol=1.0e-7;                            % [] IVP solver integration tolerances
ss.ivpsol.atol=1.0e-7; 


%% Observable details

% number of observables
exps.n_obs{1}=2;                             

% names of observables
exps.obs_names{1}=char('Citrine_molec','Citrine_AU');

% Observables definition
exps.obs{1}=char('Citrine_molec=Cit','Citrine_AU=Cit_AU');

% % % Adding noise to simulated data 
% % % Definining experimental noise 
exps.data_type ='pseudo_pos';                   % Type of data: 'pseudo'|'pseudo_pos'|'real'             
exps.noise_type ='homo_var';                % the noise is constant for each experiment. 
exps.std_dev{1}(1,:)= ones(1,2)*0.1;             % 10% noise

%setup model for simulation
ss.model=model;
ss.exps=exps;

% prevent display of plots when running the script. 
ss.plotd.plotlevel='full';                % can also take values max,medium,min,noplot
                                               
%% Pre Process Inputs
AMIGO_Prep(ss)    

%% Generate pseudo-experimental data with noise
Output=AMIGO_SData(ss);

% Initial values of all variables in the system, derived from a simulation
% run for 24 hours

y0_all=Output.sim.states{1,1}(end,:);

end

