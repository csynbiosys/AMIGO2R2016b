   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-234032
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-234032\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000020;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.001747;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.918123;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.010449;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.012868;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.576e-03  1.281e-03  1.473e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.6987	  0.0000	  0.0001	  0.0001	  1.9892	  0.0863	
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
		-0.00257639
		0.000168889
		0.00662479
		-0.00072481
		0.00140658
		-0.00380046
		0.00331819
		0.00485556
		0.00696798
		-0.0040832
		0.00194206
		0.00112377
		0.00217465
		0.00189618
		0.0106101
		0.00746078
		0.00653118
		0.0082499
		0.00293207
		0.00220843
		0.00453184
		0.00794163
		0.0103358
		0.0124687
		0.00294145
		0.011215
		0.0113662
		0.00441644
		0.0116522
		0.00946392
		0.00826619
		0.0116746
		0.011787
		0.00599049
		0.00687366
		0.00608691
		0.00737297
		0.0103655
		0.00266827
		0.00701262
		0.00697547
		0.0116175
		0.00916915
		0.00958667
		0.00505536
		0.0101331
		0.00796503
		0.00296281
		0.00621565
		0.00332714
		0.00212146
		0.00778215
		0.0112058
		0.00585119
		0.0023222
		0.0140729
		0.00763387
		0.00702609
		0.00522635
		0.00355584
		0.00666098
		0.00737512
		0.00719722
		0.00718304
		0.00871221
		0.0104139
		0.0110304
		0.00880757
		0.0110054
		0.0191599
		0.0100016
		0.00774335
		0.0166609
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 52.201635 %	 max error: 209.802898 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.008074 max data: 0.019160

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000732 
	   

>>>> Computational cost: 254.531232 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  2.3548e-02 (2.84e+04%); (bound active) 
	Vm1    : 8.1270e-03  +-  2.1322e-02 (     262%); 
	h1     : 8.5080e-01  +-  1.8182e+01 (2.14e+03%); 
	Km1    : 3.6800e-03  +-  1.1624e-01 (3.16e+03%); (bound active) 
	d1     : 2.4378e-02  +-  8.2309e-02 (     338%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.193515e-01	 9.198715e-01	 -2.894766e-01	 9.732054e-01
	 -9.193515e-01	 1.000000e+00	 -9.823154e-01	 5.889434e-01	 -8.253704e-01
	 9.198715e-01	 -9.823154e-01	 1.000000e+00	 -6.387111e-01	 8.560987e-01
	 -2.894766e-01	 5.889434e-01	 -6.387111e-01	 1.000000e+00	 -2.039069e-01
	 9.732054e-01	 -8.253704e-01	 8.560987e-01	 -2.039069e-01	 1.000000e+00
