function [] = Run_fit_to_Stelling_data_parfor( resultBase, numExperiments )

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');

parfor epcc_exps=1:numExperiments
        try
            epccOutputResultFileNameBase = [resultBase,'-',num2str(epcc_exps)];
            [out] = fit_to_Stelling_data_f(epccOutputResultFileNameBase,epcc_exps);
        catch err
            %open file
            errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
            fid = fopen(errorFile,'a+');
            fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
            % close file
            fclose(fid);
        end
end

