# Experiment - Jawa

Reworking of the code to that it stitches together one experiment after
the other correctly rather than previous experiments where each 
sub-experiment started from the same steady state.

The starting steady state for the whole experiment is now the non-gal
steady state. Previously it was the gal=2 steady state.


## To run the experiment

```
git clone <this-repo>
git checkout Experiment-Jawa
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('Jawa-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "Jawa-batch1"

