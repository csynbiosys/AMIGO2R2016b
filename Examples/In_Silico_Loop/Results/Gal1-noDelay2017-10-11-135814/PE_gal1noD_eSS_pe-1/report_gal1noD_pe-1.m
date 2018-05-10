   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-Oct-2017
Problem folder:	 Results\Gal1-noDelay2017-10-11-135814
Results folder in problem folder:	 Results\Gal1-noDelay2017-10-11-135814\PE_gal1noD_eSS_pe-1 


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
	maxtime:	100
	ndiverse:	'auto'

		  default options are used. 


		>Bounds on the unknowns:

		v_guess(1)=0.006687;  v_min(1)=0.004140; v_max(1)=0.414000;
		v_guess(2)=1.467709;  v_min(2)=0.189000; v_max(2)=5.000000;
		v_guess(3)=0.218713;  v_min(3)=0.003680; v_max(3)=0.368000;
		v_guess(4)=0.077731;  v_min(4)=0.003000; v_max(4)=0.300000;



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
		Experiment 1: 	 1800.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 361: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0141	  2.0000	  0.0643	  0.1990	
			Control switching times: 	  0.0000	564.7196	928.7195	1799.9999	1800.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 361

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  1505.000  1510.000  1515.000  1520.000  1525.000  1530.000  1535.000  1540.000  1545.000  1550.000  1555.000  1560.000  1565.000  1570.000  1575.000  1580.000  1585.000  1590.000  1595.000  1600.000  1605.000  1610.000  1615.000  1620.000  1625.000  1630.000  1635.000  1640.000  1645.000  1650.000  1655.000  1660.000  1665.000  1670.000  1675.000  1680.000  1685.000  1690.000  1695.000  1700.000  1705.000  1710.000  1715.000  1720.000  1725.000  1730.000  1735.000  1740.000  1745.000  1750.000  1755.000  1760.000  1765.000  1770.000  1775.000  1780.000  1785.000  1790.000  1795.000  1800.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		0.809512
		1.1023
		0.981295
		1.09605
		1.06722
		1.0083
		1.02396
		1.24085
		0.913888
		1.13821
		1.13808
		0.997329
		0.846775
		0.924117
		0.903122
		1.05865
		0.925994
		0.944972
		0.821087
		1.04002
		0.930331
		0.872382
		0.853068
		0.893823
		1.00313
		0.909883
		0.854025
		0.990842
		0.902148
		0.885085
		0.877136
		0.966184
		0.851171
		0.928742
		0.713184
		0.736532
		0.970724
		0.803154
		0.779878
		0.748778
		0.801318
		0.761808
		0.820136
		0.933083
		0.691016
		0.685928
		0.78539
		0.704801
		0.802484
		0.77714
		0.763952
		0.609541
		0.84883
		0.544204
		0.767576
		0.890843
		0.729425
		0.535202
		0.465544
		0.658312
		0.70848
		0.773088
		0.618214
		0.754386
		0.656571
		0.49575
		0.587068
		0.4807
		0.574271
		0.635883
		0.67382
		0.611009
		0.527824
		0.778219
		0.527489
		0.598908
		0.405237
		0.541003
		0.549791
		0.655714
		0.589566
		0.577183
		0.675549
		0.650386
		0.630746
		0.614155
		0.42441
		0.600154
		0.462768
		0.495108
		0.625121
		0.64635
		0.338053
		0.544354
		0.447256
		0.525403
		0.426591
		0.544415
		0.506434
		0.575008
		0.683152
		0.604138
		0.653495
		0.313834
		0.373093
		0.556673
		0.563114
		0.600216
		0.564243
		0.409971
		0.634693
		0.534882
		0.465082
		0.414347
		0.249893
		0.298859
		0.446177
		0.564924
		0.318546
		0.297857
		0.53971
		0.454695
		0.404984
		0.342723
		0.397208
		0.264679
		0.515296
		0.383077
		0.307208
		0.542927
		0.267118
		0.333856
		0.428722
		0.501099
		0.464753
		0.417076
		0.232211
		0.477118
		0.298203
		0.485191
		0.531477
		0.480889
		0.338109
		0.440603
		0.598504
		0.463036
		0.504337
		0.513634
		0.34861
		0.469059
		0.278527
		0.532148
		0.691971
		0.524346
		0.554124
		0.544083
		0.506464
		0.729853
		0.500341
		0.433655
		0.58784
		0.650573
		0.533302
		0.61544
		0.516963
		0.677662
		0.52212
		0.434256
		0.570684
		0.324504
		0.506854
		0.736596
		0.673524
		0.539878
		0.548716
		0.595916
		0.678211
		0.491675
		0.666359
		0.450932
		0.697099
		0.714964
		0.65867
		0.563362
		0.559161
		0.673813
		0.694867
		0.643936
		0.51439
		0.849637
		0.791079
		0.643595
		0.878955
		0.726349
		0.730114
		0.683036
		0.763964
		0.696939
		0.668178
		0.591205
		0.517048
		0.532346
		0.818523
		0.611115
		0.768031
		0.706262
		0.695269
		0.814478
		0.74728
		0.818988
		0.625454
		0.843579
		0.684045
		0.600635
		0.778357
		0.570662
		0.761061
		0.621285
		0.739233
		0.805589
		0.783835
		0.549103
		0.788203
		0.588826
		0.695323
		0.849161
		0.790227
		0.736447
		0.656899
		0.767441
		0.746879
		0.780434
		0.83119
		0.625598
		0.743245
		0.869755
		0.779482
		0.739301
		1.06158
		0.696665
		0.649806
		0.936694
		0.764303
		0.926198
		0.577302
		0.813885
		0.872768
		0.560246
		0.723293
		0.690197
		0.708667
		0.740434
		0.783114
		0.66208
		0.837487
		0.858352
		0.854513
		0.647942
		0.712717
		0.923195
		0.803005
		0.591896
		0.748807
		0.813251
		0.670613
		0.605038
		0.706058
		0.870341
		0.791094
		0.730064
		0.829013
		0.692104
		0.666092
		0.736619
		0.540276
		0.544976
		0.642698
		0.551688
		0.636201
		0.636976
		0.83924
		0.779469
		0.746425
		0.676606
		0.724613
		0.620519
		0.76266
		0.677781
		0.857568
		0.573102
		0.676656
		0.793101
		0.600416
		0.72851
		0.862697
		0.796434
		0.690924
		0.96027
		0.746874
		0.493566
		0.89019
		0.720267
		0.701837
		0.740862
		0.64268
		0.816842
		0.707933
		0.866656
		0.681583
		0.670569
		0.715481
		0.529321
		0.844187
		0.755123
		0.748587
		0.88682
		0.896583
		0.778474
		0.752004
		0.622186
		0.734608
		0.84617
		0.688696
		0.763665
		0.935249
		0.929023
		0.612358
		0.864362
		0.70302
		0.757551
		0.724339
		0.830615
		0.799776
		0.705232
		0.694993
		0.794767
		0.731449
		0.79997
		0.640575
		0.63461
		0.771534
		0.664473
		0.740262
		0.654849
		0.911827
		0.73066
		0.680849
		0.64152
		0.637642
		0.673619
		0.845865
		0.661163
		0.692252
		0.658206
		0.723376
		0.666407
		0.604622
		0.990469
		0.551899
		0.855686
		0.771332
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 13.408484 %	 max error: 87.667108 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.327228 max data: 1.240854

--------------------------------------------------------------------------	   

>>>> Best objective function: 2.390691 
	   

>>>> Computational cost: 100.105842 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Vm1    : 7.6817e-02  +-  7.2402e-02 (    94.3%); 
	h1     : 1.9362e+00  +-  2.2002e-01 (    11.4%); 
	Km1    : 4.0045e-02  +-  7.2506e-03 (    18.1%); 
	d1     : 5.4124e-02  +-  5.2986e-02 (    97.9%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -8.713814e-02	 -4.959076e-01	 9.980934e-01
	 -8.713814e-02	 1.000000e+00	 2.701546e-02	 -8.003095e-02
	 -4.959076e-01	 2.701546e-02	 1.000000e+00	 -5.447238e-01
	 9.980934e-01	 -8.003095e-02	 -5.447238e-01	 1.000000e+00