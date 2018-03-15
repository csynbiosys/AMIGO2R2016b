function [exps] = load_ramp_input_experiment(number_of_replicates_per_input_class,model)
% This function loads the experimental setup necessary to apply a ramp
% input to the stelling model.

% Based on experimental data described in Stelling paper, the bounds
% for IPTGext values to be picked from are
% lower_bound=0;              upper_bound=1000;

% Calculate Initial values of the variables in the model using 0 here as initial IPTGext 0.
y0_init= get_steady_state_from_simulation(model);
IPTGext_max_options=[10 100 1000];

for iexp=1:number_of_replicates_per_input_class
     
    % Randomly choose the maximum IPTGext value to be used in the experiment
    IPTGext_max=IPTGext_max_options(iexp); %(lower_bound+(upper_bound-lower_bound))*rand(1,1);
    
    % randomly pick switching times to be either 60 or 120 or 180
    switching_time_options=60.*[60, 150, 250];%[60, 75, 100, 120, 125, 150, 200, 250];%[60*60 120*60 180*60];
    
    % switching time
    switching_time= switching_time_options(iexp); %(randi([1,4],1));                      % 250 minutes in seconds
    
    % duration of simulation 
    t_d=3000*60;
   
    % number of steps to reach half_point of the experiment
    total_num_steps=(t_d/switching_time);

    % Input step size
    ramp_step_size=IPTGext_max/round((total_num_steps/2));
    
    % input IPTGext to the system with ramp up and ramp down
    IPTGext_values=[(0:ramp_step_size:IPTGext_max) flip(0:ramp_step_size:IPTGext_max-ramp_step_size)];
    
    % Setting up input related parameters
    
    exps.exp_type{iexp} = 'fixed';
    exps.u_interp{iexp} = 'step';                               %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
    exps.t_f{iexp}      = t_d;
    exps.t_con{iexp}    = (0:switching_time:t_d);                       % Input swithching times: Initial and final time
    exps.t_s{iexp}      = (0:15*60:t_d);                                   % sampling time is 5 minutes (5X60=300 seconds)
    exps.n_s{iexp}      = length(0:15*60:t_d);                                % Number of sampling times
    exps.exp_y0{iexp}   = y0_init;                                       %initial values of all states in the model
    exps.n_steps{iexp}  = length(0:switching_time:t_d)-1;
    exps.u{iexp}        = IPTGext_values;                                                   % Values of the inputs
    
    exps.u_min{iexp}=0;   
    exps.u_max{iexp}=IPTGext_max;         % Bounds for the stimuli in the current experiment

    
    %% Observable details
    
    % number of observables
    exps.n_obs{iexp}=1;                             
    
    % names of observables
    exps.obs_names{iexp}=char('Citrine_molec');
    
    % Observables definition
    exps.obs{iexp}=char('Citrine_molec=Cit');
                        
    
end

end

