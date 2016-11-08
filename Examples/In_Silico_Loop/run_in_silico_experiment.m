function [] = run_in_silico_experiment( resultBase, numExperiments )

global epccOutputResultFileNameBase;

cd ('/Users/ahume/FLIP/AMIGO2R2016b');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');
    

for epcc_exps=1:numExperiments
    try
        epccOutputResultFileNameBase = [resultBase,'-',num2str(epcc_exps)];
        gal1_run_in_silico_stepInput_noiseOnInitialValues_1Obs;
    catch err
        %open file
        errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
        fid = fopen(errorFile,'a+');
        fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
        % close file
        fclose(fid);
    end
end

