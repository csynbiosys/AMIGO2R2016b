# Experiment - BB8

Using the stitching together of multiple experiment correctly from
Jawa now add the new defintion of model parameters and the looping
of the result to produce multiple fits as more and more of the 
data is used.

Extention from Gungi to handle special case when we want 8 loops but
it does not divide nicely into 60 hours.

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-BB8
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('BB8-batch1', 50); quit;"
```

This will run 50 runs each spliting the experiment into 8 sub-experiments and created 
files starting with "BB8-batch1-8loops".

