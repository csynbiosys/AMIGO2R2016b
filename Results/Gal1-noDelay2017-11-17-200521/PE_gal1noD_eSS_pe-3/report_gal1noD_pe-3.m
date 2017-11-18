   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 17-Nov-2017
Problem folder:	 Results\Gal1-noDelay2017-11-17-200521
Results folder in problem folder:	 Results\Gal1-noDelay2017-11-17-200521\PE_gal1noD_eSS_pe-3 


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
		Experiment 1: 	 900.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 181: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0187	
			Control switching times: 	  0.0000	900.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 181

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.13801
		0.788693
		1.05895
		0.934159
		1.00241
		0.977755
		1.02511
		0.869019
		0.945112
		1.01118
		1.00918
		0.944089
		0.996441
		1.05076
		0.959418
		0.969573
		0.914256
		1.13577
		0.881643
		1.02183
		0.955552
		0.718467
		1.07928
		0.932435
		0.919855
		1.07632
		0.955153
		0.897144
		0.936617
		0.840938
		0.974943
		1.00175
		0.939799
		0.87465
		0.949075
		0.683051
		0.990199
		0.882253
		0.977577
		0.965673
		0.890077
		0.987744
		0.957726
		0.762544
		0.766746
		0.823989
		0.656123
		0.914955
		0.836329
		0.683279
		0.828573
		0.809227
		0.45925
		0.75381
		0.730535
		0.543572
		0.886375
		0.834838
		0.71033
		0.776766
		0.650004
		0.797174
		0.549428
		0.808517
		0.750744
		0.732327
		0.781989
		0.834359
		0.551547
		0.687841
		0.583839
		0.705155
		0.738926
		0.580562
		0.728723
		0.557437
		0.675582
		0.583407
		0.503763
		0.637169
		0.695898
		0.724482
		0.710589
		0.626471
		0.648323
		0.58264
		0.668911
		0.557225
		0.616121
		0.670311
		0.632461
		0.606576
		0.607037
		0.389136
		0.507919
		0.556399
		0.529542
		0.647845
		0.573836
		0.243505
		0.520697
		0.561832
		0.457569
		0.471494
		0.482859
		0.523153
		0.641124
		0.466961
		0.409218
		0.617362
		0.614565
		0.610861
		0.625355
		0.605244
		0.446138
		0.620778
		0.501461
		0.594649
		0.584046
		0.302976
		0.401845
		0.706243
		0.517472
		0.494924
		0.418583
		0.402074
		0.489821
		0.482063
		0.233238
		0.590861
		0.393157
		0.614201
		0.560253
		0.25143
		0.422208
		0.251123
		0.573058
		0.339696
		0.514627
		0.396598
		0.608066
		0.461234
		0.426853
		0.39431
		0.533165
		0.34964
		0.689
		0.432215
		0.429559
		0.360704
		0.447098
		0.393021
		0.411264
		0.360305
		0.384208
		0.502139
		0.391164
		0.522706
		0.329516
		0.301594
		0.228031
		0.363434
		0.41638
		0.320259
		0.287115
		0.226365
		0.313947
		0.499817
		0.598018
		0.42393
		0.306447
		0.4178
		0.490969
		0.351022
		0.216711
		0.174803
		0.375428
		0.316293
		0.394952
		0.293345
		0.438534
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 15.645379 %	 max error: 128.021466 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.321789 max data: 1.138009

--------------------------------------------------------------------------	   

>>>> Best objective function: 1.814023 
	   

>>>> Computational cost: 300.161524 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Vm1    : 2.7021e-01  +-  3.4621e+06 (1.28e+09%); 
	h1     : 1.3442e+00  +-  3.4075e+06 (2.53e+08%); 
	Km1    : 2.1894e-01  +-  4.7070e+05 (2.15e+08%); 
	d1     : 3.1039e-02  +-  2.7416e-02 (    88.3%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 1.070276e+00	 1.491363e+00	 -5.936746e-03
	 1.070276e+00	 1.000000e+00	 2.018195e+00	 -6.313406e-03
	 1.491363e+00	 2.018195e+00	 1.000000e+00	 -8.971839e-03
	 -5.936746e-03	 -6.313406e-03	 -8.971839e-03	 1.000000e+00


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
		Experiment 1: 	 900.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 181: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0223	
			Control switching times: 	  0.0000	900.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 181

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.00552
		1.05603
		0.991416
		1.01393
		1.04294
		0.843915
		1.03878
		0.959876
		0.92585
		1.18801
		1.15582
		0.882865
		1.11901
		0.927166
		0.821323
		1.13935
		0.82021
		1.03839
		1.17282
		1.07681
		1.03829
		1.1194
		1.10334
		0.933819
		0.869514
		0.746967
		0.946951
		0.859756
		0.744789
		0.861664
		0.883012
		0.841548
		0.912752
		1.01574
		0.992466
		0.872298
		0.922589
		0.984959
		0.878244
		0.856049
		0.737738
		0.841152
		0.764686
		0.960324
		0.867541
		0.681207
		0.772056
		0.881262
		0.728761
		0.759995
		0.837691
		0.802894
		0.695765
		0.782239
		0.770661
		0.744009
		0.802944
		0.779103
		0.849044
		0.970678
		0.671675
		0.692156
		0.738904
		0.644623
		0.538203
		0.679832
		0.785782
		0.91334
		0.683679
		0.787678
		0.742247
		0.765829
		0.636461
		0.892874
		0.67722
		0.785824
		0.779397
		0.74394
		0.694633
		0.557991
		0.581193
		0.741866
		0.5718
		0.591573
		0.836837
		0.520819
		0.582322
		0.690323
		0.669948
		0.608861
		0.629903
		0.64125
		0.676078
		0.401055
		0.556489
		0.73185
		0.41809
		0.561159
		0.734616
		0.688387
		0.615965
		0.360698
		0.908627
		0.531691
		0.540712
		0.497789
		0.541767
		0.583021
		0.613302
		0.621286
		0.65307
		0.586486
		0.569222
		0.537953
		0.563926
		0.607652
		0.712546
		0.442693
		0.723154
		0.614294
		0.740304
		0.660682
		0.458485
		0.445687
		0.459093
		0.45244
		0.500004
		0.569673
		0.435376
		0.369944
		0.35384
		0.408336
		0.4045
		0.490404
		0.568849
		0.459559
		0.430085
		0.642318
		0.675759
		0.440784
		0.595325
		0.506598
		0.4732
		0.259971
		0.391616
		0.487226
		0.571347
		0.321269
		0.382969
		0.353451
		0.284568
		0.364171
		0.530756
		0.390512
		0.42652
		0.489052
		0.413122
		0.544586
		0.474587
		0.341965
		0.279698
		0.492028
		0.545997
		0.296532
		0.33049
		0.372196
		0.4597
		0.445331
		0.284907
		0.306073
		0.40232
		0.54456
		0.362461
		0.449793
		0.162466
		0.270391
		0.383252
		0.287652
		0.403815
		0.256362
		0.328447
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 14.821369 %	 max error: 140.347663 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.334638 max data: 1.188011

--------------------------------------------------------------------------	   

>>>> Best objective function: 1.905655 
	   

>>>> Computational cost: 300.161524 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Vm1    : 3.9170e-01  +-  1.1739e+07 (   3e+09%); 
	h1     : 1.8084e+00  +-  9.5479e+06 (5.28e+08%); 
	Km1    : 2.1351e-01  +-  9.6466e+05 (4.52e+08%); 
	d1     : 1.9089e-02  +-  1.2144e-02 (    63.6%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 1.009564e+00	 1.064855e+00	 -1.407044e-02
	 1.009564e+00	 1.000000e+00	 1.125772e+00	 -1.427939e-02
	 1.064855e+00	 1.125772e+00	 1.000000e+00	 -1.478675e-02
	 -1.407044e-02	 -1.427939e-02	 -1.478675e-02	 1.000000e+00


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
		Experiment 1: 	 900.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 181: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0223	
			Control switching times: 	  0.0000	900.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 181

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.00552
		1.05603
		0.991416
		1.01393
		1.04294
		0.843915
		1.03878
		0.959876
		0.92585
		1.18801
		1.15582
		0.882865
		1.11901
		0.927166
		0.821323
		1.13935
		0.82021
		1.03839
		1.17282
		1.07681
		1.03829
		1.1194
		1.10334
		0.933819
		0.869514
		0.746967
		0.946951
		0.859756
		0.744789
		0.861664
		0.883012
		0.841548
		0.912752
		1.01574
		0.992466
		0.872298
		0.922589
		0.984959
		0.878244
		0.856049
		0.737738
		0.841152
		0.764686
		0.960324
		0.867541
		0.681207
		0.772056
		0.881262
		0.728761
		0.759995
		0.837691
		0.802894
		0.695765
		0.782239
		0.770661
		0.744009
		0.802944
		0.779103
		0.849044
		0.970678
		0.671675
		0.692156
		0.738904
		0.644623
		0.538203
		0.679832
		0.785782
		0.91334
		0.683679
		0.787678
		0.742247
		0.765829
		0.636461
		0.892874
		0.67722
		0.785824
		0.779397
		0.74394
		0.694633
		0.557991
		0.581193
		0.741866
		0.5718
		0.591573
		0.836837
		0.520819
		0.582322
		0.690323
		0.669948
		0.608861
		0.629903
		0.64125
		0.676078
		0.401055
		0.556489
		0.73185
		0.41809
		0.561159
		0.734616
		0.688387
		0.615965
		0.360698
		0.908627
		0.531691
		0.540712
		0.497789
		0.541767
		0.583021
		0.613302
		0.621286
		0.65307
		0.586486
		0.569222
		0.537953
		0.563926
		0.607652
		0.712546
		0.442693
		0.723154
		0.614294
		0.740304
		0.660682
		0.458485
		0.445687
		0.459093
		0.45244
		0.500004
		0.569673
		0.435376
		0.369944
		0.35384
		0.408336
		0.4045
		0.490404
		0.568849
		0.459559
		0.430085
		0.642318
		0.675759
		0.440784
		0.595325
		0.506598
		0.4732
		0.259971
		0.391616
		0.487226
		0.571347
		0.321269
		0.382969
		0.353451
		0.284568
		0.364171
		0.530756
		0.390512
		0.42652
		0.489052
		0.413122
		0.544586
		0.474587
		0.341965
		0.279698
		0.492028
		0.545997
		0.296532
		0.33049
		0.372196
		0.4597
		0.445331
		0.284907
		0.306073
		0.40232
		0.54456
		0.362461
		0.449793
		0.162466
		0.270391
		0.383252
		0.287652
		0.403815
		0.256362
		0.328447
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 14.821369 %	 max error: 140.347663 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.334638 max data: 1.188011

--------------------------------------------------------------------------	   

>>>> Best objective function: 1.905655 
	   

>>>> Computational cost: 300.208324 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Vm1    : 3.9170e-01  +-  1.1739e+07 (   3e+09%); 
	h1     : 1.8084e+00  +-  9.5479e+06 (5.28e+08%); 
	Km1    : 2.1351e-01  +-  9.6466e+05 (4.52e+08%); 
	d1     : 1.9089e-02  +-  1.2144e-02 (    63.6%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 1.009564e+00	 1.064855e+00	 -1.407044e-02
	 1.009564e+00	 1.000000e+00	 1.125772e+00	 -1.427939e-02
	 1.064855e+00	 1.125772e+00	 1.000000e+00	 -1.478675e-02
	 -1.407044e-02	 -1.427939e-02	 -1.478675e-02	 1.000000e+00


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
		Experiment 1: 	 900.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 181: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0223	
			Control switching times: 	  0.0000	900.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 181

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.00552
		1.05603
		0.991416
		1.01393
		1.04294
		0.843915
		1.03878
		0.959876
		0.92585
		1.18801
		1.15582
		0.882865
		1.11901
		0.927166
		0.821323
		1.13935
		0.82021
		1.03839
		1.17282
		1.07681
		1.03829
		1.1194
		1.10334
		0.933819
		0.869514
		0.746967
		0.946951
		0.859756
		0.744789
		0.861664
		0.883012
		0.841548
		0.912752
		1.01574
		0.992466
		0.872298
		0.922589
		0.984959
		0.878244
		0.856049
		0.737738
		0.841152
		0.764686
		0.960324
		0.867541
		0.681207
		0.772056
		0.881262
		0.728761
		0.759995
		0.837691
		0.802894
		0.695765
		0.782239
		0.770661
		0.744009
		0.802944
		0.779103
		0.849044
		0.970678
		0.671675
		0.692156
		0.738904
		0.644623
		0.538203
		0.679832
		0.785782
		0.91334
		0.683679
		0.787678
		0.742247
		0.765829
		0.636461
		0.892874
		0.67722
		0.785824
		0.779397
		0.74394
		0.694633
		0.557991
		0.581193
		0.741866
		0.5718
		0.591573
		0.836837
		0.520819
		0.582322
		0.690323
		0.669948
		0.608861
		0.629903
		0.64125
		0.676078
		0.401055
		0.556489
		0.73185
		0.41809
		0.561159
		0.734616
		0.688387
		0.615965
		0.360698
		0.908627
		0.531691
		0.540712
		0.497789
		0.541767
		0.583021
		0.613302
		0.621286
		0.65307
		0.586486
		0.569222
		0.537953
		0.563926
		0.607652
		0.712546
		0.442693
		0.723154
		0.614294
		0.740304
		0.660682
		0.458485
		0.445687
		0.459093
		0.45244
		0.500004
		0.569673
		0.435376
		0.369944
		0.35384
		0.408336
		0.4045
		0.490404
		0.568849
		0.459559
		0.430085
		0.642318
		0.675759
		0.440784
		0.595325
		0.506598
		0.4732
		0.259971
		0.391616
		0.487226
		0.571347
		0.321269
		0.382969
		0.353451
		0.284568
		0.364171
		0.530756
		0.390512
		0.42652
		0.489052
		0.413122
		0.544586
		0.474587
		0.341965
		0.279698
		0.492028
		0.545997
		0.296532
		0.33049
		0.372196
		0.4597
		0.445331
		0.284907
		0.306073
		0.40232
		0.54456
		0.362461
		0.449793
		0.162466
		0.270391
		0.383252
		0.287652
		0.403815
		0.256362
		0.328447
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 14.821369 %	 max error: 140.347685 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.334638 max data: 1.188011

--------------------------------------------------------------------------	   

>>>> Best objective function: 1.905655 
	   

>>>> Computational cost: 300.208324 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Vm1    : 1.9473e-01  +-  1.0214e+06 (5.25e+08%); 
	h1     : 1.6917e+00  +-  3.4758e+06 (2.05e+08%); 
	Km1    : 1.6341e-01  +-  5.7970e+05 (3.55e+08%); 
	d1     : 1.9089e-02  +-  1.2143e-02 (    63.6%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 5.503215e-01	 2.694031e-01	 -2.470625e-03
	 5.503215e-01	 1.000000e+00	 -6.558243e-01	 -8.000466e-04
	 2.694031e-01	 -6.558243e-01	 1.000000e+00	 -1.311157e-03
	 -2.470625e-03	 -8.000466e-04	 -1.311157e-03	 1.000000e+00
