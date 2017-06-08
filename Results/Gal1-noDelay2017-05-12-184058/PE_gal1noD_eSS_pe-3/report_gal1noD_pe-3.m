   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-184058
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-184058\PE_gal1noD_eSS_pe-3 


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

		v_guess(1)=0.000005;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.004399;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.632050;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.274448;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.150728;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.398e-05  2.762e-05  3.177e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1080.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 217: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.6842	  0.4875	  0.3325	  0.5802	  0.3942	  0.0000	  0.3716	  0.3314	  0.4297	  1.0123	  0.0000	  0.6847	  1.8834	  0.1052	  0.5731	  0.6809	  1.4178	  0.0151	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000	780.0000	840.0000	900.0000	960.0000	1020.0000	1080.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 217

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		0.000933564
		-0.00643871
		0.00634912
		-0.00364263
		-6.61768e-05
		0.000867836
		0.00521631
		-0.000637812
		0.00293542
		0.00417975
		-0.000234815
		0.000794974
		0.00685358
		0.0094578
		0.00862285
		0.00233872
		0.0082849
		0.0110472
		0.0112347
		0.00885867
		0.00750875
		0.00679604
		0.011006
		0.00730456
		0.0103938
		0.0148439
		0.0104242
		0.0121527
		0.012605
		0.0167472
		0.0208922
		0.0203382
		0.0158717
		0.0181053
		0.0230036
		0.0201545
		0.022908
		0.0209296
		0.0190955
		0.0197419
		0.0280109
		0.0323845
		0.0285137
		0.0247479
		0.0217626
		0.0222536
		0.0230677
		0.0233606
		0.0273649
		0.0261175
		0.0298272
		0.0259548
		0.0352565
		0.0265483
		0.0278137
		0.0264466
		0.0249429
		0.0305106
		0.0305203
		0.0271679
		0.0243418
		0.0287201
		0.0279
		0.0316938
		0.0262273
		0.025695
		0.0267127
		0.0276531
		0.0258317
		0.0280619
		0.0253553
		0.0328843
		0.0304356
		0.0242457
		0.0235618
		0.0315267
		0.026183
		0.0222663
		0.0245487
		0.0213268
		0.019615
		0.0231983
		0.0176595
		0.0226599
		0.0235271
		0.0181194
		0.0208017
		0.0269648
		0.0228081
		0.0233276
		0.0225147
		0.0241488
		0.0211744
		0.028391
		0.018467
		0.0234338
		0.0197287
		0.0216918
		0.0258959
		0.0282342
		0.0239779
		0.026241
		0.0242091
		0.0255151
		0.0253825
		0.0230959
		0.0185089
		0.0309728
		0.0322844
		0.0237817
		0.0285013
		0.0282584
		0.0296196
		0.0281336
		0.0264025
		0.029943
		0.0281463
		0.0344481
		0.0307845
		0.030701
		0.0303407
		0.0282384
		0.0312735
		0.0309245
		0.0286567
		0.0287393
		0.0269852
		0.0315761
		0.0300853
		0.0316128
		0.0277442
		0.025222
		0.0308946
		0.0286601
		0.0206882
		0.0210567
		0.0281095
		0.0304435
		0.0176682
		0.0294123
		0.0234301
		0.0261658
		0.0220019
		0.0257983
		0.0253621
		0.0228268
		0.015415
		0.0192943
		0.0201463
		0.02197
		0.0181424
		0.0197202
		0.0258197
		0.0186319
		0.023245
		0.023059
		0.0253854
		0.0209657
		0.0243569
		0.0201862
		0.0239089
		0.02639
		0.024631
		0.0265978
		0.0276026
		0.0218265
		0.0265052
		0.0219359
		0.0264594
		0.0238603
		0.0278196
		0.0222312
		0.023025
		0.0275762
		0.0271392
		0.031443
		0.0215624
		0.0278142
		0.0291451
		0.0307908
		0.0224036
		0.0318084
		0.0268093
		0.030754
		0.0337554
		0.0299395
		0.0343839
		0.0324411
		0.0312821
		0.0282686
		0.0321857
		0.0250256
		0.0312641
		0.0296514
		0.028848
		0.0287462
		0.0264949
		0.0367592
		0.0223495
		0.0336414
		0.0301177
		0.0305445
		0.0288889
		0.0274749
		0.0283216
		0.033889
		0.0308959
		0.0297527
		0.0359985
		0.0313047
		0.0318024
		0.027832
		0.0287953
		0.0298281
		0.0261566
		0.023074
		0.0256198
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 24.348383 %	 max error: 1142.083766 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009009 max data: 0.036759

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.002110 
	   

>>>> Computational cost: 300.130324 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  1.7178e-03 (2.07e+05%); (bound active) 
	Vm1    : 1.1053e-02  +-  2.4427e-03 (    22.1%); 
	h1     : 5.0000e+00  +-  2.9423e+02 (5.88e+03%); (bound active) 
	Km1    : 6.5238e-02  +-  1.8115e+00 (2.78e+03%); 
	d1     : 3.2328e-02  +-  8.7084e-03 (    26.9%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.483069e-01	 -2.821803e-02	 -3.231904e-02	 5.661378e-01
	 -1.483069e-01	 1.000000e+00	 -1.272948e-01	 -1.261444e-01	 7.151193e-01
	 -2.821803e-02	 -1.272948e-01	 1.000000e+00	 9.998906e-01	 1.906725e-02
	 -3.231904e-02	 -1.261444e-01	 9.998906e-01	 1.000000e+00	 1.656188e-02
	 5.661378e-01	 7.151193e-01	 1.906725e-02	 1.656188e-02	 1.000000e+00
