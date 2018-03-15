for iexp=1:inputs.exps.n_exp
    % number of observables
    inputs.exps.n_obs{iexp}=1;                             
    
    % names of observables
    inputs.exps.obs_names{iexp}=char('Citrine_molec');
    
    % Observables definition
    inputs.exps.obs{iexp}=char('Citrine_molec=Cit');
    
    inputs.exps.u_interp{iexp} = 'step';                % OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
    inputs.exps.t_f{iexp}      = duration;              % Duration
    inputs.exps.exp_y0{iexp}   = y0;                    % initial values of all states in the model
    
    tempt_con=0:switching_interval:duration;
    inputs.exps.n_steps{iexp}  = length(tempt_con)-1;
    inputs.exps.t_con{iexp}    = tempt_con;             % Input swithching times: Initial and final time
    inputs.exps.u{iexp}        = U{iexp};               % U{iexp} stores the input for each step, with the same size as tempt_con
    
    tempt_s=0:sampling_interval:duration;
    inputs.exps.n_s{iexp}      = length(tempt_s);       % Number of sampling times
    inputs.exps.t_s{iexp}      = tempt_s;               % Sampling times
end