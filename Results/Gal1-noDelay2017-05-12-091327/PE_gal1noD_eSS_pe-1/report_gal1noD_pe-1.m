   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-091327
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-091327\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000040;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.006758;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=2.238754;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.010504;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.042252;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[9.486e-04  7.713e-04  8.869e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0195	
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
		0.000723691
		0.00148012
		-0.000629726
		0.00137751
		0.000848251
		0.00098178
		-0.000100296
		0.000566034
		0.000586405
		-0.000557747
		0.00106446
		0.000516189
		0.00104858
		0.000863875
		-0.00113233
		-0.000544632
		-0.000146815
		5.02901e-05
		5.95389e-05
		-0.00220396
		-0.000540208
		0.000560107
		-0.000330948
		-0.000154725
		-0.00107489
		-0.00109968
		0.000436635
		0.000648424
		0.00147923
		0.000206566
		-0.000292053
		-0.000386892
		-6.74908e-05
		0.00107372
		-0.00050999
		0.000544059
		0.000148379
		0.000683933
		0.00108517
		0.000253057
		0.00333338
		-0.000179636
		0.00106237
		0.000988409
		0.00102693
		0.00352279
		-0.000225855
		0.00136476
		-0.000572637
		-0.000883017
		-5.74432e-06
		0.000284524
		-0.00106438
		0.000709079
		-0.000559172
		0.000217126
		0.000150907
		-0.000728183
		-0.000434402
		0.000405659
		0.000831505
		-7.36275e-06
		0.000670499
		0.000487865
		-0.000358494
		-0.00018922
		-0.0020358
		0.000551684
		0.00105305
		0.00105558
		0.000751412
		0.00216427
		0.00114869
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 204.360686 %	 max error: 4163.285321 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.003301 max data: 0.003523

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000065 
	   

>>>> Computational cost: 300.083524 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 5.8982e-05  +-  9.6534e-04 (1.64e+03%); 
	Vm1    : 3.2745e-02  +-  0.0000e+00 (       0%); 
	h1     : 9.2057e-01  +-  3.2736e+07 (3.56e+09%); 
	Km1    : 2.3453e-01  +-  2.0402e+07 ( 8.7e+09%); 
	d1     : 2.0144e-02  +-  3.9042e-01 (1.94e+03%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -4.155431e-03	 -7.791098e-03	 4.257908e-03	 9.961092e-01
	 -4.155431e-03	 -1.000000e+00	 -4.149801e-01	 -4.590569e-01	 -3.540169e-03
	 -7.791098e-03	 -4.149801e-01	 1.000000e+00	 -1.381815e+00	 -6.667052e-03
	 4.257908e-03	 -4.590569e-01	 -1.381815e+00	 1.000000e+00	 3.657463e-03
	 9.961092e-01	 -3.540169e-03	 -6.667052e-03	 3.657463e-03	 1.000000e+00
