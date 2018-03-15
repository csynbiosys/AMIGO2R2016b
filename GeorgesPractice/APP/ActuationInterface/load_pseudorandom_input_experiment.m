function [exps] = load_pseudorandom_input_experiment(number_of_replicates_per_input_class,model)
% This function loads the experimental setup necessary to apply a
% pseudorandom
% input to the stelling model.

% Load U values from 5 minute sampling
load('U_values_pseudoRandom_5_minute_sampling')

% Calculate Initial values of the variables in the model using a fixed initial IPTGext value of 0.
y0_init= get_steady_state_from_simulation(model);

% running three experiments with 3 different switching times
switching_time_options=60.*[150,500,500];%60.*[60, 75, 100, 120, 125, 150, 200, 250, 300, 375, 500, 600, 750, 1000];

% IPTGext ranges, low = 0 to 10 medium = 10 - 100 and high = 100-1000
range_setter=[10, 90, 900];

for iexp=1:number_of_replicates_per_input_class
     
    % total duration of the simulation in seconds
    t_d=3000*60;
    
    % switching time
    switching_time=switching_time_options(iexp);%(randi([1,4],1)); %randi([60*60,(t_d/3)],1);                        % 250 minutes in seconds
         
  
    % Setting up input related parameters
    
    exps.exp_type{iexp} = 'fixed';
    exps.u_interp{iexp} = 'step';                               %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
    exps.t_f{iexp}      = t_d;
    exps.t_con{iexp}    = (0:switching_time:t_d);                       % Input swithching times: Initial and final time
    exps.n_s{iexp}      = length((0:15*60:t_d));                                % Number of sampling times
    exps.exp_y0{iexp}   = y0_init;                                       %initial values of all states in the model
    exps.n_steps{iexp}  = length((0:switching_time:t_d))-1;
    exps.u{iexp}(1,:)   = U{1,iexp};%range_setter(iexp).*rand(1,length(0:switching_time:t_d));
    exps.t_s{iexp}      = (0:15*60:t_d);                                % Sampling times

    
    %% Observable details
    
    % number of observables
    exps.n_obs{iexp}=1;                             
    
    % names of observables
    exps.obs_names{iexp}=char('Citrine_molec');
    
    % Observables definition
    exps.obs{iexp}=char('Citrine_molec=Cit');
                        
   
end

