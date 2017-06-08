   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-031508
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-031508\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000002;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.068293;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=8.826447;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.133619;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.107796;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.289e-05  1.861e-05  2.140e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.1559	  0.0130	  0.1577	  0.0875	  0.0100	  0.0537	
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
		-0.00403906
		-0.00127926
		-0.00155418
		0.000737448
		0.00283609
		0.00341207
		0.00132075
		0.00166188
		-0.00202077
		0.00492027
		-0.00115658
		0.00308212
		0.000121802
		0.00191854
		0.0004535
		0.00303869
		0.00459369
		0.0110698
		0.0111332
		0.00624472
		0.00653482
		0.00944575
		0.00649081
		0.00770162
		0.00946367
		0.009547
		0.00785535
		0.0149474
		0.00919399
		0.0110024
		0.0143237
		0.009142
		0.00819846
		0.0138476
		0.0169454
		0.00684402
		0.0121232
		0.0093303
		0.015348
		0.0113127
		0.0108054
		0.0137132
		0.0150396
		0.0153996
		0.0119778
		0.0192226
		0.0179056
		0.0183218
		0.013845
		0.0190761
		0.0196447
		0.0145342
		0.0203525
		0.0185272
		0.0205289
		0.018248
		0.018954
		0.0193297
		0.0214194
		0.017998
		0.0148761
		0.0177635
		0.0192573
		0.0160315
		0.016272
		0.017265
		0.0198232
		0.0136074
		0.0201467
		0.013776
		0.0186781
		0.0158983
		0.0136581
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 75.540557 %	 max error: 2421.855111 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.005639 max data: 0.021419

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000448 
	   

>>>> Computational cost: 300.161524 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  1.2746e-02 (1.54e+06%); (bound active) 
	Vm1    : 1.0212e-02  +-  7.9671e-02 (     780%); 
	h1     : 2.2476e+00  +-  3.2568e+01 (1.45e+03%); 
	Km1    : 8.6032e-02  +-  5.0766e-01 (     590%); 
	d1     : 2.1510e-02  +-  3.5841e-02 (     167%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.524396e-01	 9.365055e-01	 -9.536937e-01	 7.601625e-01
	 -9.524396e-01	 1.000000e+00	 -9.980748e-01	 9.786938e-01	 -5.891737e-01
	 9.365055e-01	 -9.980748e-01	 1.000000e+00	 -9.720276e-01	 5.570282e-01
	 -9.536937e-01	 9.786938e-01	 -9.720276e-01	 1.000000e+00	 -7.132881e-01
	 7.601625e-01	 -5.891737e-01	 5.570282e-01	 -7.132881e-01	 1.000000e+00
