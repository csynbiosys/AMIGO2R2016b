function [exps] = load_ramp_down_experiment(number_of_replicates_per_input_class,model)
% This function loads the experimental setup necessary to apply a ramp
% input to the stelling model.

% Based on experimental data described in Stelling paper, the bounds
% for IPTGext values to be picked from are
lower_bound=0; 
upper_bound=1000;

% Calculate Initial values of the variables in the model
% y0_init=Stelling_model_steady_state(model.par,IPTGext_max); % using 0 here as initial IPTGext value has been fixed to 0.
y0_init= get_steady_state_from_simulation(model,lower_bound);

for iexp=1:number_of_replicates_per_input_class

    % Shuffle the seed stream for rand
    rng shuffle
      
    % Randomly choose the maximum IPTGext value to be used in the experiment
    IPTGext_max=(lower_bound+(upper_bound-lower_bound)).*rand(1,1); % 130.630906886299; 
    
    % switching time
    switching_time=250*60;                        % 50 minutes in seconds
       
    % number of steps
    num_steps=(3000*60)/switching_time;
    
    % Input step size
    ramp_down_step_size = -IPTGext_max/num_steps;
    
    % input IPTGext to the system with ramp up and ramp down
    IPTGext_values=[IPTGext_max:ramp_down_step_size:0];
     
    % Setting up input related parameters
    
    exps.exp_type{iexp} = 'fixed';
    exps.u_interp{iexp} = 'step';                               %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
    exps.t_f{iexp}      = 3000*60;
    exps.t_con{iexp}    = (0:switching_time:exps.t_f{iexp});                       % Input swithching times: Initial and final time
    exps.t_s{iexp}      = (0:switching_time:exps.t_f{iexp});                                   % sampling time is 5 minutes (5X60=300 seconds)
    exps.n_s{iexp}      = length(0:switching_time:exps.t_f{iexp});                                % Number of sampling times
    exps.exp_y0{iexp}   = y0_init;                                       %initial values of all states in the model
    exps.n_steps{iexp}  = num_steps;
    exps.u{iexp}        = IPTGext_values;                                                   % Values of the inputs
   
    exps.u_min{iexp}    = 0;    
    exps.u_max{iexp}    = IPTGext_max;         % Bounds for the stimuli in the current experiment

    
    %% Observable details
    
    % number of observables
    exps.n_obs{iexp}=2;                             
    
    % names of observables
    exps.obs_names{iexp}=char('Citrine_molec','Citrine_AU');
    
    % Observables definition
    exps.obs{iexp}=char('Citrine_molec=Cit','Citrine_AU=Cit_AU');
                        
    % % Defining experimental noise 
  
    % Load standard deviations calculated 
    inputs.exps.noise_type = 'hetero';
    inputs.exps.error_data{1} = 0.1* [
		98.7655  0.405133  0.0  0.143161  0.379067 
		93.6304  10.1338  3.28087  0.796575  0.836232
		79.8872  14.7635  5.90562  -0.447055  6.26825
		65.9462  37.7563  5.93682  0.31603  8.22038
		72.8602  36.1093  5.77506  0.717804  6.05675
		39.5912  55.4115  5.64632  1.15495  10.1966
		19.2677  39.8579  5.35577  2.53723  18.5619
		10.70984  53.0364  4.70818  2.77677  23.4239
		9.27474  62.2922  4.64648  3.478  22.7581
		];

    
end

end

