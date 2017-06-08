   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-022258
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-022258\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000032;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.003957;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.970096;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.049369;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.017957;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.803e-03  1.466e-03  1.686e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.9612	  1.7646	  1.3110	  1.7332	  0.0000	
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
		0.0011321
		-0.00494175
		-0.00170223
		0.00407239
		-0.000536344
		-0.00289764
		-0.00592471
		-0.00162603
		0.00601163
		0.000713136
		0.00348112
		0.000594486
		-0.00608488
		-0.00401652
		0.00509995
		0.0048303
		0.000733887
		0.0028816
		-0.00101793
		-0.00239765
		-0.00169443
		0.00251145
		0.00211684
		-0.00158066
		0.00345707
		0.00576789
		0.00425663
		0.00897234
		0.0109509
		0.00422294
		0.0046748
		0.00964617
		0.00946124
		0.010507
		0.00745746
		0.0133312
		0.0101632
		0.0117386
		0.016731
		0.0106578
		0.0172448
		0.0134959
		0.01721
		0.0221996
		0.0205799
		0.0183605
		0.0188999
		0.0230305
		0.0220454
		0.0240134
		0.0197038
		0.0261494
		0.0183631
		0.0265107
		0.0245007
		0.02387
		0.023163
		0.0223259
		0.0162018
		0.0280196
		0.0270291
		0.0301361
		0.0229699
		0.0269705
		0.0254931
		0.0279553
		0.0202639
		0.0204249
		0.0256208
		0.0365521
		0.0235452
		0.0229437
		0.0248396
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 46.590532 %	 max error: 295.363700 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010846 max data: 0.036552

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000828 
	   

>>>> Computational cost: 237.386722 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  4.9317e-03 (5.96e+05%); (bound active) 
	Vm1    : 1.6886e-02  +-  5.7135e-01 (3.38e+03%); 
	h1     : 8.7041e-01  +-  8.9064e+01 (1.02e+04%); 
	Km1    : 3.6800e-01  +-  1.3708e+01 (3.73e+03%); (bound active) 
	d1     : 3.9175e-02  +-  1.0617e-01 (     271%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -6.311413e-01	 7.004453e-01	 -3.418036e-01	 4.710263e-01
	 -6.311413e-01	 1.000000e+00	 -9.797825e-01	 8.974341e-01	 -2.281397e-01
	 7.004453e-01	 -9.797825e-01	 1.000000e+00	 -7.925358e-01	 4.156099e-01
	 -3.418036e-01	 8.974341e-01	 -7.925358e-01	 1.000000e+00	 1.995051e-01
	 4.710263e-01	 -2.281397e-01	 4.156099e-01	 1.995051e-01	 1.000000e+00
