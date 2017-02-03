# Experiment - Tarkin

Experiment designed to see if the final PE stage is stable.  Repeat the final PE stage many time for the same set of experiments.

* PE	used	eSS	with	lsqnonlin	and	a	5	minute	maximum	duration
* PE	used	the	log	likelhood	cost

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-Tarkin
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('Tarkin-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "Tarkin-batch1"

