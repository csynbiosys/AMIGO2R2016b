   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-123227
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-123227\PE_gal1noD_eSS_pe-2 


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
		v_guess(2)=0.008199;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=3.184480;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.280849;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.188397;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[9.141e-06  7.432e-06  8.547e-07  ]

-->Final process time for each experiment: 
		Experiment 1: 	 720.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 145: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0104	  0.5054	  0.5066	  0.4923	  0.0234	  0.0106	  0.4823	  1.5983	  0.5180	  1.7029	  0.5122	  0.5508	
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
		-0.000343215
		-0.00364394
		0.000447196
		-0.000578376
		0.00644347
		-0.00110828
		0.00324697
		-0.00321823
		-0.00486358
		-0.00121315
		0.00368024
		-0.00152766
		0.00276681
		-0.00332087
		0.000389235
		-0.00207593
		0.000730842
		-0.00291754
		0.000118092
		0.00276752
		0.00260726
		-0.00250688
		0.00202816
		0.00512545
		-0.00198639
		0.00349464
		0.00665499
		0.00542879
		0.0105691
		0.010011
		0.00391679
		0.00884675
		0.0130837
		0.0137251
		0.0121775
		0.0125613
		0.0168035
		0.0178326
		0.0190042
		0.0164699
		0.0196196
		0.014185
		0.0200676
		0.0203317
		0.0218101
		0.0251765
		0.0197711
		0.0173474
		0.0169387
		0.024591
		0.0234134
		0.0218792
		0.025924
		0.0243438
		0.0267902
		0.0276604
		0.0268699
		0.0181643
		0.0219801
		0.0241578
		0.0177964
		0.0245704
		0.0227795
		0.0285363
		0.0210248
		0.0173899
		0.0244223
		0.0238041
		0.0218208
		0.0213619
		0.0181505
		0.0222129
		0.0199444
		0.0200082
		0.0184742
		0.0165252
		0.0118272
		0.0204125
		0.0229723
		0.0133179
		0.0203651
		0.0151004
		0.0154187
		0.0167721
		0.0177895
		0.0161676
		0.0167529
		0.0176651
		0.0250784
		0.0197377
		0.0198366
		0.0220263
		0.0160661
		0.0179853
		0.0175385
		0.0177963
		0.0203972
		0.0225946
		0.0247093
		0.02638
		0.0225772
		0.0201656
		0.0242641
		0.0179405
		0.028263
		0.020353
		0.022427
		0.0223748
		0.0237914
		0.0227483
		0.0290246
		0.025597
		0.0233442
		0.0256265
		0.027372
		0.0303945
		0.0315631
		0.0213309
		0.0299372
		0.0259732
		0.025366
		0.0289663
		0.0362885
		0.0210281
		0.0255184
		0.0315296
		0.029758
		0.0278099
		0.0288252
		0.0293261
		0.0292222
		0.0263341
		0.0299747
		0.0326023
		0.0288776
		0.0322876
		0.0282493
		0.0322116
		0.0318921
		0.030814
		0.030302
		0.0314425
		0.0284655
		0.0351315
		0.0288096
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 32.652445 %	 max error: 801.573977 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007863 max data: 0.036289

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.001253 
	   

>>>> Computational cost: 269.039325 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  6.5877e-02 (7.96e+06%); (bound active) 
	Vm1    : 1.5895e-02  +-  6.8290e-02 (     430%); 
	h1     : 5.0000e+00  +-  2.9885e+02 (5.98e+03%); (bound active) 
	Km1    : 2.3637e-02  +-  2.6952e-02 (     114%); 
	d1     : 4.7428e-02  +-  3.4148e-02 (      72%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.872294e-01	 9.985423e-01	 9.688594e-01	 -1.437352e-01
	 -9.872294e-01	 1.000000e+00	 -9.785789e-01	 -9.903556e-01	 2.993675e-01
	 9.985423e-01	 -9.785789e-01	 1.000000e+00	 9.556984e-01	 -9.922530e-02
	 9.688594e-01	 -9.903556e-01	 9.556984e-01	 1.000000e+00	 -3.514990e-01
	 -1.437352e-01	 2.993675e-01	 -9.922530e-02	 -3.514990e-01	 1.000000e+00
