# Experiment - MazKanata

Rerunning of experiments now using a much more believable set of parameters
for truth.

In this experiment the input is 'designed'.  The input goes from 0 to 2 and then
back down to 0 is 13 steps. 

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-MazKanata
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('MazKanata-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "MazKanata-batch1"

