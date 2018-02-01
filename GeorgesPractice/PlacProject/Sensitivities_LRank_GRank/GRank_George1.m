results_folder = strcat('GalOpenLoop1',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'galOL1';

inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'initial_setup';

inputs.model=Model_OpenLoop_BestFit_George1();
inputs=loadExperimentSettings_George1(inputs);
inputs=loadGrankSettings_George1(inputs);


AMIGO_Prep(inputs);                           
  
AMIGO_GRank(inputs)         % Calls the task for Global Rank

AMIGO_LRank(inputs)