results_folder = ['InduciblePromoter',datestr(now,'yyyy-mm-dd-HHMMSS')];
short_name     = 'IndProm';

inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'Identifiability analysis';

inputs.model=Model_ForStellingData_Lucia_George();
inputs=loadExperimentSettings_Lucia_George(inputs);
inputs=loadGrankSettings_Lucia_George(inputs);


AMIGO_Prep(inputs);

AMIGO_ContourP(inputs) 