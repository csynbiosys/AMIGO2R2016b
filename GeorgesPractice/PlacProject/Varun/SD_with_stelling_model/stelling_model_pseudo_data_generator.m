%% This script can be used to generate pseudo data using the open Loop model described in the paper doi:10.1021/acssynbio.6b00013
% Author: Varun Kothamachu

%% Loading model with fitted parameters
model=Stelling_open_loop_model();


%% Setting up Experiment for Input_classes=['step','ramp','pseudo-random','pulse'];
number_of_replicates_per_input_class=3;

%% setup experiments with different input classes and generate the exps struct
% exps=load_ramp_input_experiment(number_of_replicates_per_input_class,model);         % 3 experiments implementing a ramp input
exps=load_step_input_experiment(number_of_replicates_per_input_class,model);         % 3 experiments implementing a step input
% exps=load_pulse_input_experiment(number_of_replicates_per_input_class,model);           % 3 experiments implementing a pulse input
% exps=load_pseudorandom_input_experiment(number_of_replicates_per_input_class,model);          % Create 3 experiments implementing a pseudo random input

%storing information about the number of experiments
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

% Load standard deviations calculated from author submitted experimental data 
load std_dev_all_exp.mat

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

for i=1:number_of_replicates_per_input_class
    inputs.exps.data_type = 'pseudo_pos';
    inputs.exps.noise_type = 'hetero';
    inputs.exps.error_data{i} = std_calculator(result.sim.sim_data{1, i}(:,1));
end
AMIGO_SData(inputs)
save ('Step_Pseudo_random_3_experiments','inputs','result');