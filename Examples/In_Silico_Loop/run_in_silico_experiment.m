function [] = run_in_silico_experiment( resultBase, numExperiments )

global epccOutputResultFileNameBase;

cd ('/Users/ahume/FLIP/AMIGO2R2016b');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');
    
for exps=1:numExperiments
    epccOutputResultFileNameBase = [resultBase,'-',num2str(exps)];
    gal1_run_in_silico_stepInput_noiseOnInitialValues_1Obs;
end

