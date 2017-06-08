   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-154821
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-154821\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000030;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.016553;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=4.984116;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.153781;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.041872;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[7.245e-04  5.890e-04  6.773e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0944	  0.8439	  0.1092	  0.4005	  0.1037	  1.6448	
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
		0.000367843
		-0.00652175
		0.00169057
		4.57184e-05
		0.00235838
		-0.00189264
		0.00322247
		0.00209113
		-0.00013868
		-0.00197577
		0.00270755
		0.00741608
		0.000938494
		0.000985787
		0.00326019
		0.00201385
		0.0132255
		0.00441045
		0.010918
		0.0107657
		0.00840185
		0.0105519
		0.00634136
		0.00487317
		0.0112312
		0.0102624
		0.0104293
		0.0161943
		0.0146894
		0.00982444
		0.0162495
		0.0161256
		0.0191003
		0.0142713
		0.0142464
		0.0203912
		0.0204049
		0.0238839
		0.0165709
		0.0201839
		0.0196592
		0.02571
		0.0193849
		0.0255807
		0.0233739
		0.015306
		0.0235442
		0.0233072
		0.0233442
		0.0232752
		0.0249846
		0.0272178
		0.0236338
		0.0282969
		0.0250139
		0.026396
		0.0204081
		0.0214943
		0.0280661
		0.0264496
		0.0242374
		0.0253337
		0.0241133
		0.0242452
		0.0268556
		0.0316413
		0.0280832
		0.026017
		0.0299268
		0.0279863
		0.0245859
		0.0317105
		0.0268723
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 50.590892 %	 max error: 1005.070106 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007672 max data: 0.031711

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000606 
	   

>>>> Computational cost: 243.049558 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 7.6512e-05  +-  6.2334e+04 (8.15e+10%); 
	Vm1    : 8.6209e-03  +-  6.2334e+04 (7.23e+08%); 
	h1     : 5.0000e+00  +-  1.9693e+08 (3.94e+09%); (bound active) 
	Km1    : 3.6800e-03  +-  4.7559e+05 (1.29e+10%); (bound active) 
	d1     : 2.7782e-02  +-  7.3680e-02 (     265%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.000000e+00	 -1.049494e-03	 1.009233e-02	 -2.412865e-03
	 -1.000000e+00	 1.000000e+00	 1.049735e-03	 -1.009208e-02	 2.413212e-03
	 -1.049494e-03	 1.049735e-03	 1.000000e+00	 9.996615e-01	 8.130048e-01
	 1.009233e-02	 -1.009208e-02	 9.996615e-01	 1.000000e+00	 8.260184e-01
	 -2.412865e-03	 2.413212e-03	 8.130048e-01	 8.260184e-01	 1.000000e+00
