function [exps] = load_pulse_input_experiment(number_of_replicates_per_input_class,model)
% This function sets up an experiment with a pulse input. In this, we
% randomly allocate a lower and upper bound for the input (IPTGext). If
% IPTGext_min>IPTGext_max, 

% Calculate Initial values of the variables in the model
% y0_init=Stelling_model_steady_state(model.par,IPTGext_max); % using 0 here as initial IPTGext value has been fixed to 0.
y0_init= get_steady_state_from_simulation(model);


for iexp=1:number_of_replicates_per_input_class

    % Randomly choosing the maximum IPTGext value to be used in the experiment
    IPTGext_min= randi([0 1000],1,1);

    % Randomly choosing the maximum IPTGext value to be used in the experiment
    IPTGext_max= randi([0 1000],1,1);    

    % to avoid choosing same minimum and maximum IPTG values,pick another
    % value
    if (IPTGext_min==IPTGext_max)
       while (IPTGext_max == IPTGext_min)
                % Randomly choosing the maximum IPTGext value to be used in the experiment
                IPTGext_min= randi([0 1000],1,1);

                % Randomly choosing the maximum IPTGext value to be used in the experiment
                IPTGext_max= randi([0 1000],1,1);    
       end 
    end
        
  % Setting up input related parameters   
    exps.exp_type{iexp} = 'fixed';
    exps.t_f{iexp}      = 3000*60;
    exps.n_s{iexp}      = length(0:5*60:exps.t_f{iexp});                                % Number of sampling times
    exps.exp_y0{iexp}   = y0_init;                                       %initial values of all states in the model
    exps.t_s{iexp}      = (0:5*60:exps.t_f{iexp});                  % Sampling every 5 minutes. 
        
    % set if the experiment has to be a pulse-up or pulse-down     
    if(IPTGext_min > IPTGext_max)
        exps.u_interp{iexp} = 'pulse-down';                               %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
        exps.t_con{iexp}    =  sort(60.*[(0:60:3000) (10:60:2990)]);                       % Input swithching times: Initial and final time
        exps.n_pulses{iexp} = 50;
        exps.u_min{iexp}=IPTGext_max;   
        exps.u_max{iexp}=IPTGext_min;         % Bounds for the stimuli in the current experiment

    elseif(IPTGext_min < IPTGext_max)
        exps.u_interp{iexp} = 'pulse-up';                                %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'  
        exps.t_con{iexp}    =  sort(60.*[(0:60:3000) (50:60:2930)]);     % [0 3000 3600 6600 7200 10200 10800 exps.t_f{iexp}];                       % Input swithching times: Initial and final time
        exps.n_pulses{iexp} = 49;
        exps.u_min{iexp}= IPTGext_min;   
        exps.u_max{iexp}= IPTGext_max;         % Bounds for the stimuli in the current experiment

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

