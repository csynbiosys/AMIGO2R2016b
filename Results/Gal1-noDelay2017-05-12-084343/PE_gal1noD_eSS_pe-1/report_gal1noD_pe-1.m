   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-084343
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-084343\PE_gal1noD_eSS_pe-1 


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
		v_guess(2)=0.011541;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=9.085073;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.004069;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.007867;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.196e-04  1.786e-04  2.053e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.0014	  0.0000	  0.0000	  0.0000	  0.0000	
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
		-0.000235348
		5.02681e-05
		0.00192182
		0.00193289
		-0.000785428
		0.00137027
		-0.00337827
		0.000222294
		0.00146633
		-0.000284326
		0.00187318
		-0.00146792
		0.000197893
		-0.000261862
		-0.00119053
		-0.00135224
		0.00343491
		0.00203008
		0.00153171
		0.000467618
		0.000106919
		-0.00113639
		0.000954763
		0.00291016
		-0.000868501
		0.00291929
		-0.000309025
		0.00206916
		-0.000181979
		-0.000378771
		0.000626587
		0.00173336
		-0.00220706
		-0.00247043
		-0.000345298
		-0.00132514
		-0.00231622
		0.00173534
		-0.00113364
		-0.00101074
		-0.00150187
		5.25668e-05
		-0.0026533
		-0.0014832
		-0.00165199
		9.17808e-05
		-0.00104145
		0.00153601
		-0.00342861
		0.00392345
		-6.00479e-05
		0.00187593
		-0.00261352
		0.00206058
		0.00257663
		-0.0025344
		-0.000323569
		-0.00135973
		-0.000223916
		-0.000594699
		0.00356994
		0.00203283
		0.00183076
		0.00294615
		0.00256489
		-0.00305771
		-0.000154797
		-0.000620674
		-1.72916e-05
		0.00285535
		-0.00346417
		-0.00258723
		0.00276798
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 108.905475 %	 max error: 649.346372 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.003855 max data: 0.003923

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000257 
	   

>>>> Computational cost: 300.036723 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 5.9552e-06  +-  1.0122e-03 ( 1.7e+04%); 
	Vm1    : 1.0418e-03  +-  2.2755e+11 (2.18e+16%); 
	h1     : 4.9997e+00  +-  2.5595e+14 (5.12e+15%); (bound active) 
	Km1    : 3.6706e-01  +-  9.2741e+13 (2.53e+16%); 
	d1     : 3.0000e-03  +-  8.4577e-01 (2.82e+04%); (bound active) 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -3.103752e-01	 -1.876431e-01	 1.600091e-01	 7.895306e-01
	 -3.103752e-01	 1.000000e+00	 7.837540e-01	 -7.132602e-01	 2.503249e-01
	 -1.876431e-01	 7.837540e-01	 1.000000e+00	 -9.943279e-01	 2.366565e-01
	 1.600091e-01	 -7.132602e-01	 -9.943279e-01	 1.000000e+00	 -2.230706e-01
	 7.895306e-01	 2.503249e-01	 2.366565e-01	 -2.230706e-01	 1.000000e+00
