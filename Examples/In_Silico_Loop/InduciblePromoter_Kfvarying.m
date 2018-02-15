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

% Read the model into the model variable
load('PseudoData_HomoVar005.mat'); 

% Compile the model
clear inputs;
inputs.model = model;
inputs.model.par = [0.0164186333380725 0.291556643109224 1.71763487775568 5.14394334860864 0.229999999999978 6.63776658557266 0.00575139649497780 0.0216999999961899];
inputs.model.par(1,5) = 0.25;
inputs.model.par(1,end) = 0.15;
exps.n_exp = 1;

    
    % to be modified with the structure of the experiments classes
    for iexp=1:exps.n_exp
        exp_indexData = 4;
        exps.exp_type{iexp} = 'fixed'; 
        exps.n_obs{iexp} = 1; 
        exps.obs_names{iexp} = char('Fluorescence');
        exps.obs{iexp} = char('Fluorescence = Cit_fluo');
        exps.u_interp{iexp} = Data.u_interp{1,exp_indexData};
        exps.t_f{iexp} = Data.t_con{1,exp_indexData}(end); 
        exps.n_s{iexp} = Data.n_s{1,exp_indexData};
        exps.t_s{iexp} = Data.t_s{1,exp_indexData}; 
        exps.t_con{iexp} = Data.t_con{1,exp_indexData};

        if exp_indexData>3 && exp_indexData<7 % Pulses
            exps.n_pulses{iexp} = Data.n_pulses{1,exp_indexData};
            exps.u_min{iexp} = Data.u_min{1,exp_indexData};
            exps.u_max{iexp} = Data.u_max{1,exp_indexData};
        else
            exps.n_steps{iexp} = length(exps.t_con{iexp})-1;
            exps.u{iexp} = Data.u{1,exp_indexData};
        end

        exps.data_type = 'real'; % check if this is the case
        exps.noise_type = 'homo_var'; % check if this is the case
        exps.exp_data{iexp} = Data.exp_data{1,exp_indexData};
        exps.error_data{iexp} = Data.error_data{1,exp_indexData};
        exps.exp_y0{iexp} = InduciblePromoter_steady_state(inputs.model.par,0);
    end
    
inputs.exps = exps;   
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';

AMIGO_Prep(inputs);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mock an experiment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

inputs.plotd.plotlevel='noplot';
    
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = strcat('sim-',int2str(i));

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-7;
inputs.ivpsol.atol=1.0D-7;
    
results = AMIGO_SModel(inputs);

load('PartialOnStelling.mat')
figure; 
plot(results.sim.tsim{1,1},results.sim.states{1,1}(:,3),'b');hold on;
plot(sim.sim.tsim{1,4}/60,sim.sim.sim_data{1,4},'r');


% fid = fopen(resultFileName,'a');
% %fprintf(fid, '%f %f %f %f %f %f %f %f %f %f %f %f\n',IPTGe,sim.sim.states{1,1}(end,:));
% fprintf(fid, '%f %f\n',IPTGe,sim.sim.states{1,1}(end,end));
% 
% fclose(fid); 
