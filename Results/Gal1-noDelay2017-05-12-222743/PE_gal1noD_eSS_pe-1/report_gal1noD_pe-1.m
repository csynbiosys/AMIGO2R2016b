   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-222743
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-222743\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000015;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.007402;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.519901;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.085883;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.015792;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[9.225e-04  7.500e-04  8.625e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.2278	  0.0000	  1.9877	  1.8577	  0.0049	  0.0060	
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
		-0.00388418
		0.00147347
		-0.000680482
		-0.00234269
		-0.00216831
		0.00562254
		0.00112322
		-0.000551744
		-0.00272611
		0.00304205
		0.00460595
		0.00547528
		0.00347964
		0.00564629
		0.00578829
		0.0065927
		0.00695759
		0.00732811
		0.012341
		0.00863373
		0.00655229
		0.00761505
		0.0043541
		0.0107646
		0.00879447
		0.00865552
		0.0119395
		0.00512506
		0.00686276
		0.00821215
		0.00992961
		0.00736584
		0.0088006
		0.0117075
		0.0119862
		0.0101805
		0.0111508
		0.0171053
		0.0161067
		0.00760345
		0.0120902
		0.0190244
		0.014971
		0.0154547
		0.0126122
		0.0185441
		0.0179228
		0.0174344
		0.01848
		0.0208407
		0.0190796
		0.0194399
		0.0181119
		0.0225568
		0.0163193
		0.0180043
		0.0243718
		0.0206558
		0.0159678
		0.0215096
		0.0182117
		0.0221536
		0.0199149
		0.0173466
		0.0236787
		0.0200396
		0.0203541
		0.0188235
		0.0215485
		0.0227313
		0.02151
		0.0129827
		0.023032
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 31.711953 %	 max error: 453.991005 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.006984 max data: 0.024372

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000459 
	   

>>>> Computational cost: 272.518147 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  1.6086e-02 (1.94e+04%); (bound active) 
	Vm1    : 6.5759e-02  +-  3.1204e-01 (     475%); 
	h1     : 1.8907e-01  +-  9.2264e-01 (     488%); (bound active) 
	Km1    : 2.2409e-02  +-  7.2715e-01 (3.24e+03%); 
	d1     : 1.5158e-01  +-  3.1110e-01 (     205%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -8.276753e-01	 7.792992e-01	 -7.231307e-01	 -6.273137e-01
	 -8.276753e-01	 1.000000e+00	 -9.417772e-01	 9.052641e-01	 8.158689e-01
	 7.792992e-01	 -9.417772e-01	 1.000000e+00	 -9.749381e-01	 -5.934107e-01
	 -7.231307e-01	 9.052641e-01	 -9.749381e-01	 1.000000e+00	 5.025620e-01
	 -6.273137e-01	 8.158689e-01	 -5.934107e-01	 5.025620e-01	 1.000000e+00
