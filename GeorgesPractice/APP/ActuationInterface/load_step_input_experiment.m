function [exps] = load_step_input_experiment(number_of_replicates_per_input_class,model)
% This function loads the experimental setup necessary to apply a step
% input to the stelling model.


% Calculate Initial values of the variables in the model using a fixed initial IPTGext value of 0.
y0_init= get_steady_state_from_simulation(model);

% Based on experimental data described in Stelling paper, the bounds
% for IPTGext values are to be picked from the experimental data points
%experimental_IPTGext_values=[0 5 10 1000];
IPTGext_min_options=[0, 5, 10];
IPTGext_max_options=[5, 10, 1000];


% running three experiments with 3 different switching times
% switching_time_options=60.*[60, 75, 100, 120, 125, 150, 200, 250, 300, 375, 500, 600, 750, 1000];
switching_time_options=60.*[250, 500 500]; %60.*[100, 250,500, 1000];

for iexp=1:number_of_replicates_per_input_class
    
    
    % Randomly choose the maximum IPTGext value to be used in the experiment
    IPTGext_max= IPTGext_max_options(iexp); %experimental_IPTGext_values(randi([1,5],1));
    IPTGext_min= IPTGext_min_options(iexp); %experimental_IPTGext_values(randi([1,5],1));
    
       % to avoid choosing same minimum and maximum IPTG values,pick another
%     % value
%     if (IPTGext_min==IPTGext_max)
%        while (IPTGext_max == IPTGext_min)
%                 IPTGext_max= experimental_IPTGext_values(randi([1,4],1));
%                 IPTGext_min= experimental_IPTGext_values(randi([1,4],1));
%        end 
%     end
%  
    
    % total duration of the simulation in seconds
    t_d=3000*60;
  
    % switching time
    switching_time=switching_time_options(iexp);%(randi([1,4],1)); %randi([60*60,(t_d/3)],1);                        % 250 minutes in seconds
         
      
    % Setting up input related parameters
    
    exps.exp_type{iexp} = 'fixed';
    exps.u_interp{iexp} = 'step';                               %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
    exps.t_f{iexp}      = t_d;
    exps.t_con{iexp}    = (0:switching_time:t_d);                       % Input swithching times: Initial and final time
    exps.t_s{iexp}      = (0:15*60:t_d); %(IPTGext_min:switching_time:exps.t_f{iexp});                                   % sampling time is 5 minutes (5X60=300 seconds)
    exps.n_s{iexp}      = length((0:15*60:t_d));                                % Number of sampling times
    exps.exp_y0{iexp}   = y0_init;                                       %initial values of all states in the model
    exps.n_steps{iexp}  = length((0:switching_time:t_d))-1;
    exps.u{iexp}(1,:)   = repmat([IPTGext_min, IPTGext_max],1,length(0:switching_time:t_d));
    
    if (IPTGext_min > IPTGext_max)
        exps.u_min{iexp}=IPTGext_max;   
        exps.u_max{iexp}=IPTGext_min;         % Bounds for the stimuli in the current experiment
    else
        exps.u_min{iexp}=IPTGext_min;   
        exps.u_max{iexp}=IPTGext_max;         % Bounds for the stimuli in the current experiment
    end
      
    %% Observable details
    
    % number of observables
    exps.n_obs{iexp}=1;                             
    
    % names of observables
    exps.obs_names{iexp}=char('Citrine_molec');
    
    % Observables definition
    exps.obs{iexp}=char('Citrine_molec=Cit');


end


end

