   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-145350
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-145350\PE_gal1noD_eSS_pe-5 


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

		v_guess(1)=0.000003;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.005536;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.271224;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.071305;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.004361;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[5.754e-04  4.678e-04  5.380e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1800.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 361: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  2.0000	  1.1998	  0.0187	  0.0208	  0.0218	  1.8863	  1.4847	  1.4331	  1.0394	  0.1633	  0.7274	  0.0115	  0.0584	  1.2774	  0.5435	  0.2894	  0.2097	  1.9650	  0.0421	  0.0627	  0.1662	  0.5077	  0.0000	  0.6811	  2.0000	  0.1252	  1.9947	  0.0187	  1.9363	  1.9624	
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
		0.00232341
		0.00343073
		0.00292369
		0.00557817
		0.0026608
		0.00068164
		0.00181574
		0.00158506
		0.000897172
		0.00183601
		-0.000677786
		0.00374815
		0.00531454
		0.000761013
		0.00799462
		0.00895214
		-0.00157784
		0.00773563
		0.00927966
		0.00658828
		0.00901969
		0.0122985
		0.0135453
		0.00922809
		0.0128713
		0.0147447
		0.0161067
		0.0199232
		0.0230772
		0.0121784
		0.0079793
		0.0129941
		0.0222819
		0.0158119
		0.0228614
		0.014795
		0.0158734
		0.018407
		0.0197763
		0.0118583
		0.0157151
		0.0171312
		0.0140447
		0.0119842
		0.0115868
		0.0144238
		0.0146179
		0.018118
		0.0175943
		0.0161673
		0.013823
		0.0138538
		0.0173066
		0.019708
		0.0100752
		0.0129759
		0.0132125
		0.0161462
		0.0133111
		0.00919904
		0.012794
		0.0075846
		0.0126943
		0.00903656
		0.0106098
		0.0163935
		0.0105999
		0.011323
		0.00762655
		0.015656
		0.0114271
		0.018537
		0.0141218
		0.0109203
		0.0201139
		0.0115714
		0.0199138
		0.0145001
		0.014963
		0.0179814
		0.0192499
		0.0194923
		0.0109985
		0.0206577
		0.0132496
		0.0218985
		0.0241443
		0.0232065
		0.0202113
		0.0263764
		0.0217566
		0.023712
		0.0195082
		0.0237411
		0.0231842
		0.0252104
		0.0232009
		0.021359
		0.0217412
		0.0264524
		0.0267732
		0.0302289
		0.021397
		0.0262707
		0.0236728
		0.0275584
		0.0176405
		0.0285364
		0.0287726
		0.0262055
		0.0270444
		0.0325221
		0.0350054
		0.0308863
		0.0315544
		0.0264895
		0.0288678
		0.0287301
		0.0301147
		0.0278892
		0.0320928
		0.030076
		0.0301897
		0.0313264
		0.0345629
		0.0341825
		0.0235439
		0.0294876
		0.0281156
		0.0335246
		0.0363429
		0.0216756
		0.0323979
		0.0276072
		0.0267578
		0.026764
		0.0328256
		0.0289666
		0.0282882
		0.03261
		0.0298255
		0.0388422
		0.0322355
		0.0310339
		0.0303499
		0.0295931
		0.0291072
		0.0259473
		0.026785
		0.0230079
		0.0235301
		0.0218143
		0.0203304
		0.0251185
		0.0196307
		0.0187636
		0.0227473
		0.0189692
		0.0256617
		0.0211547
		0.022232
		0.0245556
		0.021633
		0.0269872
		0.020023
		0.0172092
		0.0223605
		0.0189679
		0.0191621
		0.0216131
		0.0207878
		0.0206776
		0.0239317
		0.0274972
		0.0204755
		0.0261471
		0.01818
		0.0250879
		0.0248384
		0.0275478
		0.0290731
		0.0235702
		0.0208206
		0.023914
		0.021159
		0.0293763
		0.024095
		0.0266728
		0.0279376
		0.0229622
		0.0228511
		0.0224966
		0.0299095
		0.0246777
		0.0202036
		0.0246741
		0.0260536
		0.0224055
		0.0255493
		0.0256249
		0.0296557
		0.0248612
		0.0304738
		0.0281269
		0.0305118
		0.0306906
		0.0242621
		0.0280824
		0.0319427
		0.0383585
		0.02128
		0.0300061
		0.0332782
		0.0326921
		0.027952
		0.0338381
		0.0267162
		0.0304916
		0.0282176
		0.030994
		0.0323923
		0.026841
		0.0274484
		0.0293478
		0.027855
		0.0288268
		0.0274266
		0.0326651
		0.0318996
		0.0310149
		0.0265172
		0.0295153
		0.0301959
		0.0265718
		0.0267866
		0.0299167
		0.025918
		0.0228271
		0.0287154
		0.0266533
		0.0272012
		0.0286185
		0.0246068
		0.0257852
		0.0253366
		0.0267902
		0.0276414
		0.0258334
		0.0245508
		0.0229669
		0.0264283
		0.0242742
		0.0289581
		0.0255329
		0.0216051
		0.0227158
		0.0244776
		0.0346085
		0.0258657
		0.0263781
		0.022943
		0.0224213
		0.0259362
		0.0261161
		0.0291442
		0.0256966
		0.0198431
		0.0247477
		0.032152
		0.0234186
		0.0312535
		0.0282798
		0.0232071
		0.0243671
		0.027844
		0.0244744
		0.0287473
		0.0272927
		0.0260145
		0.0262718
		0.0254132
		0.0210179
		0.0249302
		0.0248985
		0.0244062
		0.0203928
		0.0234487
		0.0209811
		0.0218599
		0.0195568
		0.0209585
		0.0242154
		0.0267205
		0.0266523
		0.0199735
		0.0247935
		0.0201181
		0.0215656
		0.0211172
		0.0236269
		0.0279055
		0.0213411
		0.0267098
		0.0236894
		0.0233463
		0.0259798
		0.0201988
		0.0215989
		0.0234095
		0.0290036
		0.0258231
		0.0261384
		0.0246941
		0.0288005
		0.0275117
		0.031013
		0.0256274
		0.0263676
		0.0291034
		0.0260953
		0.0291314
		0.0255953
		0.0300888
		0.0318392
		0.0269324
		0.0310239
		0.0287403
		0.0310702
		0.0285854
		0.033293
		0.0279838
		0.023205
		0.0277837
		0.0263756
		0.0274795
		0.0260059
		0.0252394
		0.0213898
		0.0231117
		0.0247609
		0.0301323
		0.0284222
		0.015844
		0.0259611
		0.027156
		0.0221533
		0.0242209
		0.0303552
		0.0274963
		0.0245747
		0.0258701
		0.0245249
		0.0282714
		0.0233026
		0.0310011
		0.0240157
		0.0300328
		0.0250065
		0.0313315
		0.0211768
		0.0218398
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 17.404972 %	 max error: 480.614000 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009571 max data: 0.038842

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.003664 
	   

>>>> Computational cost: 300.099124 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  1.3498e-03 (1.63e+03%); (bound active) 
	Vm1    : 9.2228e-03  +-  1.9521e-03 (    21.2%); 
	h1     : 1.9017e+00  +-  5.1411e-01 (      27%); 
	Km1    : 4.0132e-02  +-  9.2839e-03 (    23.1%); 
	d1     : 2.6926e-02  +-  5.7623e-03 (    21.4%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -4.342534e-01	 7.205445e-01	 6.975708e-01	 3.503951e-01
	 -4.342534e-01	 1.000000e+00	 -1.655658e-01	 -4.883946e-01	 6.831933e-01
	 7.205445e-01	 -1.655658e-01	 1.000000e+00	 2.905662e-01	 4.464299e-01
	 6.975708e-01	 -4.883946e-01	 2.905662e-01	 1.000000e+00	 -2.326840e-02
	 3.503951e-01	 6.831933e-01	 4.464299e-01	 -2.326840e-02	 1.000000e+00
