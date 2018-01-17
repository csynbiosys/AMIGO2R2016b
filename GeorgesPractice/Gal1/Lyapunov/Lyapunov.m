delta=1e-2;

results_folder = strcat('Gal1-noDelay-Lya',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1Lya';

%Compile the model

clear inputs;
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';

inputs.model=gal1_load_model_George1();

AMIGO_Prep(inputs);

inputs.exps=gal1_load_experiments_George1(inputs);
%Run a basic simulation - here we start in steady state and add gal1


duration = 1580;
steplength=5;


% Run a basic simulation - here we start in steady state and add gal1
    

inputs.exps.t_f{1}=duration;         % Experiment duration
ts=0:steplength:duration;
inputs.exps.n_s{1}=length(ts);% Number of sampling times
inputs.exps.t_s{1}=ts;      % times of samples



inputs.exps.n_steps{1}=length(t)-1;
inputs.exps.t_con{1}=t;
inputs.exps.u{1}=u(1:(length(t)-1));




%inputs.plotd.plotlevel='noplot';
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';


inputs.exps.exp_y0{1}=gal1_steady_state_George1(inputs,0.5);           % Initial conditions with 'correct' parameters
res1=AMIGO_SData(inputs);
res1=res1.sim.sim_data{1,1};



inputs.exps.exp_y0{1}=gal1_steady_state_George1(inputs,0.5);           % Initial conditions with 'correct' parameters
inde=0;
if (inde==0)
    inputs.exps.exp_y0{1}(3)=(1+delta)*inputs.exps.exp_y0{1}(3);
else
    inputs.model.par(inde)=(1+delta)*inputs.model.par(inde);
end
res2=AMIGO_SData(inputs);
res2=res2.sim.sim_data{1,1};

figure();
plot(res2-res1);
figure();
hold on;
plot(res1);
plot(res2);
hold off;
