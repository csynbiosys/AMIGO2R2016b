# Experiment - Biggs

Rerunning of experiments now using a much more believable set of parameters
for truth.

In this experiment the input is 'designed'.  The input goes up in small steps
for 30 hours and then comes down in small steps for 30 hours.  The starting
state of the mock simulations are the true steady state when gal input is
zero.

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-Biggs
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('Biggs-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "Biggs-batch1"

