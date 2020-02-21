% RUN Stelling model simulation
clear all;

Stelling_model_open_loop_SM                 % Calls the script with the inputs: 
                                               % Model
                                               % Experimental scheme (number of experiments initial 
                                               % & stimulation conditions, observables, final time - per experiment),
                                               % type of data and noise
                                               % Numerical approaches for simulation 

                                               
% prevent display of plots when running the script. 
inputs.plotd.plotlevel='full';                % can also take values max,medium,min,noplot
                                               

AMIGO_Prep(inputs)         % Calls the task for pre-processing
AMIGO_SModel(inputs)        % Calls the task for simulating observables


% Load the .mat file generated in the results folder before trying to
% generate the following plots.

% Plotting Time series data for different IPTG induction levels.
for i=1:100
    figure(1)
    subplot(10,10,i)
    plot(results.sim.tsim{1,i}(1,:),results.sim.states{1,i}(:,10)*scaleMolec/492); hold on;
    xlabel('Time(s)');
    ylabel('Citrine(AU)');
    title(strcat('IPTGex=',num2str(inputs.exps.u{1,i})));
end

% Extract steady state values from results folder and generate the steady
% state IPTGext Vs Cit curve

scaleMolec=27.18;
Steady_state_Cit_values=[]; IPTGext=[];

for i=1:100
    IPTGext=[IPTGext;inputs.exps.u{1,i}];
    Steady_state_Cit_values=[Steady_state_Cit_values;results.sim.states{1,i}(end,10)]; %#ok<*AGROW>
end

scatter(IPTGext,Steady_state_Cit_values,'blue'); hold on;
xlabel('IPTGext(\muM)');
ylabel('Steady state Citrine level (AU)');
title('IPTGext Vs Steady state Citrine level (AU)');
