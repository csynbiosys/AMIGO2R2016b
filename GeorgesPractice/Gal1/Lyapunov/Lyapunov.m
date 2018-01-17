delta=1e-2;

results_folder = strcat('Gal1-noDelay-Lya',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1Lya';

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


inputs.exps.exp_y0{1}=gal1_steady_state_George1(inputs,0.5);           % Initial conditions with 'correct' parameters      
inputs.exps.exp_y0{1}(3)=inputs.exps.exp_y0{1}(3);
res1=AMIGO_SData(inputs);
res1=res1.sim.sim_data{1,1};



inputs.exps.exp_y0{1}=gal1_steady_state_George1(inputs,0.5);           % Initial conditions with 'correct' parameters      
inputs.exps.exp_y0{1}(3)=inputs.exps.exp_y0{1}(3)+delta;
res2=AMIGO_SData(inputs);
res2=res2.sim.sim_data{1,1};

sim_res=cell(1,1);
sim_res{1} = AMIGO_SModel(inputs);