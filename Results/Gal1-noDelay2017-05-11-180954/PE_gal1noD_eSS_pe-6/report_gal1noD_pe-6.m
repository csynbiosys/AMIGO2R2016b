   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-180954
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-180954\PE_gal1noD_eSS_pe-6 


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

		v_guess(1)=0.000060;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.001381;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.518162;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.064872;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.245949;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.426e-04  1.972e-04  2.268e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 2160.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 433: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.7130	  0.5641	  0.0000	  1.9963	  0.9482	  1.8633	  0.0000	  0.6758	  1.2678	  0.0000	  1.1106	  0.0000	  0.0000	  0.5272	  0.9050	  0.0000	  0.0015	  0.0000	  0.3797	  1.9928	  2.0000	  0.3164	  0.0000	  1.1616	  0.5801	  0.0000	  0.0000	  1.5616	  1.9547	  0.1142	  0.7716	  0.0001	  1.9158	  2.0000	  0.0445	  0.0000	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000	780.0000	840.0000	900.0000	960.0000	1020.0000	1080.0000	1140.0000	1200.0000	1260.0000	1320.0000	1380.0000	1440.0000	1500.0000	1560.0000	1620.0000	1680.0000	1740.0000	1800.0000	1860.0000	1920.0000	1980.0000	2040.0000	2100.0000	2160.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 433

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  1505.000  1510.000  1515.000  1520.000  1525.000  1530.000  1535.000  1540.000  1545.000  1550.000  1555.000  1560.000  1565.000  1570.000  1575.000  1580.000  1585.000  1590.000  1595.000  1600.000  1605.000  1610.000  1615.000  1620.000  1625.000  1630.000  1635.000  1640.000  1645.000  1650.000  1655.000  1660.000  1665.000  1670.000  1675.000  1680.000  1685.000  1690.000  1695.000  1700.000  1705.000  1710.000  1715.000  1720.000  1725.000  1730.000  1735.000  1740.000  1745.000  1750.000  1755.000  1760.000  1765.000  1770.000  1775.000  1780.000  1785.000  1790.000  1795.000  1800.000  1805.000  1810.000  1815.000  1820.000  1825.000  1830.000  1835.000  1840.000  1845.000  1850.000  1855.000  1860.000  1865.000  1870.000  1875.000  1880.000  1885.000  1890.000  1895.000  1900.000  1905.000  1910.000  1915.000  1920.000  1925.000  1930.000  1935.000  1940.000  1945.000  1950.000  1955.000  1960.000  1965.000  1970.000  1975.000  1980.000  1985.000  1990.000  1995.000  2000.000  2005.000  2010.000  2015.000  2020.000  2025.000  2030.000  2035.000  2040.000  2045.000  2050.000  2055.000  2060.000  2065.000  2070.000  2075.000  2080.000  2085.000  2090.000  2095.000  2100.000  2105.000  2110.000  2115.000  2120.000  2125.000  2130.000  2135.000  2140.000  2145.000  2150.000  2155.000  2160.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		-0.0015017
		-0.000744952
		0.00132345
		-0.00111841
		0.000982229
		0.000566982
		0.000420847
		0.00241049
		-0.000113507
		0.000640681
		0.00300167
		0.00537333
		0.00289327
		0.000510101
		0.00411227
		0.00569488
		0.00977608
		0.00750801
		0.00924069
		0.00659827
		0.00905211
		0.00716336
		0.00807735
		0.011079
		0.0100748
		0.0158129
		0.0160961
		0.0154744
		0.0165358
		0.0125171
		0.0143675
		0.0157625
		0.0173984
		0.0172813
		0.0219095
		0.0178422
		0.0164732
		0.0104087
		0.0185721
		0.0155032
		0.0174488
		0.0118193
		0.0154288
		0.0145924
		0.013183
		0.0125797
		0.0216678
		0.0157157
		0.0137171
		0.0173608
		0.019696
		0.0192057
		0.0200808
		0.0141498
		0.0162863
		0.0167835
		0.016514
		0.0204037
		0.0137569
		0.0157718
		0.0179025
		0.0166311
		0.0279902
		0.0237895
		0.0196621
		0.0217198
		0.0223433
		0.0218762
		0.0206105
		0.0221571
		0.0238634
		0.0242073
		0.0256007
		0.0290278
		0.0254877
		0.0229163
		0.0270088
		0.0283317
		0.025173
		0.0234341
		0.0304713
		0.0306395
		0.027896
		0.0229616
		0.0257924
		0.0240863
		0.0210144
		0.0270735
		0.0239412
		0.0227651
		0.0233565
		0.0210076
		0.0222667
		0.017717
		0.0245154
		0.0207534
		0.0234392
		0.0219491
		0.0160094
		0.0239414
		0.0264508
		0.0231279
		0.0187637
		0.0196785
		0.0195475
		0.0233305
		0.0236546
		0.0222056
		0.0235175
		0.0202397
		0.0217033
		0.0277674
		0.0246861
		0.0217971
		0.0250685
		0.0202205
		0.0241761
		0.0240783
		0.0233261
		0.0156781
		0.0201725
		0.0185755
		0.0253201
		0.0234979
		0.0215215
		0.0232178
		0.0212822
		0.0195421
		0.0206422
		0.0145687
		0.0245724
		0.0250593
		0.0192094
		0.0252688
		0.0178897
		0.0185215
		0.0174053
		0.0181814
		0.0180896
		0.0190429
		0.0205348
		0.0168861
		0.0201141
		0.0164925
		0.0169356
		0.0210091
		0.021707
		0.0208262
		0.0140535
		0.0188693
		0.016967
		0.0130763
		0.0140082
		0.0164316
		0.0141161
		0.0142176
		0.0154462
		0.00860903
		0.0159346
		0.00948985
		0.00999823
		0.00577992
		0.0129577
		0.00986823
		0.00850877
		0.00938513
		0.00874148
		0.0125202
		0.0137057
		0.0127612
		0.0112734
		0.0145771
		0.0123339
		0.00884847
		0.0144038
		0.0181169
		0.0131266
		0.0164062
		0.018359
		0.0229408
		0.014935
		0.0134772
		0.0206196
		0.0200483
		0.0200393
		0.0154123
		0.0213084
		0.0183734
		0.0246273
		0.0191442
		0.0192118
		0.0152909
		0.0223654
		0.0183174
		0.0210712
		0.0218052
		0.0174106
		0.0183591
		0.0172722
		0.0141133
		0.0156683
		0.0148445
		0.0193353
		0.0127259
		0.0140495
		0.0125982
		0.0128056
		0.0120553
		0.0144347
		0.00717799
		0.0109331
		0.00992399
		0.0164764
		0.00734058
		0.010391
		0.00893115
		0.00899253
		0.00923769
		0.0111985
		0.00542234
		0.00781698
		0.00913838
		0.0109928
		0.0047821
		0.00789393
		0.00679083
		0.00438849
		0.00742638
		0.0092139
		0.00735111
		0.0151962
		0.0145515
		0.00515922
		0.00869068
		0.0131254
		0.0112684
		0.0138059
		0.0116609
		0.0131715
		0.0166872
		0.0148467
		0.0136951
		0.0113813
		0.0134188
		0.0175244
		0.0166346
		0.0196576
		0.0228192
		0.0210681
		0.0191333
		0.0214438
		0.0214247
		0.023907
		0.0256816
		0.0231319
		0.0272369
		0.0244308
		0.0232618
		0.026587
		0.017093
		0.0231661
		0.0251731
		0.0235746
		0.0256599
		0.023877
		0.0300501
		0.0305594
		0.0245128
		0.0245585
		0.0257596
		0.0273881
		0.0259748
		0.0279895
		0.0299087
		0.027889
		0.023035
		0.0265283
		0.0216116
		0.0264136
		0.0231342
		0.0265362
		0.0246049
		0.0213848
		0.0221966
		0.0215529
		0.0200418
		0.0217901
		0.0203424
		0.0231235
		0.0213077
		0.0252802
		0.0194054
		0.02464
		0.0211327
		0.0200958
		0.0231499
		0.0196243
		0.0196126
		0.0241947
		0.0221924
		0.0233747
		0.0251188
		0.0191273
		0.0173727
		0.0247196
		0.0272282
		0.024561
		0.0289178
		0.0230096
		0.0270016
		0.020706
		0.0213497
		0.0269544
		0.0272383
		0.0219116
		0.0189627
		0.0259617
		0.0133172
		0.0178353
		0.0212603
		0.0217648
		0.0149345
		0.0190673
		0.016938
		0.0160476
		0.0155203
		0.0141013
		0.0200482
		0.0150998
		0.0079667
		0.0207897
		0.0135787
		0.0158108
		0.0152441
		0.0129941
		0.0134402
		0.0137698
		0.0158961
		0.0132845
		0.0189419
		0.015824
		0.0157212
		0.0199525
		0.0182524
		0.0129523
		0.0127409
		0.0176831
		0.022602
		0.0188113
		0.0189634
		0.0157458
		0.0159288
		0.0172566
		0.0198662
		0.0214911
		0.022768
		0.0230681
		0.0207934
		0.022001
		0.020428
		0.0216594
		0.0233248
		0.0221472
		0.0250249
		0.0272126
		0.0246267
		0.0246962
		0.0230492
		0.0262666
		0.0274932
		0.0238966
		0.0281156
		0.0268201
		0.0269509
		0.0262667
		0.0231757
		0.0267559
		0.026828
		0.0258824
		0.0311734
		0.0283544
		0.0280506
		0.0229439
		0.0257411
		0.0252327
		0.022445
		0.0229589
		0.0239826
		0.0236802
		0.0244673
		0.024043
		0.0188808
		0.0211351
		0.0251123
		0.0199046
		0.0213372
		0.0203543
		0.0252908
		0.027701
		0.016985
		0.0202436
		0.0235879
		0.0169514
		0.0212623
		0.020223
		0.020656
		0.0242317
		0.0217962
		0.0212131
		0.0218103
		0.0240255
		0.0239072
		0.0226185
		0.0273319
		0.0276838
		0.0218156
		0.02145
		0.0286499
		0.031361
		0.0250988
		0.0231747
		0.0242092
		0.0208094
		0.0229356
		0.0231351
		0.0308065
		0.0258511
		0.0199143
		0.0233914
		0.0240161
		0.0243162
		0.0201282
		0.0152157
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 18.831666 %	 max error: 1287.569290 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007486 max data: 0.031361

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.002980 
	   

>>>> Computational cost: 300.239525 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  3.7910e-04 (     458%); (bound active) 
	Vm1    : 9.7031e-03  +-  1.1889e-03 (    12.3%); 
	h1     : 2.5576e+00  +-  2.1131e+00 (    82.6%); 
	Km1    : 4.3582e-02  +-  1.4790e-02 (    33.9%); 
	d1     : 2.8772e-02  +-  3.9773e-03 (    13.8%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 1.574934e-02	 1.862280e-01	 -1.296579e-01	 4.625422e-01
	 1.574934e-02	 1.000000e+00	 -1.228900e-01	 -9.057970e-02	 8.853331e-01
	 1.862280e-01	 -1.228900e-01	 1.000000e+00	 4.002656e-01	 3.898304e-02
	 -1.296579e-01	 -9.057970e-02	 4.002656e-01	 1.000000e+00	 -1.512433e-01
	 4.625422e-01	 8.853331e-01	 3.898304e-02	 -1.512433e-01	 1.000000e+00
