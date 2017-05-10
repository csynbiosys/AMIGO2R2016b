# Experiment - Lobot

Rerunning of experiments now using a much more believable set of parameters
for truth.

In this experiment the input is 10 minute pulses of gal=2 every hour. Otherwise gal=0.

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-Lobot
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('Lobot-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "Lobot-batch1"

