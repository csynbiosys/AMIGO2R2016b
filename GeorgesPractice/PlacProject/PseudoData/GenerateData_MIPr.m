results_folder = strcat('MIPr',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'MIPr1';

%Compile the model

clear inputs;
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';

inputs.model=Model_ForStellingData_Lucia_George();

AMIGO_Prep(inputs);

duration = 48*60;
steplength=1*60;

%Run a basic simulation - here we start in steady state and add gal1

inputs.exps.n_exp = 1;  % Just

for iexp=1:inputs.exps.n_exp
    
    inputs.exps.exp_type{iexp} = 'fixed';
    inputs.exps.n_obs{iexp} = 1;
    inputs.exps.obs_names{iexp} = char('Fluorescence');
    inputs.exps.obs{iexp} = char('Fluorescence = Cit_fluo');

    inputs.exps.exp_y0{iexp}=M3D_steady_state(inputs.model.par,0);           % Initial conditions with 'correct' parameters
    
    inputs.exps.t_f{iexp}=duration;         % Experiment duration
    ts=0:steplength:duration;
    inputs.exps.n_s{iexp}=length(ts);% Number of sampling times
    inputs.exps.t_s{iexp}=ts;      % times of samples
    
    inputs.exps.u_interp{iexp}='step';
    exps.n_steps{iexp}  =1;
    inputs.exps.t_con{iexp}=[0,duration];                         % Input swithching times: Initial and final time
    inputs.exps.u{iexp}=[10];
    
    inputs.exps.noise_type = 'hetero';
    inputs.exps.std_dev{iexp}=[0];
end

%Run a basic simulation - here we start in steady state and add gal1

inputs.plotd.plotlevel='noplot';
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';

inputs.plotd.plotlevel='noplot';

sim=AMIGO_SData(inputs);

