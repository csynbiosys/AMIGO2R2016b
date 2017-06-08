   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Bacterial_batch_growth
Results folder in problem folder:	 Results\Bacterial_batch_growth\LRank_bbg_2exps 


---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-08
ivp_AbsTol: 1e-08
sensmex: cvodesg_bbg
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 2


--> Number of model parameters: 4

--> Vector of parameters (nominal values):

	par0=[   0.40000     5.00000     0.05000     0.50000  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 2


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[2.000e+00  3.000e+01  ]
		Experiment 2: 
			exp_y0=[2.000e+00  1.500e+01  ]

-->Final process time for each experiment: 
		Experiment 1: 	 10.000000

-->Final process time for each experiment: 
		Experiment 2: 	 10.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 11: 	 0.000e+00  1.000e+00  2.000e+00  3.000e+00  4.000e+00  5.000e+00  6.000e+00  7.000e+00  8.000e+00  9.000e+00  1.000e+01  

-->Sampling times for each experiment: 
		Experiment 2: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 11: 	 0.000e+00  1.000e+00  2.000e+00  3.000e+00  4.000e+00  5.000e+00  6.000e+00  7.000e+00  8.000e+00  9.000e+00  1.000e+01  

--> There is no manipulable (control, stimulus, input) variable, inputs.model.n_stimulus=0


-->Number of observables:
	Experiment 1: 2
	Experiment 2: 2

-->Observables:
		Experiment 1:
			obsB=cb
			obsS=cs
		Experiment 2:
			obsB=cb
			obsS=cs


------> RANKING for experiment: 1



------>ABSOLUTE Ranking of model unknowns:

			par value		d_msqr		 d_mabs		 d_mean			d_max		  d_min
____________________________________________________________________________________________
	mumax   5.0000e+00   3.6877e-01   1.2315e+00  -9.7241e-01    8.1819e-01   -2.9877e+00 
	kd      5.0000e+00   3.6526e-01   1.2285e+00   9.2247e-01    2.9860e+00   -9.6104e-01 
	yield   5.0000e+00   5.9150e-02   1.8578e-01   1.8578e-01    4.4299e-01    0.0000e+00 
	ks      5.0000e+00   5.4392e-02   1.8158e-01   1.4323e-01    4.4152e-01   -1.1922e-01 
____________________________________________________________________________________________


------>RELATIVE Ranking of model unknowns:

			par value		rd_msqr		rd_mabs		rd_mean			rd_max		rd_min
____________________________________________________________________________________________
____________________________________________________________________________________________
	kd      5.0000e+00   4.2589e+00   1.2177e+01  -1.1790e+01    2.9860e+00   -4.7423e+01 
	mumax   5.0000e+00   3.5776e+00   1.0274e+01   9.8776e+00    3.9776e+01   -2.9877e+00 
	ks      5.0000e+00   5.4104e-01   1.5490e+00  -1.4905e+00    4.4152e-01   -6.0391e+00 
	yield   5.0000e+00   3.9203e-02   1.3375e-01   1.3375e-01    4.4850e-01    0.0000e+00 
____________________________________________________________________________________________


------> RANKING for experiment: 2



------>ABSOLUTE Ranking of model unknowns:

			par value		d_msqr		 d_mabs		 d_mean			d_max		  d_min
____________________________________________________________________________________________
	kd      5.0000e+00   1.1718e-01   3.9776e-01   3.0539e-01    8.6028e-01   -5.4941e-01 
	mumax   5.0000e+00   1.1698e-01   3.9235e-01  -3.2467e-01    4.0470e-01   -8.6029e-01 
	yield   5.0000e+00   3.0880e-02   9.7761e-02   9.7761e-02    2.2155e-01    0.0000e+00 
	ks      5.0000e+00   3.0100e-02   1.0096e-01   8.3470e-02    2.2154e-01   -1.0385e-01 
____________________________________________________________________________________________


------>RELATIVE Ranking of model unknowns:

			par value		rd_msqr		rd_mabs		rd_mean			rd_max		rd_min
____________________________________________________________________________________________
____________________________________________________________________________________________
	kd      5.0000e+00   4.2473e+00   1.2065e+01  -1.1812e+01    8.6028e-01   -4.7430e+01 
	mumax   5.0000e+00   3.0645e+00   8.7533e+00   8.4949e+00    3.4167e+01   -8.6029e-01 
	ks      5.0000e+00   8.0918e-01   2.3066e+00  -2.2401e+00    2.2154e-01   -9.0411e+00 
	yield   5.0000e+00   6.3052e-02   2.0368e-01   2.0368e-01    7.1967e-01    0.0000e+00 
____________________________________________________________________________________________


------> OVERALL RANKING



------>ABSOLUTE Ranking of GLOBAL model unknowns:

			par value		d_msqr		 d_mabs		 d_mean			d_max		  d_min
____________________________________________________________________________________________
____________________________________________________________________________________________
	mumax   5.0000e+00   2.4288e-01   8.1194e-01  -6.4854e-01    8.1819e-01   -2.9877e+00 
	kd      5.0000e+00   2.4122e-01   8.1314e-01   6.1393e-01    2.9860e+00   -9.6104e-01 
	yield   5.0000e+00   4.5015e-02   1.4177e-01   1.4177e-01    4.4299e-01    0.0000e+00 
	ks      5.0000e+00   4.2246e-02   1.4127e-01   1.1335e-01    4.4152e-01   -1.1922e-01 
____________________________________________________________________________________________


------>RELATIVE Ranking of GLOBAL model unknowns:

			par value		rd_msqr		rd_mabs		rd_mean			rd_max		rd_min
____________________________________________________________________________________________
	kd      5.0000e+00   4.2531e+00   1.2121e+01  -1.1801e+01    2.9860e+00   -4.7430e+01 
	mumax   5.0000e+00   3.3211e+00   9.5137e+00   9.1863e+00    3.9776e+01   -2.9877e+00 
	ks      5.0000e+00   6.7511e-01   1.9278e+00  -1.8653e+00    4.4152e-01   -9.0411e+00 
	yield   5.0000e+00   5.1128e-02   1.6871e-01   1.6871e-01    7.1967e-01    0.0000e+00 
____________________________________________________________________________________________
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations
