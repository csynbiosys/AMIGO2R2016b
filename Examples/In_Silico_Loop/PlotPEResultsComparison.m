% Proprocesses the data from Fiore 2016 ACS so that it can be processed
% by Amigo2
wd = cd; 
cd('dataSingleCellStructure'); 
load('Data_Menolascina_yeast_161007.mat')
cd(wd)

iexp = 1;
sampling_interval = 5;      % minutes

clear exps;

% Specify folder for PE

results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD';

% Read the model into the model variable
gal1_load_model_v2;
%model.par = [1.86e-13; 3.59; 0.0108; 0.0092; 0.467; 0.0023; 0.112; 0.0091];
model.par = [3.38e-13; 0.767; 0.339; 0.022; 0.627; 0.0023; 0.094; 0.0063];

% Initial guesses for theta - the global unknonws for the model - imposing
% constraint on the maximum (0.9-1) and minimum fluorescence (0.045)
y0 = gal1_steady_state(model.par,2);

ExcludeExperiments = {'Menolascina_extracted_160714','dataND037','dataND053','dataND055','dataND057'};


for countexp = 1:size(S.Data,2)
    Name = S.Data(countexp).experimentName;
    if any(strcmp(Name,ExcludeExperiments))
        continue
    end
    input_duration = S.Data(countexp).time_input(end);
    total_duration = input_duration;
    data_duration  = input_duration;
    
    exps.exp_type{iexp}='fixed';
    exps.n_obs{iexp}=1;                                        % Number of observed quantities per experiment                         
    exps.obs_names{iexp}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    exps.obs{iexp}=char('Fluorescence=gal1_fluo');             % Observation function
    exps.t_f{iexp}=total_duration;                             % Experiments duration
    exps.n_s{iexp}=data_duration/sampling_interval;          % Number of sampling times
    exps.t_s{iexp}= linspace(0,total_duration,length(S.Data(countexp).output));  % Sampling times, by default equidistant  
    exps.u_interp{iexp}='step';
    
    t_con = [0 find(diff(S.Data(countexp).input' == 1)) total_duration];
    exps.t_con{iexp}   = t_con;       % input value change points
    exps.n_steps{iexp} = length(exps.t_con{iexp})-1; 
    if rem(length(t_con),2) == 0
        exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2)) 2];           % input values
    else
        exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2))];
    end

    exps.data_type      = 'real';    
    exps.noise_type     = 'homo_var';
    exps.exp_data{iexp} = S.Data(countexp).output;
    %IndexExitCP = find(S.Data(countexp).time_min >= t_con(2),1);
    
    %exps.std_dev{iexp}  = [nanmean(S.Data(countexp).output_std(1:IndexExitCP))];
    exps.error_data{iexp} = S.Data(countexp).output_std;
    exps.exp_y0{iexp} = y0;  
    
    exps.n_exp = iexp;
    iexp = iexp + 1;
end

% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

clear inputs;
inputs.model = model;
inputs.exps  = exps;


inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-8;
inputs.ivpsol.atol=1.0D-8;

sim_resAll = AMIGO_SModel(inputs);
close all; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear model;
clear exps;
clear inputs;


iexp = 1;
sampling_interval = 5;      % minutes


% Specify folder for PE

results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD';

% Read the model into the model variable
gal1_load_model_v2;
model.par = [1.86e-13; 3.59; 0.0108; 0.0092; 0.467; 0.0023; 0.112; 0.0091];


% Initial guesses for theta - the global unknonws for the model - imposing
% constraint on the maximum (0.9-1) and minimum fluorescence (0.045)
y0 = gal1_steady_state(model.par,2);

ExcludeExperiments = {'Menolascina_extracted_160714','dataND037','dataND053','dataND055','dataND057'};


for countexp = 1:size(S.Data,2)
    Name = S.Data(countexp).experimentName;
    if any(strcmp(Name,ExcludeExperiments))
        continue
    end
    input_duration = S.Data(countexp).time_input(end);
    total_duration = input_duration;
    data_duration  = input_duration;
    
    exps.exp_type{iexp}='fixed';
    exps.n_obs{iexp}=1;                                        % Number of observed quantities per experiment                         
    exps.obs_names{iexp}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    exps.obs{iexp}=char('Fluorescence=gal1_fluo');             % Observation function
    exps.t_f{iexp}=total_duration;                             % Experiments duration
    exps.n_s{iexp}=data_duration/sampling_interval;          % Number of sampling times
    exps.t_s{iexp}= linspace(0,total_duration,length(S.Data(countexp).output));  % Sampling times, by default equidistant  
    exps.u_interp{iexp}='step';
    
    t_con = [0 find(diff(S.Data(countexp).input' == 1)) total_duration];
    exps.t_con{iexp}   = t_con;       % input value change points
    exps.n_steps{iexp} = length(exps.t_con{iexp})-1; 
    if rem(length(t_con),2) == 0
        exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2)) 2];           % input values
    else
        exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2))];
    end

    exps.data_type      = 'real';    
    exps.noise_type     = 'homo_var';
    exps.exp_data{iexp} = S.Data(countexp).output;
    %IndexExitCP = find(S.Data(countexp).time_min >= t_con(2),1);
    
    %exps.std_dev{iexp}  = [nanmean(S.Data(countexp).output_std(1:IndexExitCP))];
    exps.error_data{iexp} = S.Data(countexp).output_std;
    exps.exp_y0{iexp} = y0;  
    
    exps.n_exp = iexp;
    iexp = iexp + 1;
end

% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

clear inputs;
inputs.model = model;
inputs.exps  = exps;


inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-8;
inputs.ivpsol.atol=1.0D-8;

sim_resRedExps = AMIGO_SModel(inputs);
close all; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear model;
clear exps;
clear inputs;


iexp = 1;
sampling_interval = 5;      % minutes


results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD';

% Read the model into the model variable
gal1_load_model_v2;
model.par = [3.5e-5; 2.25; 0.255; 0.0092; 0.532; 0.0048; 0.108; 0.0092];


% Initial guesses for theta - the global unknonws for the model - imposing
% constraint on the maximum (0.9-1) and minimum fluorescence (0.045)
y0 = gal1_steady_state(model.par,2);

ExcludeExperiments = {'Menolascina_extracted_160714','dataND037','dataND053','dataND055','dataND057'};


for countexp = 1:size(S.Data,2)
    Name = S.Data(countexp).experimentName;
    if any(strcmp(Name,ExcludeExperiments))
        continue
    end
    input_duration = S.Data(countexp).time_input(end);
    total_duration = input_duration;
    data_duration  = input_duration;
    
    exps.exp_type{iexp}='fixed';
    exps.n_obs{iexp}=1;                                        % Number of observed quantities per experiment                         
    exps.obs_names{iexp}=char('Fluorescence');                 % Name of the observed quantities per experiment    
    exps.obs{iexp}=char('Fluorescence=gal1_fluo');             % Observation function
    exps.t_f{iexp}=total_duration;                             % Experiments duration
    exps.n_s{iexp}=data_duration/sampling_interval;          % Number of sampling times
    exps.t_s{iexp}= linspace(0,total_duration,length(S.Data(countexp).output));  % Sampling times, by default equidistant  
    exps.u_interp{iexp}='step';
    
    t_con = [0 find(diff(S.Data(countexp).input' == 1)) total_duration];
    exps.t_con{iexp}   = t_con;       % input value change points
    exps.n_steps{iexp} = length(exps.t_con{iexp})-1; 
    if rem(length(t_con),2) == 0
        exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2)) 2];           % input values
    else
        exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2))];
    end

    exps.data_type      = 'real';    
    exps.noise_type     = 'homo_var';
    exps.exp_data{iexp} = S.Data(countexp).output;
    %IndexExitCP = find(S.Data(countexp).time_min >= t_con(2),1);
    
    %exps.std_dev{iexp}  = [nanmean(S.Data(countexp).output_std(1:IndexExitCP))];
    exps.error_data{iexp} = S.Data(countexp).output_std;
    exps.exp_y0{iexp} = y0;  
    
    exps.n_exp = iexp;
    iexp = iexp + 1;
end

% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

clear inputs;
inputs.model = model;
inputs.exps  = exps;


inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'sim';

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-8;
inputs.ivpsol.atol=1.0D-8;

sim_resRedPar = AMIGO_SModel(inputs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure;
for exp=1:exps.n_exp;
    subplot(ceil(exps.n_exp/2),2,exp);
    shadedErrorBar(exps.t_s{exp},exps.exp_data{exp},exps.error_data{exp},'lineprops','k'); hold on; 
    plot(sim_resAll.sim.tsim{1,exp},sim_resAll.sim.states{1,exp}(:,3), 'c',sim_resRedExps.sim.tsim{1,exp},sim_resRedExps.sim.states{1,exp}(:,3), 'b',sim_resRedPar.sim.tsim{1,exp},sim_resRedPar.sim.states{1,exp}(:,3), 'g')%, sim_res{exp}.sim.tsim{1}, sim_res{exp}.sim.states{1}(:,3), 'g');
    title(int2str(exp));
end


figure;
for exp=1:exps.n_exp;
    subplot(ceil(exps.n_exp/2),2,exp);
    shadedErrorBar(exps.t_s{exp},exps.exp_data{exp},exps.error_data{exp},'lineprops','k'); hold on; 
    %errorbar(exps.t_s{exp},exps.exp_data{exp},exps.error_data{exp},'.k'); hold on;
    plot(sim_resbestAll{1,exp}.sim.tsim{1,1},sim_resbestAll{1,exp}.sim.states{1,1}(:,3), 'c', sim_resbestRedExps{1,exp}.sim.tsim{1,1}, sim_resbestRedExps{1,exp}.sim.states{1,1}(:,3), 'b',sim_resbestRedPar{1,exp}.sim.tsim{1,1}, sim_resbestRedPar{1,exp}.sim.states{1,1}(:,3), 'g');
    %legend('Exp data','Ave','best')
    title(int2str(exp));
end
%     
% 
% 
% % % Run a simulation for each input
% % 
% % 
% %     