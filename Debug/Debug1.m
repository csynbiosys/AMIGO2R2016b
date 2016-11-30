% Test code to show the bugs of inconsistent and failings simulations when
% using CVODES.
%
% This script runs a simulation 100 times and sums all the state values
% at all time points. For some simuations this value will be NaN showing
% that the simulation has failed.  For those that don't fail the result
% is inconsistent. This can be seen by the histogram which is plotted
% at the end.  This is usually one value occurs about 80% of the time
% with other values and failures making up the other 20%.
%
% Ally Hume, 2016-11-22
%

clear model;
clear exps;

results_folder = 'Gal1-noDelay-simulate';
short_name     = 'gal1noD'

% Read the model into the model variable
gal1_load_model;

% Compile the model
clear inputs;
inputs.model = model;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'simulate';
inputs.ivpsol.ivpsolver     = 'cvodes'
inputs.ivpsol.senssolver    = 'cvodes'

AMIGO_Prep(inputs);

storedInputs = inputs;

for i=1:1000000
    inputs = storedInputs;
    
    % Set up the experiment data etc from the saved one that fails
    load('Debug/allyParams-failed.mat');
    inputs.exps = varargin{1}.exps;
    inputs.model.par = x0;

    inputs.pathd.results_folder = results_folder;                        
    inputs.pathd.short_name     = short_name;
    inputs.pathd.runident       = strcat('sim');

    % Basic simulation
    inputs.plotd.plotlevel='noplot';
    sim = AMIGO_SModel(inputs);
    
    fprintf('Run %d\n', i);
    
    score(i) = sum(sim.sim.states{1}(:));
end

fprintf('Score: %f\n', score);
fprintf('%d simulations failed\n', sum(isnan(score)));
hist(score);
