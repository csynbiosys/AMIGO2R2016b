%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In silico experiment loop script - runs PE, OED, mock experiment loops
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global epccOutputResultFileNameBase;
resultFileName = [epccOutputResultFileNameBase,'.dat'];

rng shuffle;
rngToGetSeed = rng;

% Write the header information
fid = fopen(resultFileName,'w');  
fprintf(fid,'HEADER DATE %s\n', datestr(datetime()));
fprintf(fid,'HEADER RANDSEED %d\n',rngToGetSeed.Seed);
fclose(fid);

startTime = datenum(now);

clear model;
clear exps;
clear ode_results;

results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD'

% Read the model into the model variable
gal1_load_model;

% We start with no experiments
exps.n_exp=0;

% Initial guess for theta - the global unknows of model
true_param_values = model.par;
global_theta_guess = model.par;
%i = 9;                                    % index of the parameter to be changed
% Variation of ith parameter
global_theta_max_i = model.par(i)*10.0;   % Maximum allowed values for the parameter
global_theta_min_i = model.par(i)*0.1;    % Minimum allowed values for the parameter
global_theta_guess(i) = unifrnd(global_theta_min_i,global_theta_max_i,[1,1]); % Extract 1 values from the uniform distribution in [min, max]
global_theta_guess = global_theta_guess';


% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

% Calculate the initial state based on current best estimate of theta.
% The initial state is the steady state when gal is 0
y0 = gal1_steady_state(global_theta_guess, 0);
       
% Fixed parts of the experiment
duration = 3600;     % Duration in minutes
numCycles = 1;       % Number of 2-0 cycles
tSwitch = 300;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create a the experiment to simulate
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear newExps;
newExps.n_exp = 1;
newExps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
newExps.obs_names{1}=char('Fluorescence');                 % Name of the observed quantities per experiment    
newExps.obs{1}=char('Fluorescence=gal1_fluo');             % Observation function
newExps.exp_y0{1}=y0;    
    
newExps.t_f{1}=duration;                % Experiment duration
newExps.n_s{1}=duration/5 + 1;          % Number of sampling times
newExps.t_s{1}=0:5:duration ;           % Times of samples
    
newExps.u_interp{1}='step';
newExps.n_steps{1}=numCycles*2; 
newExps.u{1}=repmat([0 2],1,numCycles);
newExps.t_con{1}=[0,tSwitch,duration]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run simulation with the current parameter vector
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
clear inputs;
model.par = global_theta_guess; 
inputs.model = model;
    
inputs.exps = newExps;
    
%inputs.exps.data_type='pseudo';
%inputs.exps.noise_type='homo_var';
%inputs.exps.std_dev{1}=[0.1];
    
inputs.plotd.plotlevel='noplot';
    
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = strcat('sim-',int2str(i));

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-7;
inputs.ivpsol.atol=1.0D-7;
    
sim = AMIGO_SModel(inputs);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now we need to add this experiment output to newExps and copy
% to exps
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
newExps.exp_type{1}='fixed';
newExps.exp_data{1}   = sim.sim.states{1,1}(:,3); 
exps = newExps;
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Write results to the output file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fid = fopen(resultFileName,'a');

% Extract the name of the varying parameter
cell_par_names = cellstr(model.par_names);
param_varied = cell_par_names{i};
% Create a string array with the name of this parameter
strparam = strings(length(sim.sim.tsim{1,1}),1);
strparam(:) = param_varied;

% Extract the true value of the parameter
true_param_value = true_param_values(i).*ones(length(sim.sim.tsim{1,1}),1);

% Extract the value of the parameter used in simulation
Sim_value = global_theta_guess(i).*ones(length(sim.sim.tsim{1,1}),1);
Sim_time =  sim.sim.tsim{1,1}';
u = 2.*(Sim_time>=tSwitch);
m= sim.sim.states{1,1}(:,1);
foldedP = sim.sim.states{1,1}(:,2);
fluo = sim.sim.states{1,1}(:,3);

fprintf(fid,'%s %s %s %s %s %s %s %s\n','Param','True_Value','Sim_Value','Sim_Time','Input','mRNA','foldedP','fluo');
%fprintf(fid,'%s %12.8f %12.8f %12.8f %12.8f %12.8f %12.8f %12.8f \n',Data);


for j=1:size(Sim_time,1)
    fprintf(fid,'%s %f %f %f %f %f %f %f\n',strparam(j),true_param_value(j),Sim_value(j),Sim_time(j),u(j),m(j),foldedP(j),fluo(j));
end

fclose(fid);

save([epccOutputResultFileNameBase,'.mat'],'exps','inputs','param_varied','true_param_value','Sim_time','fluo');

