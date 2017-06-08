   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-103907
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-103907\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000038;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.004558;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.323783;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.061493;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.194713;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.957e-04  1.591e-04  1.830e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.6046	  2.0000	  1.1438	  1.3461	  0.0000	  1.6109	
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
		-0.00115047
		0.00396908
		0.00581073
		-0.000922553
		0.000728244
		-0.00841589
		0.00322818
		-0.00413659
		0.00232754
		-0.000590107
		0.000675548
		0.00639629
		0.00377245
		0.00341817
		0.00480383
		0.00688161
		0.004074
		0.0109966
		0.00280988
		0.0101304
		0.0053831
		0.0150898
		0.0116581
		0.00987778
		0.0141361
		0.0116104
		0.010236
		0.0142853
		0.0220467
		0.0124002
		0.0160645
		0.0192585
		0.0196121
		0.0175997
		0.0194299
		0.0191243
		0.0212711
		0.0189249
		0.02538
		0.0211169
		0.0225598
		0.0202653
		0.0236838
		0.025503
		0.0254462
		0.0279295
		0.0265032
		0.0279306
		0.0273926
		0.0251232
		0.0232072
		0.0221486
		0.0240586
		0.0256298
		0.028645
		0.0202738
		0.0304014
		0.0314605
		0.0282646
		0.0282306
		0.0214915
		0.0219418
		0.0219569
		0.021352
		0.0266561
		0.0265004
		0.0228305
		0.0215916
		0.0204959
		0.0186045
		0.021816
		0.0202472
		0.020056
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 34.187068 %	 max error: 404.150395 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.008841 max data: 0.031460

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000625 
	   

>>>> Computational cost: 246.372379 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2802e-07  +-  4.2662e-03 (5.15e+05%); (bound active) 
	Vm1    : 1.3003e-02  +-  6.3342e-01 (4.87e+03%); 
	h1     : 7.7838e-01  +-  1.1591e+02 (1.49e+04%); 
	Km1    : 3.6800e-01  +-  1.4157e+01 (3.85e+03%); (bound active) 
	d1     : 2.8575e-02  +-  4.6295e-02 (     162%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 1.497002e-01	 -1.584646e-01	 1.044664e-01	 4.108536e-01
	 1.497002e-01	 1.000000e+00	 -9.994099e-01	 9.674023e-01	 8.678314e-01
	 -1.584646e-01	 -9.994099e-01	 1.000000e+00	 -9.582940e-01	 -8.814210e-01
	 1.044664e-01	 9.674023e-01	 -9.582940e-01	 1.000000e+00	 7.333097e-01
	 4.108536e-01	 8.678314e-01	 -8.814210e-01	 7.333097e-01	 1.000000e+00
