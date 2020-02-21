# Experiment - Gungi

Using the stitching together of multiple experiment correctly from
Jawa now add the new defintion of model parameters and the looping
of the result to produce multiple fits as more and more of the 
data is used.

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-Gungi
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('Gungi-batch1', 5, 50); quit;"
```

This will run 50 runs each spliting the experiment into 5 sub-experiments  and created 
files starting with "Gungi-batch1-5loops".

