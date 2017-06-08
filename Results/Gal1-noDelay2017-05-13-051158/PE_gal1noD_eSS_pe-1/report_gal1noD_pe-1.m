   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-051158
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-051158\PE_gal1noD_eSS_pe-1 


-------------------------------
Optimisation related active settings
-------------------------------


------> Global Optimizer: Enhanced SCATTER SEARCH for parameter estimation

		>Summary of selected eSS options: 
ess_options.
	dim_refset:	'auto'
	inter_save:	0
	iterprint:	1
	local:	(1x1 struct)
	log_var:	[]
	maxeval:	200000
	maxtime:	300
	ndiverse:	'auto'

		  default options are used. 


		>Bounds on the unknowns:

		v_guess(1)=0.000060;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.081628;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=2.995172;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.075325;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.035513;  v_min(5)=0.003000; v_max(5)=0.300000;



-----------------------------------------------
 Initial value problem related active settings
-----------------------------------------------
ivpsolver: cvodes
RelTol: 1e-07
AbsTol: 1e-07
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-07
ivp_AbsTol: 1e-07
sensmex: cvodesg_gal1noD
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 3


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.00001     0.01030     1.89070     0.03680     0.03000     0.01000     0.01000     0.00230     0.02000  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.692e-03  1.376e-03  1.582e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.9904	  0.6837	  0.0480	  0.0487	  0.1347	  0.1318	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 73

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		-0.00308121
		0.000453803
		0.00306946
		0.00279381
		0.00351586
		0.00162192
		0.000783866
		0.000820747
		0.00522346
		0.00467046
		0.00324957
		0.00421728
		0.00242941
		0.0106038
		0.00729492
		0.00576578
		0.00370069
		0.00430182
		0.00585716
		0.00765361
		0.00675604
		0.0165834
		0.00548118
		0.0110456
		0.0102321
		0.00964277
		0.0114416
		0.0201074
		0.0129767
		0.018631
		0.0144662
		0.0145923
		0.0204439
		0.0235484
		0.0170309
		0.012898
		0.0234178
		0.0214184
		0.0186983
		0.0148006
		0.0231491
		0.0229919
		0.0289988
		0.0163023
		0.0218078
		0.0247553
		0.0237889
		0.0221578
		0.0202484
		0.025311
		0.0227745
		0.0227207
		0.019121
		0.0227306
		0.0209549
		0.0212433
		0.0265971
		0.0169114
		0.0173454
		0.025872
		0.0204276
		0.0211381
		0.0203533
		0.0203693
		0.0228139
		0.0286898
		0.0211573
		0.019316
		0.0220427
		0.0209754
		0.0274151
		0.0211184
		0.0201987
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 25.806625 %	 max error: 105.133848 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007429 max data: 0.028999

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000727 
	   

>>>> Computational cost: 300.145924 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  3.7385e-01 (4.52e+05%); (bound active) 
	Vm1    : 7.4340e-03  +-  4.3476e-01 (5.85e+03%); 
	h1     : 9.0633e-01  +-  6.1017e+01 (6.73e+03%); 
	Km1    : 1.0110e-01  +-  8.3313e+00 (8.24e+03%); 
	d1     : 1.5207e-02  +-  1.1076e-01 (     728%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.998676e-01	 9.989149e-01	 9.993233e-01	 9.933831e-01
	 -9.998676e-01	 1.000000e+00	 -9.994905e-01	 -9.988149e-01	 -9.923590e-01
	 9.989149e-01	 -9.994905e-01	 1.000000e+00	 9.967997e-01	 9.914716e-01
	 9.993233e-01	 -9.988149e-01	 9.967997e-01	 1.000000e+00	 9.911026e-01
	 9.933831e-01	 -9.923590e-01	 9.914716e-01	 9.911026e-01	 1.000000e+00
