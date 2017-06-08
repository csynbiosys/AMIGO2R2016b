   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-173629
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-173629\PE_gal1noD_eSS_pe-5 


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

		v_guess(1)=0.000001;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.019562;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.490649;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.097176;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.149732;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[7.793e-06  6.336e-06  7.286e-07  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1800.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 361: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.8913	  0.0593	  1.8551	  0.0402	  0.0494	  1.8308	  1.3547	  0.0558	  0.6554	  1.3914	  1.8968	  0.0598	  2.0000	  0.0304	  0.0214	  1.6655	  1.6778	  1.8834	  1.9977	  0.0397	  1.9249	  0.3640	  0.2298	  0.1044	  0.0000	  0.7210	  0.1252	  0.3668	  0.0000	  0.3195	
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
		0.00143224
		0.00124203
		-0.00191838
		-0.00254107
		-0.000367076
		0.00136008
		-0.00841746
		0.00293343
		0.00471369
		-0.00271544
		0.00509947
		-0.000314081
		0.00607559
		0.00877119
		0.00389795
		0.00522124
		0.0056305
		0.0102035
		0.00789344
		0.00190341
		0.00369401
		0.00861722
		0.011241
		0.0145223
		0.0122226
		0.0159615
		0.00866227
		0.0161996
		0.0161512
		0.0163894
		0.0199636
		0.0121785
		0.0138133
		0.016074
		0.021545
		0.0187846
		0.0185146
		0.0174029
		0.0213326
		0.0191028
		0.0191199
		0.0213739
		0.0203013
		0.0209034
		0.0216595
		0.0203211
		0.020728
		0.0196443
		0.0222166
		0.0231536
		0.022936
		0.0213009
		0.02071
		0.0215836
		0.0196805
		0.018202
		0.0225997
		0.0143098
		0.0196888
		0.017008
		0.0190796
		0.0211716
		0.021398
		0.0197476
		0.0164917
		0.0174118
		0.0210713
		0.0155493
		0.0248515
		0.0224382
		0.0220566
		0.0233403
		0.0225
		0.0209009
		0.0250737
		0.0200686
		0.0240196
		0.0279055
		0.0246205
		0.029058
		0.0237351
		0.0235001
		0.0279522
		0.0278423
		0.0264509
		0.0232722
		0.0285639
		0.028578
		0.0248117
		0.0240754
		0.0228882
		0.0259676
		0.0282059
		0.0194805
		0.0284781
		0.029633
		0.0264435
		0.025162
		0.0251401
		0.0292759
		0.0330068
		0.0275573
		0.0271856
		0.0233871
		0.0275057
		0.0290573
		0.020518
		0.0262804
		0.0262377
		0.0297935
		0.0299536
		0.0222078
		0.022043
		0.0272029
		0.0263782
		0.0250775
		0.0297266
		0.0275382
		0.0300795
		0.0278309
		0.0287592
		0.0246863
		0.0296831
		0.0270886
		0.0228711
		0.0273877
		0.0257329
		0.0279327
		0.0267723
		0.032863
		0.0294326
		0.0276184
		0.0244022
		0.0302792
		0.0274361
		0.030942
		0.0313206
		0.0300333
		0.0290531
		0.0278861
		0.0306661
		0.0282491
		0.0273468
		0.0252415
		0.0302439
		0.023717
		0.034091
		0.0273427
		0.0292436
		0.0329647
		0.0264349
		0.029285
		0.0287188
		0.030357
		0.0298048
		0.0306231
		0.0268353
		0.0268238
		0.0327257
		0.03006
		0.0322348
		0.0304021
		0.0242094
		0.0281607
		0.0384555
		0.0323851
		0.0258274
		0.0249735
		0.0293963
		0.0276121
		0.0307114
		0.027551
		0.0241439
		0.0214466
		0.0198751
		0.0212729
		0.0233093
		0.0202792
		0.0207262
		0.021099
		0.019328
		0.0227326
		0.0232776
		0.0194857
		0.0207033
		0.0208151
		0.0184095
		0.0167392
		0.0187818
		0.0250905
		0.023241
		0.0228012
		0.0257193
		0.0222789
		0.0175597
		0.0223078
		0.0171788
		0.020128
		0.0218364
		0.0288071
		0.0182922
		0.0225222
		0.0216648
		0.0245618
		0.0231801
		0.0283395
		0.0266753
		0.0279707
		0.0216808
		0.0225696
		0.0232405
		0.022375
		0.0299545
		0.0209807
		0.0232565
		0.0247489
		0.0220705
		0.0262817
		0.0239008
		0.0262199
		0.0269926
		0.0267576
		0.0235317
		0.0271994
		0.0288975
		0.0294181
		0.0293576
		0.0279229
		0.0273042
		0.0252824
		0.0311211
		0.0314832
		0.0349485
		0.0302039
		0.0270261
		0.0263555
		0.0272397
		0.0281959
		0.0318242
		0.0314242
		0.0257901
		0.0278069
		0.0307304
		0.0318571
		0.0268405
		0.027413
		0.0279946
		0.0295058
		0.0247562
		0.0254424
		0.0239623
		0.0242322
		0.0313374
		0.0300736
		0.024443
		0.0254728
		0.0281761
		0.0271483
		0.027206
		0.028275
		0.0256304
		0.0251425
		0.0261375
		0.0291834
		0.026842
		0.0245753
		0.0273351
		0.0278198
		0.0271333
		0.0273291
		0.0260294
		0.0330229
		0.027451
		0.0270684
		0.032517
		0.0224084
		0.0260479
		0.0322946
		0.0296092
		0.0299678
		0.0298382
		0.0251522
		0.0322245
		0.0324331
		0.0302969
		0.0310398
		0.0346206
		0.0273249
		0.0261025
		0.0322414
		0.0264309
		0.0319824
		0.0279999
		0.0199236
		0.0287902
		0.0259459
		0.0286917
		0.0272085
		0.0267455
		0.0215137
		0.0305307
		0.0199822
		0.031283
		0.0287862
		0.0214936
		0.0242454
		0.0214012
		0.0225611
		0.0253914
		0.0255563
		0.0276638
		0.0211988
		0.0204913
		0.0220266
		0.0250354
		0.0239435
		0.0221805
		0.0211257
		0.0238213
		0.0186154
		0.0203185
		0.0204283
		0.0243425
		0.022837
		0.0210842
		0.0258162
		0.0214254
		0.0214219
		0.0248015
		0.0235811
		0.0216384
		0.0267935
		0.0235905
		0.0266002
		0.0267523
		0.0289427
		0.0277218
		0.0236207
		0.0331514
		0.0238978
		0.023204
		0.0294171
		0.0257326
		0.0259585
		0.0275639
		0.0295878
		0.0303048
		0.0231965
		0.0214205
		0.0234376
		0.0229426
		0.0262136
		0.0219889
		0.0256651
		0.0227954
		0.0288316
		0.0167765
		0.0193272
		0.0194935
		0.0207
		0.0191557
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 16.497283 %	 max error: 1015.573434 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010381 max data: 0.038455

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.003037 
	   

>>>> Computational cost: 300.130324 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  1.1793e-03 (1.42e+03%); (bound active) 
	Vm1    : 1.0142e-02  +-  1.9751e-03 (    19.5%); 
	h1     : 1.8888e+00  +-  4.4600e-01 (    23.6%); 
	Km1    : 3.8609e-02  +-  6.4535e-03 (    16.7%); 
	d1     : 2.9859e-02  +-  6.2278e-03 (    20.9%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -2.282985e-01	 1.482581e-04	 5.282399e-01	 3.953320e-01
	 -2.282985e-01	 1.000000e+00	 1.980905e-03	 -1.133186e-01	 7.921108e-01
	 1.482581e-04	 1.980905e-03	 1.000000e+00	 -2.205254e-01	 8.245137e-02
	 5.282399e-01	 -1.133186e-01	 -2.205254e-01	 1.000000e+00	 1.067043e-01
	 3.953320e-01	 7.921108e-01	 8.245137e-02	 1.067043e-01	 1.000000e+00
