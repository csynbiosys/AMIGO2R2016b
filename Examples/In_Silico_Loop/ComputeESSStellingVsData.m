%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In silico experiment loop script - runs PE, OED, mock experiment loops
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global epccOutputResultFileNameBase;
global IPTGe; 

resultFileName = [epccOutputResultFileNameBase,'.dat']
clear model;
clear exps;
clear sim;

results_folder = strcat('PLac_rep',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'PLac';

% Read the model into the model variable
%PLac_load_model_Stelling;
PLac_load_model_scIncl;

% Compile the model
clear inputs;
inputs.model = model;
inputs.model.par = [0.0325733538256257 5.46705566202220e-10 7.75000000000000e-05 0.000654809767818206 0.00490818296698615 0.0307309277630367 0.840871329334178 0.00132658139648501 9593.67726098644 2800 106.300183525726 0.0967056122710768 0.0432774760580804 13.7502726488295]; % results of the fitting performed using CrossValidation equal
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';

AMIGO_Prep(inputs);
      
% Fixed parts of the experiment
duration = 50*60*60;     % Duration in second

clear newExps;
newExps.n_exp = 1;
newExps.n_obs{1}=1;                                        % Number of observed quantities per experiment                         
newExps.obs_names{1}=char('Fluorescence');                % Name of the observed  
newExps.obs{1}= char('Fluorescence = Cit_AU');            % Observation function
newExps.exp_y0{1}=PLac_Compute_SteadyState(inputs.model.par,0);
    
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
inputs.model.par = [0.0325733538256257 5.46705566202220e-10 7.75000000000000e-05 0.000654809767818206 0.00490818296698615 0.0307309277630367 0.840871329334178 0.00132658139648501 9593.67726098644 2800 106.300183525726 0.0967056122710768 0.0432774760580804 13.7502726488295]; % results of the fitting performed using CrossValidation equal

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
fprintf(fid, '%f %f %f %f %f %f %f %f %f %f %f %f\n',IPTGe,sim.sim.states{1,1}(end,:));
fclose(fid); 
