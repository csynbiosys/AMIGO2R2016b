   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Bacterial_batch_growth
Results folder in problem folder:	 Results\Bacterial_batch_growth\LRank_bbg_1exp 


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


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[2.000e+00  3.000e+01  ]

-->Final process time for each experiment: 
		Experiment 1: 	 10.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 11: 	 0.000e+00  1.000e+00  2.000e+00  3.000e+00  4.000e+00  5.000e+00  6.000e+00  7.000e+00  8.000e+00  9.000e+00  1.000e+01  

--> There is no manipulable (control, stimulus, input) variable, inputs.model.n_stimulus=0


-->Number of observables:
	Experiment 1: 2

-->Observables:
		Experiment 1:
			obsB=cb
			obsS=cs


------> RANKING for experiment: 1



------>ABSOLUTE Ranking of model unknowns:

			par value		d_msqr		 d_mabs		 d_mean			d_max		  d_min
____________________________________________________________________________________________
	kd      5.0000e-02   8.4506e+00   2.9935e+01  -6.3731e+00    7.0427e+01   -6.9054e+01 
	mumax   4.0000e-01   8.1060e+00   2.6102e+01  -1.0838e+01    4.0883e+01   -9.4698e+01 
	yield   5.0000e-01   3.2971e+00   1.0659e+01   1.0659e+01    3.1821e+01    0.0000e+00 
	ks      5.0000e+00   1.3232e-01   4.1690e-01   1.7263e-01    1.6617e+00   -7.3408e-01 
____________________________________________________________________________________________


------>RELATIVE Ranking of model unknowns:

			par value		rd_msqr		rd_mabs		rd_mean			rd_max		rd_min
____________________________________________________________________________________________
____________________________________________________________________________________________
	mumax   4.0000e-01   1.6506e+00   3.7733e+00  -3.0326e+00    4.0883e+01   -9.4698e+01 
	ks      5.0000e+00   5.7029e-01   1.1372e+00   9.9886e-01    9.2831e+00   -7.3408e-01 
	yield   5.0000e-01   5.5007e-01   1.3431e+00   1.3431e+00    3.1821e+01    0.0000e+00 
	kd      5.0000e-02   1.9096e-01   4.5836e-01   2.7749e-01    7.0427e+01   -6.9054e+01 
____________________________________________________________________________________________
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations
