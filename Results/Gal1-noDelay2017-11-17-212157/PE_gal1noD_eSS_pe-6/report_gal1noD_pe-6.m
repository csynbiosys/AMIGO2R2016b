   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 17-Nov-2017
Problem folder:	 Results\Gal1-noDelay2017-11-17-212157
Results folder in problem folder:	 Results\Gal1-noDelay2017-11-17-212157\PE_gal1noD_eSS_pe-6 


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
		Experiment 1: 	 1800.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 361: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0191	  1.0958	
			Control switching times: 	  0.0000	1500.0000	3000.0000


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
		0.813743
		1.01132
		1.17085
		1.08766
		1.12781
		0.946275
		0.984837
		1.00635
		1.15809
		1.04204
		0.900459
		1.05513
		0.991197
		1.04662
		0.967392
		0.908725
		0.924382
		0.861946
		0.960465
		0.952181
		0.82282
		1.07605
		1.01741
		0.952285
		0.891847
		0.903476
		0.879094
		0.868235
		0.84808
		0.798232
		0.806911
		0.85586
		1.03433
		0.832058
		0.905568
		0.95006
		0.976841
		0.944483
		0.730154
		0.828504
		0.84131
		0.817725
		0.864921
		0.886306
		0.868865
		0.958856
		0.780908
		0.773975
		0.727801
		0.866058
		0.638772
		0.692215
		0.791174
		0.831585
		0.918938
		0.872853
		0.655017
		0.536635
		0.764935
		0.867665
		0.467223
		0.773672
		0.636216
		0.699597
		0.710881
		0.803996
		0.690083
		0.540418
		0.656252
		0.739696
		0.583802
		0.716388
		0.713274
		0.668589
		0.713545
		0.619108
		0.65747
		0.631345
		0.618118
		0.600955
		0.69115
		0.560476
		0.395042
		0.57896
		0.854648
		0.582155
		0.736333
		0.693401
		0.701108
		0.51769
		0.579824
		0.566545
		0.537159
		0.571861
		0.688056
		0.405398
		0.455823
		0.555411
		0.477795
		0.552751
		0.483659
		0.447957
		0.646511
		0.585979
		0.476327
		0.649275
		0.608818
		0.68623
		0.533518
		0.587462
		0.479688
		0.554457
		0.381022
		0.593874
		0.607146
		0.507478
		0.457602
		0.404026
		0.338423
		0.713423
		0.515044
		0.526931
		0.451996
		0.507557
		0.347236
		0.625057
		0.35189
		0.271731
		0.468012
		0.51732
		0.72165
		0.589219
		0.630633
		0.380394
		0.334852
		0.236289
		0.521387
		0.476017
		0.499047
		0.559066
		0.323406
		0.362374
		0.373995
		0.485676
		0.407333
		0.348113
		0.465572
		0.518666
		0.512107
		0.472494
		0.414051
		0.330521
		0.550519
		0.230832
		0.199407
		0.390991
		0.414241
		0.151944
		0.418255
		0.315597
		0.32014
		0.376942
		0.302156
		0.296139
		0.447872
		0.401107
		0.364224
		0.384688
		0.455478
		0.398682
		0.338839
		0.347398
		0.57013
		0.440863
		0.439342
		0.365117
		0.329714
		0.376547
		0.298041
		0.448709
		0.497268
		0.452554
		0.223742
		0.397953
		0.469222
		0.293249
		0.347488
		0.542443
		0.309539
		0.179191
		0.465923
		0.226817
		0.2732
		0.33396
		0.308233
		0.342947
		0.0948359
		0.390717
		0.354434
		0.283149
		0.409882
		0.287044
		0.311523
		0.292407
		0.348197
		0.23475
		0.351941
		0.422384
		0.360451
		0.241395
		0.355492
		0.270362
		0.268776
		0.333462
		0.510777
		0.294448
		0.187942
		0.227247
		0.11947
		0.354006
		0.24097
		0.1625
		0.341231
		0.144897
		0.170613
		0.301169
		0.262732
		0.222095
		0.361853
		0.403177
		0.13862
		0.280601
		0.383685
		0.512109
		0.181748
		0.293514
		0.0389924
		0.247878
		0.218606
		0.374378
		0.417241
		0.136889
		0.19381
		0.401133
		0.319839
		0.275075
		0.0495701
		0.230085
		0.164078
		0.13229
		0.182298
		0.253346
		0.554484
		0.400714
		0.342086
		0.385567
		0.34658
		0.315211
		0.240256
		0.201099
		0.228307
		0.143229
		0.428098
		0.121488
		0.138351
		0.195447
		0.466193
		0.57924
		0.400153
		0.205778
		0.157711
		0.22704
		0.229875
		0.190117
		0.0936658
		0.328936
		0.344949
		0.477768
		0.170866
		0.133696
		0.255488
		0.334205
		0.226843
		0.276657
		0.269733
		0.307384
		0.19902
		0.261595
		0.234938
		0.288065
		0.22313
		0.157656
		0.228857
		0.345962
		0.0617574
		0.221381
		0.261562
		0.289242
		0.37282
		0.141241
		0.250214
		0.35281
		0.157977
		0.235302
		0.314053
		0.35658
		0.236135
		-0.0312849
		0.432474
		0.328851
		0.379795
		0.124961
		0.312567
		0.386359
		0.1819
		0.199005
		0.341321
		0.344229
		0.216638
		0.345187
		0.273297
		0.309042
		0.207263
		0.262321
		0.456187
		0.251798
		0.307958
		0.160817
		0.184173
		0.453859
		0.344935
		0.336566
		0.460284
		0.446592
		0.277594
		0.379651
		0.400059
		0.308224
		0.412626
		0.405707
		0.483385
		0.381317
		0.626246
		0.201271
		0.462897
		0.365549
		0.349848
		0.547393
		0.39348
		0.533501
		0.381025
		0.505697
		0.397473
		0.587282
		0.444219
		0.496025
		0.52411
		0.502325
		0.558202
		0.505366
		0.435868
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 29.008177 %	 max error: 906.044703 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.313111 max data: 1.170850

--------------------------------------------------------------------------	   

>>>> Best objective function: 3.591396 
	   

>>>> Computational cost: 300.286325 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Estimated global parameters: 

	Vm1    : 6.7461e-02  
	h1     : 6.7879e-01  
	Km1    : 2.2944e-01  
	d1     : 3.5109e-02  
