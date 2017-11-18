   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 17-Nov-2017
Problem folder:	 Results\Gal1-noDelay2017-11-17-212143
Results folder in problem folder:	 Results\Gal1-noDelay2017-11-17-212143\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.041400;  v_min(1)=0.004140; v_max(1)=0.414000;
		v_guess(2)=1.890000;  v_min(2)=0.189000; v_max(2)=5.000000;
		v_guess(3)=0.036800;  v_min(3)=0.003680; v_max(3)=0.368000;
		v_guess(4)=0.030000;  v_min(4)=0.003000; v_max(4)=0.300000;



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

--> Number of states: 4


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.00003     0.04140     1.89000     0.03680     0.03000     0.01000     0.01000     0.00200     0.00230  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.380e+00  1.150e+00  1.000e+00  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 300.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 61: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0178	
			Control switching times: 	  0.0000	300.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 61

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.02548
		0.871391
		0.980379
		1.02785
		1.09309
		1.07672
		1.0029
		0.992002
		1.19215
		1.20842
		0.940915
		1.01778
		0.982156
		0.94644
		0.994444
		1.10899
		0.837292
		1.01263
		1.07619
		1.14021
		1.0432
		0.957173
		0.760425
		0.982083
		0.883557
		0.970325
		0.928521
		0.957495
		1.01714
		0.780428
		0.970216
		0.864172
		0.979618
		0.909019
		0.976749
		0.912154
		0.864155
		0.912419
		1.00723
		1.05238
		0.91052
		0.917082
		0.806453
		0.660402
		0.756121
		1.01052
		0.610251
		0.825636
		0.805645
		0.797117
		0.76833
		0.723203
		0.68582
		0.929079
		0.707915
		0.710463
		0.737474
		0.873929
		0.746947
		0.767421
		0.719608
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 7.854191 %	 max error: 35.557759 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.216992 max data: 1.208423

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.533295 
	   

>>>> Computational cost: 226.482252 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Vm1    : 4.1400e-03  +-  3.9037e+10 (9.43e+14%); (bound active) 
	h1     : 5.0000e+00  +-  4.1597e+12 (8.32e+13%); (bound active) 
	Km1    : 3.6800e-01  +-  1.0304e+12 ( 2.8e+14%); (bound active) 
	d1     : 1.2010e-02  +-  4.4482e-02 (     370%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 2.175227e-01	 4.777094e-01	 -6.963767e-01
	 2.175227e-01	 1.000000e+00	 -7.535694e-01	 -2.562291e-01
	 4.777094e-01	 -7.535694e-01	 1.000000e+00	 -2.383831e-01
	 -6.963767e-01	 -2.562291e-01	 -2.383831e-01	 1.000000e+00
