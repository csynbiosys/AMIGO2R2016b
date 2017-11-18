epccOutputResultFileNameBase='test';
epccNumLoops=1;
numExperiments=1;
stepd=1500;

for stepd=[1500 1000 500]
    parfor ii=1:8
        [out]=gal1_in_silico_loop_fixed_steps_DEvolution_par(epccOutputResultFileNameBase,epccNumLoops,stepd,ii);
    end
end