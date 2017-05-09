# Experiment - Biggs

Rerunning of experiments now using a much more believable set of parameters
for truth.

In this experiment the input is 'designed'.  The input comes down in small steps
for 30 hours and then goes up in small steps for 30 hours.

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-Ventress
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('Ventress-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "Ventress-batch1"

