results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD';


inputs.pathd.results_folder = results_folder;
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'pe';

%============================
% MODEL RELATED DATA
%============================

inputs.model=gal1_load_model_George1();

%==================================result
% EXPERIMENTAL SCHEME RELATED DATA & DATA RELATED INFO
%==================================

inputs.exps=gal1_load_experiments_George2(inputs);

%==================================
% ACQUIRE PERSUDO DATA
%==================================

sim=AMIGO_SData(inputs);

inputs.exps.exp_data   = sim.sim.exp_data;
inputs.exps.error_data = sim.sim.error_data;

result=gal1_PE_George2(inputs);
%result=gal1_PE_George1(inputs);
