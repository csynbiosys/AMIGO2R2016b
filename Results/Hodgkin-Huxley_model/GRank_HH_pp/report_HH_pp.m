   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 08-Jun-2017
Problem folder:	 Results\Hodgkin-Huxley_model
Results folder in problem folder:	 Results\Hodgkin-Huxley_model\GRank_HH_pp 


---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-07
ivp_AbsTol: 1e-07
sensmex: cvodesg_HH
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 4


--> Number of model parameters: 7

--> Vector of parameters (nominal values):

	par0=[ 120.00000    36.00000     0.30000  -115.00000    12.00000   -10.61300     1.00000  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 2


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[0.000e+00  3.177e-01  5.300e-02  5.959e-01  ]
		Experiment 2: 
			exp_y0=[0.000e+00  3.177e-01  5.300e-02  5.959e-01  ]

-->Final process time for each experiment: 
		Experiment 1: 	 40.000000

-->Final process time for each experiment: 
		Experiment 2: 	 36.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 11: 	 0.000e+00  4.000e+00  8.000e+00  1.200e+01  1.600e+01  2.000e+01  2.400e+01  2.800e+01  3.200e+01  3.600e+01  4.000e+01  

-->Sampling times for each experiment: 
		Experiment 2: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 10: 	 0.000e+00  4.000e+00  8.000e+00  1.200e+01  1.600e+01  2.000e+01  2.400e+01  2.800e+01  3.200e+01  3.600e+01  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		pulse-down interpolation is being used.
			Control values:
 			Input 1:	  5.0000	  0.0000	
			Control switching times: 	  0.0000	 20.0000	 40.0000


-->Input values/temporal elements for Experiment 2:
		pulse-down interpolation is being used.
			Control values:
 			Input 1:	  5.0000	  0.0000	
			Control switching times: 	  0.0000	 20.0000	 36.0000


-->Number of observables:
	Experiment 1: 1
	Experiment 2: 1

-->Observables:
		Experiment 1:
			obsV=yv
		Experiment 2:
			obsV=yv


------> GLOBAL RANKING



------>ABSOLUTE Ranking of GLOBAL unknown PARAMETERS:

			d_msqr		 d_mabs		 d_mean			d_max		  d_min
____________________________________________________________________________________________
	gL    2.8406e-01   8.0299e-01  -8.0299e-01    6.9475e-09   -1.5909e+00 
	VL    2.1625e-01   9.0692e-01   9.0692e-01    5.9980e-01    0.0000e+00 
	Cm    1.4070e-02   3.6819e-02   2.8192e-02    6.5581e-02   -1.4622e-02 
	gK    6.0778e-03   1.4423e-02   1.4423e-02    3.9939e-02   -4.0024e-13 
	VK    5.2779e-03   1.5674e-02   1.5674e-02    3.0629e-02   -2.6298e-13 
	gNa   2.7614e-04   5.3567e-04  -5.3566e-04    2.9195e-09   -1.9140e-03 
	VNa   2.2082e-04   4.3748e-04   4.3748e-04    1.5273e-03   -1.8884e-13 
____________________________________________________________________________________________


------>RELATIVE Ranking of GLOBAL unknown PARAMETERS: 

			rd_msqr		rd_mabs		rd_mean			rd_max		rd_min
____________________________________________________________________________________________
	VL    2.7015e-01   1.1489e+00   9.9013e-01    5.7556e-01   -8.7270e-02 
	gL    6.6332e-02   2.2828e-01   4.7746e-02    1.7910e-01   -9.8917e-02 
	VK    4.9148e-02   1.8122e-01   3.4556e-02    1.1981e-01   -7.4177e-02 
	gK    4.8260e-02   1.7484e-01   2.6278e-02    1.1498e-01   -7.5353e-02 
	Cm    2.3819e-02   7.0790e-02  -7.0725e-02    7.3077e-05   -1.1506e-01 
	gNa   8.1716e-04   2.4556e-03  -1.2584e-03    5.9674e-04   -3.5255e-03 
	VNa   7.2824e-04   2.2700e-03  -1.0663e-03    5.9831e-04   -2.9647e-03 
____________________________________________________________________________________________
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations
