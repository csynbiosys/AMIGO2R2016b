% Proprocesses the data from Fiore 2016 ACS so that it can be processed by
% Amigo2 reference from Lucia
function output = gal1_PE_several_experiment_George2(numIterations)
cd('../..');
% AMIGO_Startup();
cd('GeorgesPractice/Gal1');

dataFileName='Data_Menolascina_yeast_161007_BU.mat';
load(dataFileName);

% Define upper and lower boundaries on parameters value
%                   r      h1   Km    d1       alpha2  d2    Kf    Kb
global_theta_min = [0, 0.5, 0.01, 0.0077,  0.3,  0.0023,0.01,  0.0023];  % Minimum allowed values for the parameters
global_theta_max = [7e-5, 4.0, 0.5,    0.14,    1.3,  0.0092,  0.2,  0.0092];  % Maximum allowed values for the paramters

global_theta_guess_min = [3.5e-5, 2.25, 0.255, 0.0077,0.1,0.0023,0.01,0.0023]';
global_theta_guess_max = [3.5e-5, 2.25, 0.255, 0.25,1.5,0.01,0.2,0.01]';

param_including_vector = [true,true,true,true,true,true,true,true];
global_theta_max=global_theta_max(param_including_vector);
global_theta_min=global_theta_min(param_including_vector);




% Specify folder name and short_name
results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = strcat('gal1noD');

% Initial guesses for theta - the global unknonws for the model - imposing
% The maximum fluorescence is designed to be 1, no need for iterations

global_theta_guess=global_theta_guess_min+(global_theta_guess_max-global_theta_guess_min).*rand(sum(param_including_vector),1);

best_global_theta = global_theta_guess;

% Compile the model
inputs.model=gal1_load_model_George1();
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';
AMIGO_Prep(inputs);

% Read the model into the model variable
inputs.model=local_load_model();
inputs.exps  = local_load_experiments(S.Data,global_theta_guess);
inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'PEs';

% GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERMENTS)
inputs.PEsol.id_global_theta=inputs.model.par_names(param_including_vector,:);
inputs.PEsol.global_theta_guess=transpose(best_global_theta(param_including_vector));
inputs.PEsol.global_theta_max=global_theta_max(param_including_vector);  % Maximum allowed values for the paramters
inputs.PEsol.global_theta_min=global_theta_min(param_including_vector);  % Minimum allowed values for the parameters

% COST FUNCTION RELATED DATA
inputs.PEsol.PEcost_type='llk';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
inputs.PEsol.llk_type='homo_var';                     % [] To be defined for llk function, 'homo' | 'homo_var' | 'hetero'

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-8;
inputs.ivpsol.atol=1.0D-8;

% OPTIMIZATION
inputs.nlpsol.nlpsolver='eSS';
inputs.nlpsol.eSS.maxeval = 200000;
inputs.nlpsol.eSS.maxtime = 3000;
inputs.nlpsol.eSS.log_var = 1:8;
inputs.nlpsol.eSS.local.solver = 'fmincon';  % nl2sol not yet installed on my mac
inputs.nlpsol.eSS.local.finish = 'fmincon';  % nl2sol not yet installed on my mac
inputs.rid.conf_ntrials=500;

initialguess=zeros(numIterations,sum(param_including_vector));
results=initialguess;

parfor exps=1:numIterations

rng shuffle;
rngToGetSeed = rng;
seed(exps)=rngToGetSeed;

tempinputs=inputs;

best_global_theta =global_theta_guess_min+(global_theta_guess_max-global_theta_guess_min).*...
    rand(8,1);
initialguess(exps,:)=best_global_theta;
tempinputs.PEsol.global_theta_guess=transpose(best_global_theta);

tempresults = AMIGO_PE(tempinputs);

% Save the best theta
results(exps,:)=tempresults.fit.thetabest';

end
names=inputs.PEsol.id_global_theta;
output={names,results,seed,initialguess};

save('result.mat','output');

end

function model = local_load_model()
% Gal1 model but here we have eliminated parameter Vm1 using the fact that
% the output is 1 when at steady state.  Thus we can cast Vm in term of the
% other parameters.
cprintf(['loading ',mfilename,'...\n']);
model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|
%                     'blackboxmodel'|'blackboxcost
model.n_st=3;                                       % Number of states
model.n_par=8;                                      % Number of model parameters
model.n_stimulus=1;                                 % Number of inputss, stimuli or control variables
model.st_names=char('gal1_mrna','gal1_foldedP','gal1_fluo');     % Names of the states
model.par_names=char('r','h1','Km1','d1',...
    'alpha2','d2','Kf','Kb');           % Names of the parameters
model.stimulus_names=char('gal');                                        % Names of the stimuli, inputss or controls
model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
    char('alpha1=d1*Kb*(d2+Kf)*r/(Kf*alpha2)',...
    'Vm1=(d1*Kb*(Kf+d2)/(alpha2*Kf) - alpha1) * (Km1^h1 + 2^h1)/2^h1',...
    'dgal1_mrna=alpha1+Vm1*(gal^h1/(Km1^h1+gal^h1))-d1*gal1_mrna',...
    'dgal1_foldedP=alpha2*gal1_mrna-(d2+Kf)*gal1_foldedP',...
    'dgal1_fluo=Kf*gal1_foldedP-Kb*gal1_fluo');
model.par=[0.000035,2.25,0.255,0.0738,0.8,0.0057,0.1050,0.0057];

end

function exps = local_load_experiments(data,global_theta_guess)
ExcludeExperiments = {'Menolascina_extracted_160714','dataND053','dataND055','dataND057'};

y0 = gal1_steady_state(global_theta_guess,2);

iexp = 1;
for countexp = 1:size(data,2)
    Name = data(countexp).experimentName;
    if any(strcmp(Name,ExcludeExperiments))
        continue
    end
    input_duration = data(countexp).time_input(end);
    total_duration = input_duration;
    
    exps.exp_type{iexp}='fixed';
    exps.n_obs{iexp}=1;                                        % Number of observed quantities per experiment
    exps.obs_names{iexp}=char('Fluorescence');                 % Name of the observed quantities per experiment
    exps.obs{iexp}=char('Fluorescence=gal1_fluo');             % Observation function
    exps.t_f{iexp}=input_duration;                             % Experiments duration
    exps.n_s{iexp}=length(data(countexp).output);          % Number of sampling times
    exps.t_s{iexp}=linspace(0,input_duration,length(data(countexp).output));  % Sampling times, by default equidistant
    exps.u_interp{iexp}='step';
    
    t_con = [0 find(diff(data(countexp).input' == 1)) total_duration]; % not ~=0?
    exps.t_con{iexp}   = t_con;       % input value change points
    exps.n_steps{iexp} = length(t_con)-1;
    if rem(length(t_con),2) == 0
        exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2)) 2];           % input values
    else
        exps.u{iexp} = [repmat([2 0],1,floor(exps.n_steps{iexp}/2))];
    end
    
    
    exps.exp_data{iexp} = data(countexp).output;
    
    exps.error_data{iexp} = data(countexp).output_std;
    
    exps.exp_y0{iexp} = y0;
    
    exps.n_exp = iexp;
    iexp = iexp + 1;
end
exps.data_type      = 'real';
exps.noise_type     = 'homo_var';
end

