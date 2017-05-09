# Experiment - Ventress

Rerunning of experiments now using a much more believable set of parameters
for truth.

In this experiment the input is chosen randomly with a different value between
0 and 2 chosen for every hour.

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-Ventress
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('Ventress-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "Ventress-batch1"

