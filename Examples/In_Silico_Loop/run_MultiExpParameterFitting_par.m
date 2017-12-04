function [] = run_MultiExpParameterFitting_par(resultBase, numIterations)

cd('../..');
AMIGO_Startup();
cd('Examples/In_Silico_Loop');

parfor epcc_exps=1:numIterations
    try
        epccOutputResultFileNameBase = [resultBase];
        %[out] = fit_to_acs_data_modified_f(epccOutputResultFileNameBase,epcc_exps);
        %[out] = fit_to_acs_data_modified_f_llk(epccOutputResultFileNameBase,epcc_exps);
        [out] = fit_to_acs_data_modified_f_llk_reducedPar(epccOutputResultFileNameBase,epcc_exps);
    catch err
        %open file
        errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
        fid = fopen(errorFile,'a+');
        fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
        % close file
        fclose(fid);
    end
end

end