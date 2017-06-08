   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-003412
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-003412\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000002;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.035903;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=6.362152;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.017967;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.039817;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.798e-05  3.088e-05  3.551e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0248	  2.0000	  2.0000	  0.0250	  0.0000	  0.0463	
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
		-0.0024655
		-0.00433551
		-0.00381984
		-0.00300493
		0.00235563
		-0.00138616
		0.00184658
		-0.00047403
		0.0015182
		0.000509203
		-0.00286931
		0.00734205
		0.000234576
		-0.00128515
		-0.00423666
		0.0013153
		0.00652806
		0.00576691
		0.000537822
		0.00362412
		0.0052983
		0.0076831
		0.00654218
		0.00843353
		0.00391027
		0.0113162
		0.00886946
		0.00800112
		0.0172268
		0.00968328
		0.0143541
		0.0140074
		0.0120442
		0.01209
		0.0132097
		0.0142468
		0.0181992
		0.015934
		0.0122829
		0.0186138
		0.0205051
		0.0153537
		0.0157554
		0.0241469
		0.0232734
		0.0221726
		0.0219264
		0.0232368
		0.0209276
		0.0175388
		0.0223604
		0.0113938
		0.0215556
		0.0185274
		0.0175998
		0.0176672
		0.021479
		0.0190912
		0.0198831
		0.0163959
		0.0201447
		0.0175651
		0.0115163
		0.0166877
		0.00919787
		0.011957
		0.0159896
		0.0116629
		0.0107316
		0.0128186
		0.0155716
		0.00957517
		0.00997765
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 52.046898 %	 max error: 563.450832 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.008372 max data: 0.024147

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000617 
	   

>>>> Computational cost: 248.025990 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  9.5137e-03 (1.15e+06%); (bound active) 
	Vm1    : 2.2624e-02  +-  6.3416e-01 ( 2.8e+03%); 
	h1     : 4.6545e-01  +-  1.2015e+01 (2.58e+03%); 
	Km1    : 3.6800e-01  +-  5.5418e+01 (1.51e+04%); (bound active) 
	d1     : 4.6442e-02  +-  2.9372e-02 (    63.2%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 7.414466e-01	 -7.173437e-01	 7.463805e-01	 7.409871e-01
	 7.414466e-01	 1.000000e+00	 -9.991458e-01	 9.998863e-01	 3.667178e-01
	 -7.173437e-01	 -9.991458e-01	 1.000000e+00	 -9.989322e-01	 -3.344394e-01
	 7.463805e-01	 9.998863e-01	 -9.989322e-01	 1.000000e+00	 3.639372e-01
	 7.409871e-01	 3.667178e-01	 -3.344394e-01	 3.639372e-01	 1.000000e+00
