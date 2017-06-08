   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-041231
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-041231\PE_gal1noD_eSS_pe-5 


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

		v_guess(1)=0.000004;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.003293;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=6.847697;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.007039;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.016918;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.164e-04  1.759e-04  2.023e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1800.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 361: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0667	  0.0039	  0.0057	  0.0639	  0.5703	  0.0229	  0.3180	  0.0022	  0.0000	  0.0000	  0.0000	  0.0038	  0.2616	  0.0000	  0.0000	  0.0508	  0.0047	  0.0582	  0.0018	  0.0115	  0.0012	  0.0030	  0.0874	  0.0096	  0.0000	  0.2332	  0.0010	  0.3234	  0.0106	  0.8678	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000	780.0000	840.0000	900.0000	960.0000	1020.0000	1080.0000	1140.0000	1200.0000	1260.0000	1320.0000	1380.0000	1440.0000	1500.0000	1560.0000	1620.0000	1680.0000	1740.0000	1800.0000


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
		-0.00121024
		0.000882409
		0.000647267
		0.000111203
		-0.00573026
		-0.00370162
		-0.00334243
		0.00433211
		0.00142703
		-0.00514528
		-0.00244306
		0.00526889
		0.00244916
		0.000283965
		0.0013796
		0.00749093
		0.00165993
		-0.000788879
		0.00501712
		0.00831593
		0.00267759
		0.0104765
		0.00588684
		0.00794969
		0.00951123
		0.00395078
		0.0087859
		0.00986493
		0.00858028
		0.00781247
		0.00426127
		0.00783731
		0.00310895
		0.0106338
		0.00351897
		0.00961757
		0.00551991
		0.00441263
		0.00677561
		0.00671954
		0.00730789
		0.0087606
		0.00639427
		0.00902889
		0.00440869
		0.00974878
		0.00567382
		0.00569965
		0.0112262
		0.00965302
		0.00456745
		0.00959462
		0.0112479
		0.00924045
		0.0110782
		0.00702681
		0.00732481
		0.0056668
		0.00487436
		0.00843123
		0.0113062
		0.0120421
		0.0142334
		0.0167334
		0.0161014
		0.0167041
		0.0142027
		0.0160767
		0.0200751
		0.0142098
		0.0189049
		0.0160348
		0.0150943
		0.0185232
		0.0209066
		0.0183395
		0.0138259
		0.0201181
		0.0180436
		0.0162697
		0.0187494
		0.0186009
		0.0181937
		0.0244787
		0.0218613
		0.0157824
		0.0155505
		0.0196743
		0.0166601
		0.01415
		0.0220211
		0.0183056
		0.0185518
		0.020545
		0.0198053
		0.0227803
		0.0223802
		0.0207407
		0.0183581
		0.0185531
		0.0170631
		0.0181924
		0.0150871
		0.0197286
		0.0165856
		0.01124
		0.0162134
		0.0115033
		0.0194755
		0.0164468
		0.0114784
		0.00973386
		0.0104833
		0.004493
		0.0119185
		0.0143921
		0.0111347
		0.00263119
		0.00773973
		0.00778335
		0.00900429
		0.00562666
		0.0118196
		0.00503379
		0.00592584
		0.0114043
		0.00673891
		0.0095635
		0.00115643
		0.011362
		0.00736603
		0.00877491
		0.00385169
		0.0052214
		0.00428254
		0.00292459
		0.00774444
		0.00736699
		0.00814735
		0.00168024
		0.00375635
		0.00378092
		0.00396349
		0.000599166
		8.47342e-05
		0.00221442
		0.00151092
		0.00112522
		0.00474526
		0.000829315
		0.00238374
		0.00549098
		0.00917059
		0.00696974
		0.00413459
		0.00133227
		0.00326536
		0.0036877
		0.00981985
		0.00107895
		0.00831129
		0.0122047
		0.00714171
		0.0134395
		0.0130034
		0.00823475
		0.00897492
		0.00814669
		0.012597
		0.00435286
		0.00922899
		0.0125206
		0.00653755
		0.00689243
		0.00774561
		0.0110671
		0.00626312
		0.0131018
		0.00760396
		0.00743483
		0.00915295
		0.0100161
		0.00431056
		0.0103683
		0.00941123
		0.0093222
		0.0110672
		0.0109817
		0.00888324
		0.004408
		0.00876246
		0.00980933
		0.00715977
		0.00967493
		0.0115207
		0.00257223
		0.00630207
		0.00901728
		0.0104874
		0.00523625
		0.00896325
		0.01065
		0.00669691
		0.0101141
		0.00740369
		0.0056387
		0.00196242
		0.0108135
		0.0119404
		0.0103637
		0.0104598
		0.00741851
		0.00753068
		0.0072706
		0.0077679
		0.0105773
		0.0160398
		0.0112841
		0.00902743
		0.00753092
		0.00623318
		0.0116464
		0.00585248
		0.0111311
		0.0128144
		0.0151371
		0.00957117
		0.00866223
		0.00899079
		0.00752114
		0.0102055
		0.011107
		0.0165022
		0.0128715
		0.00838082
		0.011884
		0.0106839
		0.0110888
		0.00576748
		0.00830184
		0.0020749
		0.00937953
		0.00354537
		0.00526632
		0.0109143
		0.00772305
		0.00471506
		0.00735868
		0.00875141
		0.00436834
		0.00603339
		0.00673873
		0.00555697
		0.00722363
		0.00388322
		0.00348826
		0.00479593
		0.006569
		0.00616219
		0.00705356
		0.00373521
		0.00681457
		0.00260967
		0.0044503
		0.00117159
		0.00617661
		0.00501141
		0.00148617
		0.0056075
		0.000860679
		0.00225724
		0.00663198
		-0.000186558
		0.0067589
		0.00212035
		0.0023029
		0.00604805
		0.00871682
		0.00598104
		-9.87556e-06
		0.00276825
		0.0120441
		0.00947964
		0.00910668
		0.0112109
		0.00898949
		0.0135724
		0.00777923
		0.00924491
		0.00620419
		0.0091561
		0.00842396
		0.00988112
		0.0131942
		0.0100643
		0.0116381
		0.00900243
		0.0073845
		0.00826889
		0.00376336
		0.0122662
		0.00836375
		0.00975434
		0.00405341
		0.006757
		0.00710098
		-0.000911516
		0.00610289
		0.00981676
		0.00607195
		0.00934865
		0.00680381
		0.0049561
		0.0107466
		0.00807683
		0.00979424
		0.00717685
		0.00533735
		0.0123403
		0.00903887
		0.0110083
		0.00557428
		0.00970097
		0.0129735
		0.0116649
		0.0101803
		0.0140163
		0.0108054
		0.0108152
		0.0122522
		0.0133651
		0.015987
		0.00755165
		0.00834779
		0.0155626
		0.0117915
		0.0176886
		0.0128482
		0.0109867
		0.0114151
		0.0126291
		0.0161458
		0.0150606
		0.0174026
		0.0132445
		0.0163513
		0.017213
		0.0178643
		0.0208614
		0.0137745
		0.0170432
		0.0161779
		0.0187552
		0.0118581
		0.0110205
		0.0179466
		0.0064002
		0.0170214
		0.0186244
		0.0137134
		0.0178279
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 233.904038 %	 max error: 62627.123440 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.008688 max data: 0.024479

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.002847 
	   

>>>> Computational cost: 300.083524 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  2.5200e-04 (     304%); (bound active) 
	Vm1    : 9.3070e-03  +-  2.1686e-03 (    23.3%); 
	h1     : 2.0577e+00  +-  1.0921e+00 (    53.1%); 
	Km1    : 4.1211e-02  +-  7.1194e-03 (    17.3%); 
	d1     : 2.6743e-02  +-  6.8369e-03 (    25.6%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 2.345941e-01	 -1.877111e-01	 2.354462e-01	 4.524108e-01
	 2.345941e-01	 1.000000e+00	 -5.580746e-01	 1.108154e-02	 9.455980e-01
	 -1.877111e-01	 -5.580746e-01	 1.000000e+00	 3.598091e-01	 -5.829089e-01
	 2.354462e-01	 1.108154e-02	 3.598091e-01	 1.000000e+00	 -1.133381e-01
	 4.524108e-01	 9.455980e-01	 -5.829089e-01	 -1.133381e-01	 1.000000e+00
