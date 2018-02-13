model=Stelling_open_loop_model();

number_of_replicates_per_input_class=3;
%exps=load_ramp_input_experiment(number_of_replicates_per_input_class,model);         % 3 experiments implementing a ramp input
%exps=load_step_input_experiment(number_of_replicates_per_input_class,model);         % 3 experiments implementing a step input
%exps=load_pulse_input_experiment(number_of_replicates_per_input_class,model);           % 3 experiments implementing a pulse input
exps=load_pseudorandom_input_experiment(number_of_replicates_per_input_class,model);          % Create 3 experiments implementing a pseudo random input
exps.n_exp=number_of_replicates_per_input_class;

%% Folder where results will be stored
inputs.pathd.results_folder='pseudo_expData_stelling';         % Folder to keep results (in Results) for a given problem          
inputs.pathd.short_name='stelling_expData_pulse';                      % To identify figures and reports for a given problem   
inputs.pathd.runident=strcat('Step_input_SData_',int2str(rand(1)));      % [] Identifier required in order not to overwrite previous results
                                                     %    This may be modified from command line. 'run1'(default)  
% NUMERICAL METHODS RELATED DATA
inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'radau5'(default, fortran)|'rkf45'|'lsodes'|
inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes' (C)
inputs.ivpsol.rtol=1.0e-7;                            % [] IVP solver integration tolerances
inputs.ivpsol.atol=1.0e-7; 


% Populating inputs with model and experimental design
inputs.exps=exps;
inputs.model=model;

% Defining experimental noise
inputs.exps.data_type = 'pseudo_pos';
inputs.exps.noise_type = 'homo';
inputs.exps.std_dev{1}=0;
inputs.exps.std_dev{2}=0;
inputs.exps.std_dev{3}=0;


%% Pre Process Inputs
AMIGO_Prep(inputs)    

cprintf('*[1,0.5,0]','\n\n --->Generating data with heteroscedastic noise');
pause(1)




%% Generate pseudo-experimental data with noise

result=AMIGO_SData(inputs);
%%
exportExperiments(inputs,1,'random','test1');