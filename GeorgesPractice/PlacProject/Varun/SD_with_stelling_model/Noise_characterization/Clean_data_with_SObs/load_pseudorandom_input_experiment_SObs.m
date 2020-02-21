function [exps] = load_pseudorandom_input_experiment_SObs(number_of_replicates_per_input_class,model)
% This function loads the experimental setup necessary to apply a
% pseudorandom
% input to the stelling model.

% Calculate Initial values of the variables in the model using a fixed initial IPTGext value of 0.
y0_init= get_steady_state_from_simulation(model);

% running three experiments with 3 different switching times
switching_time_options=60.*[60, 75, 100, 120, 125, 150, 200, 250, 300, 375, 500, 600, 750, 1000];

for iexp=1:number_of_replicates_per_input_class
     
    % total duration of the simulation in seconds
    t_d=3000*60;
    
    % switching time
    switching_time=switching_time_options(randi([1,14],1)); %randi([60*60,(t_d/3)],1);                        % 250 minutes in seconds
         
  
    % Setting up input related parameters
    
    exps.exp_type{iexp} = 'fixed';
    exps.u_interp{iexp} = 'step';                               %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
    exps.t_f{iexp}      = t_d;
    exps.t_con{iexp}    = (0:switching_time:t_d);                       % Input swithching times: Initial and final time
    exps.n_s{iexp}      = length((0:5*60:t_d));                                % Number of sampling times
    exps.exp_y0{iexp}   = y0_init;                                       %initial values of all states in the model
    exps.n_steps{iexp}  = length((0:switching_time:t_d))-1;
    exps.u{iexp}(1,:)   = 1000.*rand(1,length(0:switching_time:t_d));
    exps.t_s{iexp}      = (0:5*60:t_d);                                % Sampling times

    
    %% Observable details
    
    % number of observables
    exps.n_obs{iexp}=2;                             
    
    % names of observables
    exps.obs_names{iexp}=char('Citrine_molec','Citrine_AU');
    
    % Observables definition
    exps.obs{iexp}=char('Citrine_molec=Cit','Citrine_AU=Cit_AU');
                        
   
end

