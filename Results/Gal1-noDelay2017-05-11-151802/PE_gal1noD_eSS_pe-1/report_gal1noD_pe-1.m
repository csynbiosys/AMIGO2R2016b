   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-151802
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-151802\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000011;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.004997;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=3.819319;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.016625;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.078157;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.382e-04  1.124e-04  1.292e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.6137	  0.5993	  0.8917	  0.1024	  0.1324	  0.6726	
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
		-0.00056578
		-0.00550498
		-0.0028406
		-0.000690502
		0.00297749
		-0.00255021
		0.00827263
		0.000370043
		-0.0021069
		0.00192544
		0.00328605
		0.00264631
		0.0061072
		0.00732274
		0.00873629
		0.00286319
		0.00364365
		0.00576293
		0.00536401
		0.00732411
		0.00800521
		0.00882517
		0.01451
		0.00725704
		0.0113817
		0.0116694
		0.0122112
		0.0133773
		0.0179797
		0.0160447
		0.0215583
		0.0112979
		0.0163486
		0.0196693
		0.0209572
		0.0177785
		0.0210742
		0.0153378
		0.0261016
		0.0218422
		0.0235043
		0.0231034
		0.0244096
		0.0253002
		0.0194954
		0.022965
		0.0207029
		0.0277864
		0.0297461
		0.021704
		0.025217
		0.0296539
		0.0232935
		0.0242157
		0.0303577
		0.0294652
		0.023604
		0.0233237
		0.0312692
		0.02939
		0.0233607
		0.0329789
		0.0267633
		0.0231305
		0.0300703
		0.0255545
		0.0265126
		0.0266608
		0.0306974
		0.0277329
		0.0217578
		0.0278974
		0.0317829
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 28.353617 %	 max error: 159.080459 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007663 max data: 0.032979

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000673 
	   

>>>> Computational cost: 300.239525 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2612e-05  +-  2.3214e+01 (2.81e+07%); 
	Vm1    : 1.6592e-02  +-  4.7807e+01 (2.88e+05%); 
	h1     : 2.1006e-01  +-  6.0894e+02 ( 2.9e+05%); 
	Km1    : 3.6800e-01  +-  4.2391e+02 (1.15e+05%); (bound active) 
	d1     : 2.5537e-02  +-  3.6377e-02 (     142%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.995088e-01	 9.995585e-01	 -6.671245e-01	 -5.981500e-01
	 -9.995088e-01	 1.000000e+00	 -9.999986e-01	 6.901417e-01	 6.202051e-01
	 9.995585e-01	 -9.999986e-01	 1.000000e+00	 -6.889583e-01	 -6.191877e-01
	 -6.671245e-01	 6.901417e-01	 -6.889583e-01	 1.000000e+00	 9.288439e-01
	 -5.981500e-01	 6.202051e-01	 -6.191877e-01	 9.288439e-01	 1.000000e+00
