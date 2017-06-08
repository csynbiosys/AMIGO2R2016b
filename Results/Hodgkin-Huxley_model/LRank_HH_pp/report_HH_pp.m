   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Hodgkin-Huxley_model
Results folder in problem folder:	 Results\Hodgkin-Huxley_model\LRank_HH_pp 


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


------> RANKING for experiment: 1



------>ABSOLUTE Ranking of model unknowns:

			par value		d_msqr		 d_mabs		 d_mean			d_max		  d_min
____________________________________________________________________________________________
	gL    3.0000e-01   3.9093e+00   1.1565e+01  -1.1565e+01    0.0000e+00   -2.1037e+01 
	VK    1.2000e+01   1.9433e-01   5.6589e-01   5.6589e-01    1.0119e+00    0.0000e+00 
	VL   -1.0613e+01   8.5034e-02   2.4627e-01   2.4627e-01    4.8363e-01    0.0000e+00 
	gK    3.6000e+01   4.6968e-02   1.3195e-01   1.3195e-01    2.6540e-01    0.0000e+00 
	Cm    1.0000e+00   3.5078e-02   1.0529e-01  -4.2527e-03    1.2100e-01   -2.0662e-01 
	VNa  -1.1500e+02   8.0373e-03   2.5065e-02   2.5065e-02    3.4458e-02    0.0000e+00 
	gNa   1.2000e+02   7.9613e-03   2.4847e-02  -2.4847e-02    0.0000e+00   -3.3821e-02 
____________________________________________________________________________________________


------>RELATIVE Ranking of model unknowns:

			par value		rd_msqr		rd_mabs		rd_mean			rd_max		rd_min
____________________________________________________________________________________________
____________________________________________________________________________________________
	VK    1.2000e+01   1.0880e+00   2.7357e+00   2.7357e+00    6.7168e+00    0.0000e+00 
	gK    3.6000e+01   8.2092e-01   1.9837e+00   1.9837e+00    5.2852e+00    0.0000e+00 
	gL    3.0000e-01   5.4825e-01   1.3872e+00  -1.3872e+00    0.0000e+00   -3.4912e+00 
	VL   -1.0613e+01   4.3332e-01   1.0680e+00  -1.0680e+00    0.0000e+00   -2.8393e+00 
	gNa   1.2000e+02   3.9460e-01   1.0956e+00  -1.0956e+00    0.0000e+00   -2.2451e+00 
	VNa  -1.1500e+02   3.8348e-01   1.0619e+00  -1.0619e+00    0.0000e+00   -2.1920e+00 
	Cm    1.0000e+00   1.3023e-02   3.7187e-02   1.0949e-02    6.6932e-02   -5.1474e-02 
____________________________________________________________________________________________


------> RANKING for experiment: 2



------>ABSOLUTE Ranking of model unknowns:

			par value		d_msqr		 d_mabs		 d_mean			d_max		  d_min
____________________________________________________________________________________________
	gL    3.0000e-01   3.7506e+00   1.0618e+01  -1.0618e+01    0.0000e+00   -1.9107e+01 
	VK    1.2000e+01   1.8830e-01   5.2130e-01   5.2130e-01    9.4733e-01    0.0000e+00 
	VL   -1.0613e+01   8.0064e-02   2.2253e-01   2.2253e-01    4.3033e-01    0.0000e+00 
	gK    3.6000e+01   4.4327e-02   1.1861e-01   1.1861e-01    2.4176e-01    0.0000e+00 
	Cm    1.0000e+00   3.6640e-02   1.0372e-01  -1.6778e-02    1.1861e-01   -2.0662e-01 
	VNa  -1.1500e+02   8.1419e-03   2.4125e-02   2.4125e-02    3.3085e-02    0.0000e+00 
	gNa   1.2000e+02   8.0780e-03   2.3949e-02  -2.3949e-02    0.0000e+00   -3.2550e-02 
____________________________________________________________________________________________


------>RELATIVE Ranking of model unknowns:

			par value		rd_msqr		rd_mabs		rd_mean			rd_max		rd_min
____________________________________________________________________________________________
____________________________________________________________________________________________
	VK    1.2000e+01   9.5101e-01   2.2933e+00   2.2933e+00    5.4915e+00    0.0000e+00 
	gK    3.6000e+01   6.9795e-01   1.6169e+00   1.6169e+00    4.2044e+00    0.0000e+00 
	gL    3.0000e-01   4.6970e-01   1.1534e+00  -1.1534e+00    0.0000e+00   -2.7690e+00 
	VL   -1.0613e+01   3.6371e-01   8.7123e-01  -8.7123e-01    0.0000e+00   -2.2062e+00 
	gNa   1.2000e+02   3.6056e-01   9.6793e-01  -9.6793e-01    0.0000e+00   -1.8869e+00 
	VNa  -1.1500e+02   3.4961e-01   9.3638e-01  -9.3638e-01    0.0000e+00   -1.8380e+00 
	Cm    1.0000e+00   1.2413e-02   3.3882e-02   4.7291e-03    5.7296e-02   -5.1474e-02 
____________________________________________________________________________________________


------> OVERALL RANKING



------>ABSOLUTE Ranking of GLOBAL model unknowns:

			par value		d_msqr		 d_mabs		 d_mean			d_max		  d_min
____________________________________________________________________________________________
____________________________________________________________________________________________
	gL    3.0000e-01   3.8300e+00   1.1092e+01  -1.1092e+01    0.0000e+00   -2.1037e+01 
	VK    1.2000e+01   1.9132e-01   5.4360e-01   5.4360e-01    1.0119e+00    0.0000e+00 
	VL   -1.0613e+01   8.2549e-02   2.3440e-01   2.3440e-01    4.8363e-01    0.0000e+00 
	gK    3.6000e+01   4.5647e-02   1.2528e-01   1.2528e-01    2.6540e-01    0.0000e+00 
	Cm    1.0000e+00   3.5859e-02   1.0451e-01  -1.0515e-02    1.2100e-01   -2.0662e-01 
	VNa  -1.1500e+02   8.0896e-03   2.4595e-02   2.4595e-02    3.4458e-02    0.0000e+00 
	gNa   1.2000e+02   8.0196e-03   2.4398e-02  -2.4398e-02    0.0000e+00   -3.3821e-02 
____________________________________________________________________________________________


------>RELATIVE Ranking of GLOBAL model unknowns:

			par value		rd_msqr		rd_mabs		rd_mean			rd_max		rd_min
____________________________________________________________________________________________
	VK    1.2000e+01   1.0195e+00   2.5145e+00   2.5145e+00    6.7168e+00    0.0000e+00 
	gK    3.6000e+01   7.5943e-01   1.8003e+00   1.8003e+00    5.2852e+00    0.0000e+00 
	gL    3.0000e-01   5.0897e-01   1.2703e+00  -1.2703e+00    0.0000e+00   -3.4912e+00 
	VL   -1.0613e+01   3.9852e-01   9.6963e-01  -9.6963e-01    0.0000e+00   -2.8393e+00 
	gNa   1.2000e+02   3.7758e-01   1.0318e+00  -1.0318e+00    0.0000e+00   -2.2451e+00 
	VNa  -1.1500e+02   3.6655e-01   9.9916e-01  -9.9916e-01    0.0000e+00   -2.1920e+00 
	Cm    1.0000e+00   1.2718e-02   3.5534e-02   7.8393e-03    6.6932e-02   -5.1474e-02 
____________________________________________________________________________________________
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations
