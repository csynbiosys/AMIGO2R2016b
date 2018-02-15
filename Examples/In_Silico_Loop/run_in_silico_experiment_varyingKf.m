function [] = run_in_silico_experiment_varyingKf( resultBase, numExperiments )

global epccOutputResultFileNameBase;
global IPTGe

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');  
for epcc_exps=1:numExperiments
  try
        epccOutputResultFileNameBase = [resultBase,'-',num2str(epcc_exps)];
        %PLac_in_silico;
        %InduciblePromoter_in_silico;
        InduciblePromoter_Kfvarying;
    catch err
        %open file
        errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
        fid = fopen(errorFile,'a+');
        fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
        % close file
        fclose(fid);
    end

end

