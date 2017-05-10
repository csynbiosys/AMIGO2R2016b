# Experiment - Phasma

Rerunning of experiments now using a much more believable set of parameters
for truth.

In this experiment the the input is 1 hour of gal=2 followed by 1 hour of
gal=0.  This cycle repeats 30 times.

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-Phasma
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('Phasma-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "Phasma-batch1"

