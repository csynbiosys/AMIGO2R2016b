   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-132603
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-132603\PE_gal1noD_eSS_pe-5 


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

		v_guess(1)=0.000008;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.072810;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.620472;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.005115;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.025292;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.320e-04  2.699e-04  3.104e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1800.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 361: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.9953	  1.9991	  2.0000	  1.9108	  1.1687	  0.6195	  0.0382	  0.0040	  1.5257	  1.9322	  0.0568	  1.9861	  1.9864	  0.0005	  0.0002	  1.5428	  2.0000	  0.0034	  0.0054	  0.4960	  2.0000	  0.2948	  1.4144	  0.1963	  0.0000	  2.0000	  2.0000	  0.0002	  1.9964	  0.0057	
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
		-0.00196791
		-0.000542891
		0.000638273
		0.00248862
		-0.0022517
		-0.00107741
		0.000198991
		7.11437e-07
		-0.00122235
		-0.000186194
		0.00205815
		-0.00177151
		0.00217393
		0.00952706
		0.0051779
		0.0104883
		0.0081697
		0.00830424
		0.0111411
		0.0126042
		0.0134311
		0.00359832
		0.01364
		0.0174117
		0.0134906
		0.0119675
		0.014505
		0.0117227
		0.0165972
		0.0181652
		0.0129772
		0.0168008
		0.0182202
		0.0177697
		0.0195049
		0.0244169
		0.0181278
		0.0234377
		0.0219419
		0.0240091
		0.0204913
		0.0208407
		0.0215506
		0.0272981
		0.0199153
		0.02744
		0.0227667
		0.021777
		0.0309855
		0.0221254
		0.0244322
		0.030712
		0.0321506
		0.0276096
		0.0276527
		0.0248047
		0.0342122
		0.0245084
		0.0306949
		0.0309145
		0.0350942
		0.0267744
		0.0293894
		0.0267979
		0.0330747
		0.0301991
		0.0323094
		0.0313702
		0.0315475
		0.0329786
		0.0349714
		0.0294734
		0.0304652
		0.0253971
		0.0294477
		0.0300049
		0.0309845
		0.030729
		0.0370175
		0.0319652
		0.0371622
		0.0305901
		0.0302187
		0.0245906
		0.0312929
		0.0258417
		0.0293481
		0.0245484
		0.0340455
		0.0313293
		0.0223123
		0.0254161
		0.0246867
		0.026223
		0.0267842
		0.023471
		0.0229206
		0.0209504
		0.0214058
		0.0225774
		0.0211127
		0.0263293
		0.0214018
		0.0187281
		0.0206444
		0.0184391
		0.0191566
		0.0196701
		0.0194931
		0.018784
		0.0197658
		0.0176366
		0.0182284
		0.0199281
		0.0172839
		0.0189247
		0.0226822
		0.0147987
		0.0186349
		0.0165961
		0.0180148
		0.0205716
		0.0277857
		0.015747
		0.0204928
		0.0208742
		0.0178017
		0.0198364
		0.0194947
		0.0251388
		0.0215268
		0.0278173
		0.0234323
		0.027942
		0.022597
		0.0228925
		0.0280375
		0.0274193
		0.0234951
		0.0226159
		0.0280055
		0.0234726
		0.0223055
		0.0185063
		0.0254054
		0.0249372
		0.0294112
		0.0252968
		0.0288312
		0.0313053
		0.0270994
		0.0287057
		0.0294886
		0.0288276
		0.0235002
		0.0256976
		0.0273391
		0.0249231
		0.0261113
		0.0259889
		0.0270998
		0.0267754
		0.0275308
		0.0289682
		0.0304638
		0.0280523
		0.0272148
		0.0225201
		0.0249037
		0.0184082
		0.0265718
		0.0196545
		0.0251091
		0.0279958
		0.0229855
		0.0202776
		0.0253369
		0.0183055
		0.0169209
		0.0190422
		0.0141912
		0.0138811
		0.0164647
		0.0139831
		0.010981
		0.0203378
		0.0210277
		0.0124243
		0.0124995
		0.0145848
		0.0163449
		0.0109896
		0.0170391
		0.0114841
		0.0165776
		0.0104775
		0.013283
		0.0182662
		0.0145942
		0.0184333
		0.0182064
		0.0179833
		0.0192181
		0.0218611
		0.0185841
		0.0171844
		0.0184628
		0.0210544
		0.0131799
		0.0203815
		0.0145548
		0.023007
		0.0251345
		0.0172266
		0.0195267
		0.0210081
		0.0189075
		0.0224568
		0.0236138
		0.0200467
		0.0150402
		0.0222384
		0.0211815
		0.0143828
		0.0185266
		0.0202415
		0.0207588
		0.0161092
		0.0155349
		0.0134468
		0.0123889
		0.0118172
		0.00846906
		0.0141709
		0.00991678
		0.0100048
		0.00912608
		0.0143716
		0.00961161
		0.0112492
		0.0218431
		0.0164485
		0.0181359
		0.0142185
		0.0141416
		0.0141522
		0.0187702
		0.0167159
		0.0157281
		0.0140374
		0.00997353
		0.0147573
		0.015454
		0.0174279
		0.0134164
		0.0162379
		0.0235588
		0.0215793
		0.0181643
		0.0221833
		0.0164971
		0.0315856
		0.020455
		0.02138
		0.0225518
		0.0228971
		0.0219562
		0.0247718
		0.0290176
		0.0231886
		0.0235921
		0.0252789
		0.0222639
		0.0260983
		0.0327521
		0.0250323
		0.0286217
		0.0235599
		0.027229
		0.0291823
		0.0285334
		0.0299059
		0.0320907
		0.0263359
		0.0267072
		0.0307177
		0.0362999
		0.0357405
		0.0286357
		0.0297844
		0.0243254
		0.0316239
		0.029065
		0.0302206
		0.0301392
		0.0275855
		0.0290685
		0.0242469
		0.0271166
		0.0286828
		0.034168
		0.0260728
		0.0286481
		0.0235709
		0.0228886
		0.0236415
		0.0257593
		0.0250745
		0.0196016
		0.0259395
		0.0188815
		0.0248794
		0.0252058
		0.0214574
		0.0159832
		0.0234755
		0.0206697
		0.0211087
		0.0195665
		0.0261541
		0.0231063
		0.0203641
		0.0205084
		0.0180033
		0.0269609
		0.0196125
		0.0228486
		0.0329127
		0.0202456
		0.0194368
		0.0291512
		0.0230405
		0.0262257
		0.0222282
		0.0237527
		0.0223473
		0.0193021
		0.0293358
		0.0204992
		0.0264685
		0.0266137
		0.0238307
		0.0160291
		0.0232265
		0.0207688
		0.0175458
		0.0206262
		0.00974948
		0.0181269
		0.0255503
		0.0254439
		0.0234126
		0.0210812
		0.0140182
		0.0198534
		0.0162938
		0.0234313
		0.018562
		0.0224804
		0.0157792
		0.0203297
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 416.877682 %	 max error: 143331.452217 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010378 max data: 0.037162

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.003567 
	   

>>>> Computational cost: 300.270725 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  5.6599e-04 (6.84e+04%); (bound active) 
	Vm1    : 1.0198e-02  +-  1.5463e-03 (    15.2%); 
	h1     : 2.2131e+00  +-  1.5470e+00 (    69.9%); 
	Km1    : 4.4093e-02  +-  9.2350e-03 (    20.9%); 
	d1     : 2.9462e-02  +-  5.2694e-03 (    17.9%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 4.235098e-02	 3.181799e-01	 -3.522080e-02	 4.717626e-01
	 4.235098e-02	 1.000000e+00	 2.891806e-03	 -2.651690e-01	 8.924235e-01
	 3.181799e-01	 2.891806e-03	 1.000000e+00	 -1.126096e-01	 1.922668e-01
	 -3.522080e-02	 -2.651690e-01	 -1.126096e-01	 1.000000e+00	 -3.221990e-01
	 4.717626e-01	 8.924235e-01	 1.922668e-01	 -3.221990e-01	 1.000000e+00
