   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-200106
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-200106\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000024;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.003215;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.211830;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.005601;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.003589;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[6.708e-03  5.454e-03  6.272e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.1694	  1.9648	  1.9465	  1.7220	  1.9905	  0.0000	
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
		0.00297713
		0.00179152
		0.00115856
		0.00250489
		0.00112628
		0.00356523
		-0.00273781
		-0.0013629
		0.00228467
		0.00371184
		0.00857291
		-0.00247941
		0.00175368
		-0.000853762
		0.0025685
		0.00820359
		0.01054
		0.00793618
		0.00579869
		0.00208507
		0.0127985
		0.0153401
		0.0158078
		0.0109804
		0.0165908
		0.0150388
		0.0164885
		0.0192913
		0.0119428
		0.00672836
		0.0217453
		0.0171006
		0.0127396
		0.0103452
		0.017571
		0.0235041
		0.0164584
		0.0249334
		0.0228308
		0.0177156
		0.02251
		0.0220549
		0.0182966
		0.0196912
		0.024902
		0.0202134
		0.0243218
		0.0256605
		0.0283337
		0.0286085
		0.0328419
		0.0322234
		0.0255711
		0.0276291
		0.0315488
		0.0274505
		0.0312444
		0.030979
		0.0283432
		0.0279029
		0.026392
		0.0328329
		0.0257659
		0.0281294
		0.028529
		0.0277253
		0.0267372
		0.0285273
		0.0268148
		0.0241265
		0.0252716
		0.0284096
		0.0340563
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 43.578234 %	 max error: 607.885278 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009103 max data: 0.034056

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000926 
	   

>>>> Computational cost: 248.369192 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  5.2489e-02 (6.34e+04%); (bound active) 
	Vm1    : 8.7850e-03  +-  2.4912e-02 (     284%); 
	h1     : 5.0000e+00  +-  1.0389e+12 (2.08e+13%); (bound active) 
	Km1    : 3.6800e-03  +-  2.9278e+09 (7.96e+13%); (bound active) 
	d1     : 2.5777e-02  +-  2.0146e-01 (     782%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 4.987987e-01	 -3.305486e-01	 -3.303708e-01	 9.517522e-01
	 4.987987e-01	 1.000000e+00	 -6.474493e-01	 -6.473493e-01	 7.405605e-01
	 -3.305486e-01	 -6.474493e-01	 1.000000e+00	 1.000000e+00	 -4.811684e-01
	 -3.303708e-01	 -6.473493e-01	 1.000000e+00	 1.000000e+00	 -4.809948e-01
	 9.517522e-01	 7.405605e-01	 -4.811684e-01	 -4.809948e-01	 1.000000e+00
