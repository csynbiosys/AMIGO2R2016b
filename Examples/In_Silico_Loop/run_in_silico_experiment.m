function [] = run_in_silico_experiment( resultBase, numLoops, numExperiments )

global epccOutputResultFileNameBase;
global epccNumLoops;

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');
    

for epcc_exps=1:numExperiments
    try
        epccOutputResultFileNameBase = [resultBase,'-',num2str(numLoops),'_loops-',num2str(epcc_exps)];
        epccNumLoops = numLoops;
        %gal1_in_silico_loop_fixed_steps;
        %gal1_in_silico_loop_optimised_steps_fminCon;
        gal1_in_silico_loop_optimised_steps_fminsearchCon;
        %gal1_in_silico_loop_optimised_steps_fminsearchsolnp;
        %gal1_in_silico_loop_optimised_steps_fminsearchfsqp;
        %gal1_in_silico_loop_pulsedown;
    catch err
        %open file
        errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
        fid = fopen(errorFile,'a+');
        fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
        % close file
        fclose(fid);
    end
end

