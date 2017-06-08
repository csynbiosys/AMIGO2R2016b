   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-203924
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-203924\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000044;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.030569;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.816944;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.181917;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.136575;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.188e-04  2.592e-04  2.981e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0002	  0.4640	  0.0007	  0.5126	  1.6487	  0.4166	
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
		0.00326021
		0.00235278
		-0.000302036
		-0.00550518
		-0.00306111
		-0.00495705
		-0.00249284
		0.00367003
		-0.0021883
		0.0017844
		-0.00397068
		0.00357187
		0.0023062
		-0.00381348
		-0.00209113
		-0.00129388
		-0.00365104
		-0.00362062
		-0.000477279
		-0.00278864
		0.00549464
		-0.00528312
		0.01162
		0.00264151
		0.00622001
		0.00485705
		0.00556364
		0.00626653
		0.00256387
		0.00231432
		0.00922893
		0.00720763
		0.00245593
		0.014408
		0.00774199
		0.00855461
		0.00821743
		0.00720595
		0.00758697
		0.00598843
		0.00583572
		0.0105212
		0.00904802
		0.010998
		0.0105006
		0.0100187
		0.0135522
		0.00917194
		0.0123138
		0.0115173
		0.0135757
		0.00975557
		0.0111151
		0.014236
		0.0142228
		0.012515
		0.0126909
		0.0186361
		0.0169829
		0.01595
		0.0165868
		0.0183862
		0.0154689
		0.0249584
		0.0129546
		0.0216643
		0.0214844
		0.0219532
		0.0218691
		0.0242306
		0.0263059
		0.0229132
		0.0256146
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 50.093632 %	 max error: 234.157823 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009477 max data: 0.026306

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000660 
	   

>>>> Computational cost: 259.944466 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2801e-07  +-  6.1682e-03 (7.45e+05%); (bound active) 
	Vm1    : 1.3418e-02  +-  1.8144e-01 (1.35e+03%); 
	h1     : 1.0315e+00  +-  5.1955e+01 (5.04e+03%); 
	Km1    : 2.1504e-01  +-  8.7811e-01 (     408%); 
	d1     : 2.9159e-02  +-  5.7966e-02 (     199%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.086543e-01	 9.088012e-01	 7.855110e-01	 -8.390410e-01
	 -9.086543e-01	 1.000000e+00	 -9.963869e-01	 -5.081535e-01	 8.406524e-01
	 9.088012e-01	 -9.963869e-01	 1.000000e+00	 5.321800e-01	 -7.993779e-01
	 7.855110e-01	 -5.081535e-01	 5.321800e-01	 1.000000e+00	 -5.165954e-01
	 -8.390410e-01	 8.406524e-01	 -7.993779e-01	 -5.165954e-01	 1.000000e+00
