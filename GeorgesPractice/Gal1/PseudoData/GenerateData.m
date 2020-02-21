results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD';

% Compile the model

clear inputs;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';

inputs.model=gal1_load_model_George1();

AMIGO_Prep(inputs);

inputs.exps=gal1_load_experiments_George1(inputs);

% Run a basic simulation - here we start in steady state and add gal1

%inputs.plotd.plotlevel='noplot';
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';


AMIGO_SData(inputs)

sim_res=cell(1,1);
%sim_res{1} = AMIGO_SModel(inputs);