function [] = run_in_silico_experiment( resultBase, numExperiments )

global epccOutputResultFileNameBase;

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');
    

for epcc_exps=1:numExperiments
    try
        epccOutputResultFileNameBase = [resultBase,'-',num2str(epcc_exps)];
        %gal1_in_silico_loop;
        %gal1_in_silico_loop_binary_single;
        %gal1_in_silico_loop_binary_single_telegraph;
        %gal1_in_silico_loop_single_telegraph;
        %gal1_in_silico_loop_binary_var;
        %gal1_in_silico_loop_binary_var_telegraph;
        gal1_in_silico_loop_var_telegraph;
    catch err
        %open file
        errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
        fid = fopen(errorFile,'a+');
        fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
        % close file
        fclose(fid);
    end
end

