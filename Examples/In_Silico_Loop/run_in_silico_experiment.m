function [] = run_in_silico_experiment( resultBase, numExperiments )

global epccOutputResultFileNameBase;

cd ('/Users/ahume/FLIP/AMIGO2R2016b');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');
    

for exps=1:numExperiments
    try
        epccOutputResultFileNameBase = [resultBase,'-',num2str(exps)];
        gal1_run_in_silico_stepInput_noiseOnInitialValues_1Obs;
    catch err
        %open file
        errorFile = [resultBase,'-',num2str(exps),'.errorLog']
        fid = fopen(errorFile,'a+');
        % write the error to file
        % first line: message
        fprintf(fid,'%s\n',err.message);

        % following lines: stack
        for e=1:length(err.stack)
            fprintf(fid,'%sin %s at %i\n',txt,err.stack(e).name,err.stack(e).line);
        end

        % close file
        fclose(fid);
    end
end

