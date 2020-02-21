function [exps] = load_sustained_input_experiment(number_of_replicates_per_input_class)
% This function loads the experimental setup necessary to apply a ramp
% input to the stelling model.

for iexp=1:number_of_replicates_per_input_class

    % Shuffle the seed stream for rand
    rng shuffle
   
    % Based on experimental data described in Stelling paper, the bounds
    % for IPTGext values to be picked from are
    lower_bound=0; upper_bound=1000;
    
    % Randomly choose the maximum IPTGext value to be used in the experiment
    IPTGext_max=1000; %(lower_bound+(upper_bound-lower_bound)).*rand(1,1);
    
    % Calculate Initial values of the variables in the model
    y0_init=[0 1 0 0 0 0 0 0 0 0 0]; % Stelling_model_steady_state(model.par,IPTGext_max); % using 0 here as initial IPTGext value has been fixed to 0.

    
    % Setting up input related parameters
    
    exps.exp_type{iexp} = 'fixed';
    exps.u_interp{iexp} = 'sustained';                               %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
    exps.t_con{iexp}    = [0 3000*60];                       % Input swithching times: Initial and final time
    exps.t_f{iexp}      = 3000*60;
    exps.exp_y0{iexp}   = y0_init;                                       %initial values of all states in the model
    exps.u{iexp}=IPTGext_max;                                                   % Values of the inputs

    
    %% Observable details
    
    % number of observables
    exps.n_obs{iexp}=2;                             
    
    % names of observables
    exps.obs_names{iexp}=char('Citrine_molec','Citrine_AU');
    
    % Observables definition
    exps.obs{iexp}=char('Citrine_molec=Cit','Citrine_AU=Cit_AU');
                        
    % % Adding noise to simulated data 
    % % Definining experimental noise 
    exps.std_dev{iexp}(1,:)= ones(1,2)*0.1;             % 10% noise
    
    exps.data_type ='pseudo_pos';                   % Type of data: 'pseudo'|'pseudo_pos'|'real'             
    exps.noise_type ='homo_var';                % the noise is constant for each experiment. 

    
end

end

