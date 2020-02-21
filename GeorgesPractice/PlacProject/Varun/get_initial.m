function [y0_init] = get_initial_values(model,IPTGext)
% This function calculates the initial levels of all the state variables in
% the stelling model. It does this by running a simulation for 24 hours
% with a sustained input IPTGext =0.


y0_input.exps.n_exp = 1;     %Number of experiments to test different inputs
IPTGextValues_input=IPTGext;

for iexp=1:y0_input.exps.n_exp
    
    y0_input.exps.exp_y0{iexp}= Stelling_model_steady_state(model.par,IPTGext);  %Initial conditions for each experiment
    y0_input.exps.t_f{iexp}=24*60*60;                            %Experiment is run for a 24 hour duration
    
    y0_input.exps.u_interp{iexp}='sustained';               %Stimuli definition for experiment 1:
    
    y0_input.exps.t_con{iexp}=[0 24*60*60];                 % Input swithching times: Initial and final time
    y0_input.exps.u{iexp}=IPTGextValues_input(1,iexp);            % IPTG levels to test
    
end

%% Folder where results will be stored
inputs.pathd.results_folder='pseudo_expData_stelling/y0';         % Folder to keep results (in Results) for a given problem          
inputs.pathd.short_name='y0_expData';                      % To identify figures and reports for a given problem   
inputs.pathd.runident=strcat('y0_stelling_',int2str(10));      % [] Identifier required in order not to overwrite previous results
                                                     %    This may be modified from command line. 'run1'(default)  

% NUMERICAL METHODS RELATED DATA
% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'radau5'(default, fortran)|'rkf45'|'lsodes'|
inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes' (C)
inputs.ivpsol.rtol=1.0e-7;                            % [] IVP solver integration tolerances
inputs.ivpsol.atol=1.0e-7; 

y0_input.model=model;

AMIGO_Prep(y0_input)    
AMIGO_SModel(y0_input)        % Calls the task for simulating observables

end

