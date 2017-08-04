function [] = run_in_silico_experiment( resultBase, numLoops, numExperiments )

global epccOutputResultFileNameBase;
global epccNumLoops;
global Kb;

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');
Kb_vector = [0.0005, 0.0023, 0.0126, 0.023]; % Vector of values for Kb parameter    

for Kb_index=2%1:length(Kb_vector)
    Kb = Kb_vector(Kb_index);
    for epcc_exps=1:numExperiments
        try
            epccOutputResultFileNameBase = [resultBase,'-',num2str(Kb_index),'-',num2str(numLoops),'_loops-',num2str(epcc_exps)];
            epccNumLoops = numLoops;
            gal1_in_silico_loop;
        catch err
            %open file
            errorFile = [resultBase,'-',num2str(Kb_index),'-',num2str(numLoops),'_loops-',num2str(epcc_exps),'.errorLog'];
            fid = fopen(errorFile,'a+');
            fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
            % close file
            fclose(fid);
        end
    end
end

