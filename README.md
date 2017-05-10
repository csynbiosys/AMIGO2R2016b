# Experiment - Hondo

Rerunning of experiments now using a much more believable set of parameters
for truth.

In this experiment the the input is 6 hours of gal=2 followed by 6 hours of
gal=0.  This cycle repeats 5 times.

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-Hondo
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('Hondo-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "Hondo-batch1"

