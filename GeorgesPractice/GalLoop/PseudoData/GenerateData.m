results_folder = strcat('GalOpenLoop1',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'galOL1';

%Compile the model

testIPTG=[0,0.1,0.5,1,5,10,50,100,500,1000,5000,1e4];


clear inputs;
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';

inputs.model=galOpenLoop1_model_George1();

AMIGO_Prep(inputs);

duration = 24*60*60;
steplength=50;

%Run a basic simulation - here we start in steady state and add gal1

inputs.exps.n_exp = length(testIPTG);  % Just

for i=1:inputs.exps.n_exp
    
    inputs.exps.n_obs{i}=1;                                        % Number of observed quantities per experiment
    inputs.exps.obs_names{i}=char('CitrineAU');      % Name of the observed quantities per experiment
    inputs.exps.obs{i}=char('CitrineAU=Citrine/scmolec');            % Observation function
    
    
    inputs.exps.exp_y0{i}=GalLoop_initial_conditions(0,0);           % Initial conditions with 'correct' parameters
    
    inputs.exps.t_f{i}=duration;         % Experiment duration
    ts=0:steplength:duration;
    inputs.exps.n_s{i}=length(ts);% Number of sampling times
    inputs.exps.t_s{i}=ts;      % times of samples
    
    inputs.exps.u_interp{i}='sustained';
    inputs.exps.t_con{i}=[0 6000];                         % Input swithching times: Initial and final time
    inputs.exps.u{i}=testIPTG(i);
    
    inputs.exps.noise_type = 'hetero';
    inputs.exps.std_dev{i}=0.1;
end

%Run a basic simulation - here we start in steady state and add gal1

inputs.plotd.plotlevel='noplot';
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';

inputs.plotd.plotlevel='min';

sim=AMIGO_SData(inputs);

CitrineAU=zeros(1,inputs.exps.n_exp);
for i=1:inputs.exps.n_exp
    CitrineAU(i)=sim.sim.sim_data{1,i}(end);
end

semilogx(ds(:,1),ds(:,2),'-o');
hold on;
semilogx(testIPTG,CitrineAU,'-o');


hold off;