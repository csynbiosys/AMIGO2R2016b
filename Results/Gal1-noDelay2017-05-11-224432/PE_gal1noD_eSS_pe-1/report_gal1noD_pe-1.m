   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-224432
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-224432\PE_gal1noD_eSS_pe-1 


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
		v_guess(2)=0.022038;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=3.909863;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.012039;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.009041;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[9.286e-05  7.550e-05  8.682e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0001	  0.0000	  0.0038	  0.0000	  0.0016	  0.0038	
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
		0.000924291
		-0.00226517
		0.00076054
		0.000778092
		0.0028509
		0.000363815
		0.000644708
		0.000417911
		-0.00205686
		0.00139988
		-0.000843641
		0.000472832
		-0.00390079
		-1.92511e-05
		0.000642971
		-0.00119032
		0.00217254
		-0.00249979
		-0.00228279
		-0.000729399
		0.000190419
		0.000664564
		-0.00041886
		-0.00122743
		0.000635036
		0.00190476
		-0.00113041
		0.000476178
		-0.000336304
		-0.000566894
		0.000402831
		-0.00106051
		0.00104918
		0.00150247
		0.00117952
		-0.000601412
		-0.000942291
		-0.000541568
		0.000521217
		-0.00126003
		0.000881749
		0.00289068
		-0.00393353
		0.00429156
		-0.000603308
		0.0013408
		-0.000638932
		4.31686e-05
		0.00148542
		-0.00047953
		0.00152657
		-0.00249218
		-0.000678675
		-0.00156835
		0.00147972
		0.00265413
		-0.00128204
		-0.000402771
		0.000244482
		0.00170655
		0.00252211
		-0.00384624
		-0.000687363
		0.00228507
		0.00122383
		-0.00315395
		0.00106227
		6.81841e-05
		-0.00151701
		-0.000811391
		7.7475e-05
		-0.001701
		-0.000884179
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 99.898673 %	 max error: 134.213239 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.004283 max data: 0.004292

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000194 
	   

>>>> Computational cost: 300.145924 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  5.4704e-03 (6.61e+05%); (bound active) 
	Vm1    : 1.0148e-01  +-  5.6553e+06 (5.57e+09%); 
	h1     : 5.0000e+00  +-  6.1087e+04 (1.22e+06%); (bound active) 
	Km1    : 1.6633e-02  +-  1.8580e+05 (1.12e+09%); 
	d1     : 2.9998e-01  +-  8.3808e+02 (2.79e+05%); (bound active) 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 1.240987e-02	 6.204958e-02	 1.226739e-02	 5.480655e-01
	 1.240987e-02	 1.000000e+00	 -9.728679e-01	 9.999999e-01	 3.938549e-01
	 6.204958e-02	 -9.728679e-01	 1.000000e+00	 -9.729561e-01	 -3.345185e-01
	 1.226739e-02	 9.999999e-01	 -9.729561e-01	 1.000000e+00	 3.937356e-01
	 5.480655e-01	 3.938549e-01	 -3.345185e-01	 3.937356e-01	 1.000000e+00
