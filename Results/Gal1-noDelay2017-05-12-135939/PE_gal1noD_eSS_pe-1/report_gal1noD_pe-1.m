   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-135939
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-135939\PE_gal1noD_eSS_pe-1 


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
		v_guess(2)=0.008448;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=3.556849;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.005262;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.096559;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[9.500e-06  7.724e-06  8.882e-07  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.5840	  0.0007	  0.0035	  0.3218	  0.0035	  0.0036	
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
		-0.00148486
		-0.00255451
		0.00147107
		0.000529611
		-0.0036614
		0.00352787
		0.000227631
		0.000646742
		0.00251753
		0.00145118
		0.00202473
		0.00145478
		0.003237
		0.00647811
		0.00811144
		0.00484873
		0.00340359
		0.00353918
		-0.00207459
		0.00878412
		0.00257439
		0.00767785
		0.0162836
		0.00890787
		0.00931454
		0.0117485
		0.00981898
		0.0115809
		0.010076
		0.0127254
		0.0101556
		0.00646574
		0.00680596
		0.00905759
		0.00801112
		0.00693476
		0.010642
		0.0126556
		0.00750105
		0.00450886
		0.0112154
		0.013687
		0.00604468
		0.00596127
		0.00860506
		0.00544893
		0.00355302
		0.00520711
		0.00548733
		0.0128376
		0.011503
		0.00758328
		0.0154342
		0.00944979
		0.0114137
		0.010678
		0.0171231
		0.0114555
		0.0187285
		0.0115458
		0.00897434
		0.0134833
		0.0125279
		0.00347721
		0.0128283
		0.0086453
		0.0161746
		0.015086
		0.0133926
		0.0165147
		0.0135052
		0.0139934
		0.0147635
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 46.362858 %	 max error: 411.182961 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009595 max data: 0.018728

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000728 
	   

>>>> Computational cost: 235.655111 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  7.7962e-03 (9.42e+05%); (bound active) 
	Vm1    : 7.9773e-03  +-  4.8718e-03 (    61.1%); 
	h1     : 5.0000e+00  +-  1.1705e+03 (2.34e+04%); (bound active) 
	Km1    : 5.9998e-03  +-  7.3808e-01 (1.23e+04%); 
	d1     : 2.1946e-02  +-  4.7957e-02 (     219%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.846262e-01	 8.772019e-01	 -8.755028e-01	 9.134297e-01
	 -1.846262e-01	 1.000000e+00	 -1.895672e-01	 1.849094e-01	 2.153080e-01
	 8.772019e-01	 -1.895672e-01	 1.000000e+00	 -9.999657e-01	 7.643389e-01
	 -8.755028e-01	 1.849094e-01	 -9.999657e-01	 1.000000e+00	 -7.648767e-01
	 9.134297e-01	 2.153080e-01	 7.643389e-01	 -7.648767e-01	 1.000000e+00
