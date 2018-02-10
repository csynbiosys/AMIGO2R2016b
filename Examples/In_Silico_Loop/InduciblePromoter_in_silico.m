%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In silico experiment loop script - runs PE, OED, mock experiment loops
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global epccOutputResultFileNameBase;
global IPTGe; 

resultFileName = [epccOutputResultFileNameBase,'.dat']
clear model;
clear exps;
clear sim;

results_folder = strcat('InduciblePromoter',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'IndProm';

% Read the model into the model variable
InduciblePromoter_load_model; 

% Compile the model
clear inputs;
inputs.model = model;
inputs.model.par = [0.000377125304442752 0.00738924359598526 1.53333782244337 5.01927275636639 0.00118831480244382 0.0461264539194078 0.000475563708997018 0.000301803966012407 68.8669567134881];
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';

AMIGO_Prep(inputs);
      
% Fixed parts of the experiment
duration = 24*60*60;     % Duration in second

clear newExps;
newExps.n_exp = 1;
newExps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
newExps.obs_names{1}=char('Fluorescence');                % Name of the observed  
newExps.obs{1}= char('Fluorescence = Cit_AU');            % Observation function
newExps.exp_y0{1}=InduciblePromoter_steady_state(inputs.model.par,0);
    
newExps.t_f{1}=duration;                % Experiment duration
    
newExps.u_interp{1}='sustained';
%newExps.n_steps{1} = ;
newExps.u{1}=[IPTGe];
newExps.t_con{1}=[0 24*3600]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mock an experiment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
clear inputs;
inputs.model = model;
inputs.model.par = [0.000377125304442752 0.00738924359598526 1.53333782244337 5.01927275636639 0.00118831480244382 0.0461264539194078 0.000475563708997018 0.000301803966012407 68.8669567134881];

% The parameters in the model are the parameter values we are trying to
% determine - keep the model as it is for the simulation
    
inputs.exps = newExps;
inputs.plotd.plotlevel='full';
    
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = strcat('sim-',int2str(i));

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-7;
inputs.ivpsol.atol=1.0D-7;
    
sim = AMIGO_SModel(inputs);

fid = fopen(resultFileName,'a');
%fprintf(fid, '%f %f %f %f %f %f %f %f %f %f %f %f\n',IPTGe,sim.sim.states{1,1}(end,:));
fprintf(fid, '%f %f\n',IPTGe,sim.sim.states{1,1}(end,end));

fclose(fid); 
