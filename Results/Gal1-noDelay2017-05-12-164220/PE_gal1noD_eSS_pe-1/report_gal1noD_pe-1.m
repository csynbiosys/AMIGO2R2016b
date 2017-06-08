   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-164220
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-164220\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000006;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.089474;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=2.130189;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.157698;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.004684;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.299e-03  1.056e-03  1.214e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.3578	  1.8349	  1.6472	  0.1081	  0.0881	  1.7001	
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
		-0.000670332
		0.000966544
		-0.00532137
		-0.000123593
		0.00377351
		0.00014419
		0.000879345
		-0.00193242
		0.00143651
		0.00649827
		0.0023041
		0.0032187
		-2.73808e-05
		0.00219307
		0.00501819
		0.00567384
		0.00236419
		0.00649201
		0.0116771
		0.0112281
		0.00740615
		0.0154859
		0.0117713
		-0.000405365
		0.00833867
		0.0118811
		0.0124098
		0.0117991
		0.0134936
		0.0101593
		0.0162041
		0.015321
		0.0137997
		0.0219584
		0.0157088
		0.0226102
		0.0236074
		0.0174581
		0.0213437
		0.0206315
		0.0251115
		0.0197127
		0.0189599
		0.0257264
		0.0234444
		0.0274885
		0.0281328
		0.027089
		0.0240554
		0.0302607
		0.0288445
		0.0193251
		0.0240285
		0.0270046
		0.0239368
		0.0278757
		0.0264648
		0.0265727
		0.0292844
		0.0255718
		0.0202593
		0.0194598
		0.0311811
		0.0328343
		0.0219588
		0.0277163
		0.0281876
		0.0263344
		0.0218857
		0.0266507
		0.0272702
		0.0305135
		0.0294788
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 206.028082 %	 max error: 10306.229780 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010508 max data: 0.032834

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000792 
	   

>>>> Computational cost: 265.888104 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2795e-05  +-  1.1578e+01 ( 1.4e+07%); (bound active) 
	Vm1    : 1.4382e-02  +-  2.3287e+01 (1.62e+05%); 
	h1     : 2.6482e-01  +-  4.3962e+02 (1.66e+05%); 
	Km1    : 3.6800e-01  +-  1.2378e+02 (3.36e+04%); (bound active) 
	d1     : 2.3322e-02  +-  6.0263e-02 (     258%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.996247e-01	 9.996206e-01	 -1.874387e-01	 -5.873389e-01
	 -9.996247e-01	 1.000000e+00	 -9.999999e-01	 2.142748e-01	 6.089024e-01
	 9.996206e-01	 -9.999999e-01	 1.000000e+00	 -2.144151e-01	 -6.090420e-01
	 -1.874387e-01	 2.142748e-01	 -2.144151e-01	 1.000000e+00	 8.899092e-01
	 -5.873389e-01	 6.089024e-01	 -6.090420e-01	 8.899092e-01	 1.000000e+00
