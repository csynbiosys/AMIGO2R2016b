% This script will generate the array of standard deviations to pass with
% hetero setting when generating SData for Stelling model. 

% Load all the data generated from SObs for the stelling model

%% Step Input Input data
cd Step_Input_SObs_data\
StepInput=load('Step_Input_Sobs.mat');
cd ..

%% Pulse Input data
cd Pulse_Input_SObs_data\
PulseInput=load('Pulse_Input_Data_Sobs.mat');
cd ..

%% Ramp Input data
cd Ramp_input_SObs_data\
RampInput=load('Ramp_Input_SObs_data.mat');
cd ..

%% PseudoRandom Input data
cd PseudoRandom_pulse_SObs_data\
PseudoRandom_Input=load('Pseudo_Random_Input_SObs.mat');
cd ..


%% Generate standard deviation data

% Assign variables to store the standard deviation calculations
Step_Input_std_dev_all_exp=[]; Pulse_Input_std_dev_all_exp=[];
Ramp_Input_std_dev_all_exp=[]; PseudoRandom_Input_std_dev_all_exp=[];
    
for i=1:3
    Step_Input_std_dev_all_exp=[Step_Input_std_dev_all_exp,std_calculator(StepInput.results.sim.sim_data{1, i}(:,1))];
    Pulse_Input_std_dev_all_exp=[Pulse_Input_std_dev_all_exp,std_calculator(PulseInput.results.sim.sim_data{1, i}(:,1))];
    Ramp_Input_std_dev_all_exp=[Ramp_Input_std_dev_all_exp,std_calculator(RampInput.results.sim.sim_data{1, i}(:,1))];
    PseudoRandom_Input_std_dev_all_exp=[PseudoRandom_Input_std_dev_all_exp,std_calculator(PseudoRandom_Input.results.sim.sim_data{1, i}(:,1))];
end


%% Standard deviation values to be passed on through hetero

std_dev.step=Step_Input_std_dev_all_exp;
std_dev.pulse=Pulse_Input_std_dev_all_exp;
std_dev.ramp=Ramp_Input_std_dev_all_exp;
std_dev.pseudorandom=PseudoRandom_Input_std_dev_all_exp;


% save standard_deviation_data
save ('std_dev_all_exp','std_dev'); %,'StepInput','PulseInput','RampInput','PseudoRandom_Input');