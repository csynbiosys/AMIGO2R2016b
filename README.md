# Experiment - CadBane

Rerunning of experiments now using a much more believable set of parameters for truth.

In this experiment the input is obtained using OID planning the whole 60 hours of input
before the experiment starts.

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-CadBane
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('CadBane-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "CadBane-batch1"

