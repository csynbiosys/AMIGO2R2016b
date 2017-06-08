   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-022114
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-022114\PE_gal1noD_eSS_pe-2 


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

		v_guess(1)=0.000012;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.002231;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.225462;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.204677;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.012678;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[9.816e-04  7.980e-04  9.178e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 720.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 145: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0003	  1.8887	  0.4757	  0.5776	  0.0022	  0.1336	  1.1684	  0.6612	  0.6707	  1.8154	  0.0011	  0.4143	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 145

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		-0.00355406
		-0.00140128
		8.31513e-05
		-0.000281223
		0.00694651
		-0.0037228
		-0.00216172
		0.00156757
		0.00249806
		-0.000724966
		-0.000717082
		-0.00155292
		0.00291476
		-0.00422334
		0.00455812
		-3.57663e-05
		-0.00169655
		-0.00541251
		0.00236935
		0.00150454
		0.00360639
		-0.000275009
		0.0014165
		0.00180917
		-0.000952775
		0.000708426
		0.00390827
		0.00849625
		0.00180595
		0.00697012
		0.013251
		0.00716823
		0.011842
		0.0127371
		0.012416
		0.00909722
		0.0138973
		0.0138109
		0.0105582
		0.0101367
		0.0138959
		0.0132512
		0.0262723
		0.0215353
		0.0183182
		0.0193921
		0.0177131
		0.0219616
		0.018154
		0.0164344
		0.00780475
		0.0228931
		0.0193269
		0.0243565
		0.0215367
		0.02031
		0.0183804
		0.0193655
		0.023917
		0.0195645
		0.0230111
		0.0217006
		0.0236365
		0.0215715
		0.0216575
		0.0251096
		0.0200922
		0.0191525
		0.0246257
		0.0211993
		0.0227014
		0.0138736
		0.0178041
		0.0180674
		0.0173325
		0.0203625
		0.0152398
		0.0237402
		0.021034
		0.0226933
		0.0190422
		0.0226944
		0.0168173
		0.022972
		0.0180264
		0.0194474
		0.0240417
		0.0208085
		0.0225996
		0.0212276
		0.0249647
		0.0211014
		0.0311694
		0.0257061
		0.0257041
		0.0265463
		0.0312041
		0.0241491
		0.0285032
		0.0255084
		0.0240792
		0.027978
		0.0266425
		0.0240471
		0.0295449
		0.0225628
		0.0290363
		0.0290197
		0.027736
		0.0269162
		0.024087
		0.0298759
		0.0298676
		0.0251362
		0.0269702
		0.0248752
		0.0298762
		0.0308907
		0.0332727
		0.0287206
		0.027206
		0.0365165
		0.0339372
		0.0315033
		0.0267242
		0.0257356
		0.032034
		0.0271733
		0.0298521
		0.0342648
		0.0248719
		0.0234789
		0.0286416
		0.0240335
		0.0246456
		0.0328694
		0.030787
		0.0237917
		0.0263947
		0.0197168
		0.0246057
		0.0198827
		0.0211611
		0.0185104
		0.0234585
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 41.267206 %	 max error: 730.292075 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.012962 max data: 0.036516

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.001483 
	   

>>>> Computational cost: 288.601850 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  1.9924e-03 (2.41e+05%); (bound active) 
	Vm1    : 9.0864e-03  +-  5.3709e-03 (    59.1%); 
	h1     : 1.6737e+00  +-  7.1934e+00 (     430%); 
	Km1    : 1.7233e-02  +-  4.7299e-02 (     274%); 
	d1     : 2.7053e-02  +-  1.0124e-02 (    37.4%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.033885e-01	 7.851283e-01	 5.439542e-01	 -7.159413e-01
	 -9.033885e-01	 1.000000e+00	 -8.076890e-01	 -5.019318e-01	 9.396338e-01
	 7.851283e-01	 -8.076890e-01	 1.000000e+00	 4.430080e-01	 -6.855079e-01
	 5.439542e-01	 -5.019318e-01	 4.430080e-01	 1.000000e+00	 -4.996471e-01
	 -7.159413e-01	 9.396338e-01	 -6.855079e-01	 -4.996471e-01	 1.000000e+00
