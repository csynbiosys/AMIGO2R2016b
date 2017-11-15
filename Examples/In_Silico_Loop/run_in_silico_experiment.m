function [] = run_in_silico_experiment( resultBase, numLoops, numExperiments )

global epccOutputResultFileNameBase;
global epccNumLoops;
global stepd;

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');
    
for sd =[1500,750,600,500,375,300,250,200]
    for epcc_exps=1:numExperiments
        try
            epccOutputResultFileNameBase = [resultBase,'-',num2str(3000/sd),'_Fixedsteps-',num2str(numLoops),'_loops-',num2str(epcc_exps)];
            epccNumLoops = numLoops;
            stepd = sd;
            %gal1_in_silico_loop_fixed_steps;
            gal1_in_silico_loop_fixed_steps_DEvolution;
            %gal1_in_silico_loop_optimised_steps_fminCon;
            %gal1_in_silico_loop_optimised_steps_fminsearchCon;
            %gal1_in_silico_loop_optimised_steps_DEvolution;
            %gal1_in_silico_loop_optimised_steps_fminsearchsolnp;
            %gal1_in_silico_loop_optimised_steps_fminsearchfsqp;
            %gal1_in_silico_loop_pulsedown;
        catch err
            %open file
            %errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
            errorFile = [resultBase,'-',num2str(3000/sd),'_Fixedsteps-',num2str(numLoops),'_loops-',num2str(epcc_exps),'.errorLog'];
            fid = fopen(errorFile,'a+');
            fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
            % close file
            fclose(fid);
        end
    end
end
