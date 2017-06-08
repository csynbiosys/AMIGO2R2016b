   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-194031
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-194031\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000003;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.055089;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.366856;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.004844;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.031716;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[9.950e-05  8.089e-05  9.303e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  1.9981	  0.0038	  0.5877	  1.4305	  0.8966	
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
		0.00328644
		-0.000357995
		-0.0101014
		0.00111058
		-0.00152924
		-0.00235634
		-0.00273944
		-0.00039607
		0.0114569
		0.00535583
		-0.00414673
		0.00532845
		0.00239579
		0.00323259
		-0.00569711
		-0.00635532
		-3.93701e-05
		-0.00329073
		-0.000372965
		-0.00156542
		0.00367505
		0.00239539
		0.000142536
		-0.0021397
		0.00188756
		0.00460301
		0.00653357
		-0.000867539
		0.0101294
		0.00360316
		0.00807745
		0.00783711
		0.00889731
		0.00551318
		0.00953834
		0.0032332
		0.00750125
		0.00985116
		0.00896892
		0.011126
		0.00480961
		0.0083923
		0.0131124
		0.013124
		0.00611567
		0.0108413
		0.0153165
		0.00930234
		0.0109439
		0.014928
		0.0113566
		0.0130498
		0.0111925
		0.0173205
		0.0120788
		0.0183078
		0.0143488
		0.0182739
		0.0108638
		0.0166161
		0.0220039
		0.0175221
		0.0209056
		0.0202505
		0.0165819
		0.0188891
		0.023891
		0.0172036
		0.0215342
		0.0197221
		0.0200912
		0.0232688
		0.0188523
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 80.669664 %	 max error: 1165.948081 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.011448 max data: 0.023891

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000833 
	   

>>>> Computational cost: 300.052323 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  3.0713e-03 (3.71e+05%); (bound active) 
	Vm1    : 7.4700e-03  +-  1.5641e-02 (     209%); 
	h1     : 3.9347e+00  +-  2.8867e+07 (7.34e+08%); 
	Km1    : 4.7754e-03  +-  7.7078e+03 (1.61e+08%); 
	d1     : 2.4602e-02  +-  5.3822e-02 (     219%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -8.938753e-01	 1.202157e-01	 -1.202155e-01	 -7.444399e-01
	 -8.938753e-01	 1.000000e+00	 1.726975e-01	 -1.726977e-01	 9.498861e-01
	 1.202157e-01	 1.726975e-01	 1.000000e+00	 -1.000000e+00	 4.409450e-01
	 -1.202155e-01	 -1.726977e-01	 -1.000000e+00	 1.000000e+00	 -4.409452e-01
	 -7.444399e-01	 9.498861e-01	 4.409450e-01	 -4.409452e-01	 1.000000e+00
