# Experiment - Yoda

Child of experiment Greedo for Gal 1 model with In-Silico-Loop

The change from Han Solo is:
* 20 loops each with 3 hours of experiment

Full description:
* Each	run	executed	20	loops with 3 hours of experiment
* Using	gal1	no-delay	model
* Only	the	fluoresence	state	was	observable
* Parameters	alpha2,	d2,	Kf	and	Kb	were	fixed	to	the	true	value	of	1
* The	system	tried	to	fit	alpha1,	Vm1,	h1,	Km1	and	d1
* The	range	for	parameters	alpha1,	Vm1,	Km1	and	d1	was	0.1	times	the	true	value	to	10	times	the	true	value
* The	range	for	parameter	h1	was	0	to	4	(true	was	2.225)
* Each	experiement	was	independent	from	the	other	experiments	and	lasted	for	6	hours
* Experiments	were	sampled	every	5	mins
* OID	used	eSS	with	fmincon	and	a	5	minute	maximum	duration
* OID	used	E-optimality
* The	input	stimulus was	stepped	with 5 steps	(values	between	0	and	2)
* The input stimulus steps are of fixed duration.
* Mocked	experiments	always	start	from	the	equilibrum	state
* Hetero	noise	was	added	to	output	with	a	standard	deviation	of	10%	of	the	value
* PE	used	eSS	with	lsqnonlin	and	a	5	minute	maximum	duration
* PE	used	the	log	likelhood	cost

## To run the experiment

```
git clone <this-repo>
git checkout Experiment-Yoda
cd AMIGO2R2016/Examples/In_Silico_Loop
matlab -nodesktop -nosplash -r "run_in_silico_experiment('Yoda-batch1', 50); quit;"
```

This will run 50 runs and created files starting with "Yoda-batch1"

