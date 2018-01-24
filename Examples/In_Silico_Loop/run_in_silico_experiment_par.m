function [] = run_in_silico_experiment_par( resultBase, numLoops, numExperiments)

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');
    
for stepd = 150 %[1500,1000,750,600,500,375,300,250,200]
    parfor epcc_exps=1:numExperiments
        try
            %epccOutputResultFileNameBase = [resultBase,'-',num2str(3000/stepd),'_Fixedsteps-',num2str(numLoops),'_loops'];
            epccOutputResultFileNameBase = [resultBase,'-',num2str(3000/stepd),'_Optsteps-',num2str(numLoops),'_loops'];

            epccNumLoops = numLoops;
            %[out]=gal1_in_silico_loop_fixed_steps_DEvolution_par(epccOutputResultFileNameBase,epccNumLoops,stepd,epcc_exps);
            %[out]=gal1_in_silico_loop_optimised_steps_DEvolution_par(epccOutputResultFileNameBase,epccNumLoops,stepd,epcc_exps);
            [out]=gal1_in_silico_loop_optimised_steps_DEvolution_par_MemoryUsage(epccOutputResultFileNameBase,epccNumLoops,stepd,epcc_exps);

        catch err
            %errorFile = [resultBase,'-',num2str(3000/stepd),'_Fixedsteps-',num2str(numLoops),'_loops-',num2str(epcc_exps),'.errorLog'];
            errorFile = [resultBase,'-',num2str(3000/stepd),'_Optsteps-',num2str(numLoops),'_loops-',num2str(epcc_exps),'.errorLog'];
            fid = fopen(errorFile,'a+');
            fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
            fclose(fid);
        end
    end
end
