   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-213338
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-213338\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000001;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.002144;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=6.292785;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.304761;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.048469;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.794e-05  2.271e-05  2.612e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.7079	  0.1533	  0.1111	  0.0627	  0.3435	  0.3650	
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
		0.00288741
		0.00839558
		-0.000116454
		-0.000630634
		-0.00131623
		-0.00010404
		-0.00343405
		0.00349679
		-8.80167e-05
		0.00436698
		0.00183059
		-7.93636e-05
		0.00375978
		0.0016041
		0.00331355
		0.0040482
		0.0111413
		0.0111888
		0.00505656
		0.00973608
		0.00874697
		0.0112213
		0.00910488
		0.00559043
		0.00717093
		0.0156771
		0.0157978
		0.0136944
		0.0150612
		0.0205183
		0.0168361
		0.0201965
		0.0204629
		0.0145479
		0.0215612
		0.0224217
		0.0183989
		0.0209227
		0.016543
		0.0245095
		0.0223183
		0.0175166
		0.0194003
		0.0258063
		0.020347
		0.0257626
		0.0199111
		0.0228056
		0.0248598
		0.0195356
		0.0281316
		0.0244325
		0.0270662
		0.0211176
		0.0186376
		0.0246151
		0.0243205
		0.0228895
		0.0254028
		0.0243762
		0.0262453
		0.0303658
		0.0220117
		0.0266993
		0.024012
		0.0293692
		0.0329089
		0.023145
		0.0262634
		0.0276049
		0.0266712
		0.0289583
		0.0250363
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 104.901637 %	 max error: 3633.207874 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.008389 max data: 0.032909

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000636 
	   

>>>> Computational cost: 300.083524 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  4.9064e-01 (5.93e+05%); (bound active) 
	Vm1    : 9.8228e-03  +-  5.6376e-01 (5.74e+03%); 
	h1     : 9.4271e-01  +-  5.1292e+01 (5.44e+03%); 
	Km1    : 5.8963e-02  +-  4.5577e+00 (7.73e+03%); 
	d1     : 2.1911e-02  +-  1.2584e-01 (     574%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.998090e-01	 9.958581e-01	 9.977414e-01	 9.492935e-01
	 -9.998090e-01	 1.000000e+00	 -9.972993e-01	 -9.970270e-01	 -9.503381e-01
	 9.958581e-01	 -9.972993e-01	 1.000000e+00	 9.894029e-01	 9.609836e-01
	 9.977414e-01	 -9.970270e-01	 9.894029e-01	 1.000000e+00	 9.266367e-01
	 9.492935e-01	 -9.503381e-01	 9.609836e-01	 9.266367e-01	 1.000000e+00
