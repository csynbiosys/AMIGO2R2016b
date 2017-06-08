   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-184058
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-184058\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000005;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.004399;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.632050;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.274448;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.150728;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.398e-05  2.762e-05  3.177e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.6842	  0.4875	  0.3325	  0.5802	  0.3942	  0.0000	
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
		0.000933564
		-0.00643871
		0.00634912
		-0.00364263
		-6.61768e-05
		0.000867836
		0.00521631
		-0.000637812
		0.00293542
		0.00417975
		-0.000234815
		0.000794974
		0.00685358
		0.0094578
		0.00862285
		0.00233872
		0.0082849
		0.0110472
		0.0112347
		0.00885867
		0.00750875
		0.00679604
		0.011006
		0.00730456
		0.0103938
		0.0148439
		0.0104242
		0.0121527
		0.012605
		0.0167472
		0.0208922
		0.0203382
		0.0158717
		0.0181053
		0.0230036
		0.0201545
		0.022908
		0.0209296
		0.0190955
		0.0197419
		0.0280109
		0.0323845
		0.0285137
		0.0247479
		0.0217626
		0.0222536
		0.0230677
		0.0233606
		0.0273649
		0.0261175
		0.0298272
		0.0259548
		0.0352565
		0.0265483
		0.0278137
		0.0264466
		0.0249429
		0.0305106
		0.0305203
		0.0271679
		0.0243418
		0.0287201
		0.0279
		0.0316938
		0.0262273
		0.025695
		0.0267127
		0.0276531
		0.0258317
		0.0280619
		0.0253553
		0.0328843
		0.0304356
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 53.099117 %	 max error: 1146.134458 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009068 max data: 0.035257

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000742 
	   

>>>> Computational cost: 208.978940 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  1.9562e-02 (2.36e+04%); (bound active) 
	Vm1    : 1.1063e-02  +-  1.9961e-02 (     180%); 
	h1     : 5.0000e+00  +-  1.2209e+11 (2.44e+12%); (bound active) 
	Km1    : 3.6800e-03  +-  3.9910e+08 (1.08e+13%); (bound active) 
	d1     : 3.2744e-02  +-  8.5149e-02 (     260%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -7.050413e-01	 -1.269336e-02	 -1.897417e-02	 2.947847e-01
	 -7.050413e-01	 1.000000e+00	 6.713097e-01	 6.743663e-01	 4.650521e-01
	 -1.269336e-02	 6.713097e-01	 1.000000e+00	 9.999528e-01	 9.138150e-01
	 -1.897417e-02	 6.743663e-01	 9.999528e-01	 1.000000e+00	 9.101652e-01
	 2.947847e-01	 4.650521e-01	 9.138150e-01	 9.101652e-01	 1.000000e+00
