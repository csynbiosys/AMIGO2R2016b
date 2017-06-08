   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-215008
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-215008\PE_gal1noD_eSS_pe-6 


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
		v_guess(2)=0.003223;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.051720;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.033180;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.150357;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.930e-05  1.569e-05  1.804e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 2160.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 433: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  1.3754	  0.6344	  0.9191	  0.0153	  1.8340	  1.3631	  0.0085	  1.3135	  1.4080	  2.0000	  0.5360	  0.0095	  0.8116	  0.0112	  1.9773	  2.0000	  0.0109	  0.0120	  2.0000	  1.2539	  2.0000	  0.0146	  1.3714	  0.6145	  0.0000	  2.0000	  0.2257	  0.1519	  0.1830	  0.1401	  0.0000	  0.1478	  0.1676	  0.1475	  0.1468	
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
		0.00135929
		0.000413479
		0.000885238
		0.00440042
		0.00113418
		0.000552371
		0.000247436
		0.00333985
		-0.00152516
		-0.00160905
		0.00603076
		-0.000954978
		0.00166354
		-0.00258058
		0.000151035
		-0.000909152
		2.28517e-05
		-0.00650041
		0.000296626
		0.0041609
		0.00323976
		0.00111718
		0.00529804
		0.00431586
		0.0054011
		0.00410717
		-0.00196545
		0.00705711
		0.00802789
		0.0117499
		0.00773255
		0.00626306
		0.00610444
		0.0103155
		0.00585082
		0.011023
		0.0109285
		0.00841058
		0.011809
		0.0173223
		0.0158013
		0.0211082
		0.0165237
		0.0198565
		0.0240217
		0.0150388
		0.0225132
		0.0208303
		0.0175024
		0.0155507
		0.0206759
		0.0237799
		0.0243874
		0.0218083
		0.0254221
		0.0231325
		0.0205931
		0.0216724
		0.022441
		0.0224048
		0.0251852
		0.0217018
		0.0201653
		0.0219882
		0.0198657
		0.0230655
		0.0218763
		0.0264578
		0.0239218
		0.0167637
		0.0190033
		0.0230444
		0.0250426
		0.0217239
		0.0226394
		0.0224263
		0.0229188
		0.0157229
		0.0224717
		0.0282512
		0.0225301
		0.0276941
		0.0215686
		0.0253199
		0.026682
		0.0271531
		0.0238196
		0.0197099
		0.028041
		0.0220396
		0.0257806
		0.0186765
		0.0229782
		0.0257762
		0.0278037
		0.0244851
		0.0210228
		0.0247564
		0.0204497
		0.0140839
		0.0241894
		0.0248418
		0.0210357
		0.0227525
		0.0231996
		0.0177811
		0.0245312
		0.0210316
		0.0160969
		0.0205673
		0.0206063
		0.0224998
		0.0259263
		0.0185679
		0.0239
		0.0206825
		0.0253061
		0.0189033
		0.0287832
		0.0194182
		0.0248415
		0.0258225
		0.023268
		0.0236418
		0.023183
		0.022507
		0.0251421
		0.0217861
		0.0242888
		0.0294318
		0.0248594
		0.031751
		0.0257672
		0.0302862
		0.0286441
		0.0270059
		0.0265348
		0.0278644
		0.0269373
		0.0247931
		0.0258616
		0.0288903
		0.0332487
		0.0287878
		0.0331584
		0.0242833
		0.0275432
		0.0349967
		0.0271131
		0.0322798
		0.0266431
		0.0298754
		0.0289147
		0.0315574
		0.0252574
		0.0284749
		0.0248386
		0.0301314
		0.0233398
		0.0222369
		0.0248707
		0.0250376
		0.0249282
		0.0203178
		0.0240478
		0.0260026
		0.0208625
		0.0289525
		0.0325282
		0.021418
		0.0219732
		0.0190739
		0.0240921
		0.0250591
		0.0239481
		0.0245647
		0.021684
		0.0232818
		0.0216978
		0.024408
		0.0154712
		0.0209359
		0.0191783
		0.0219404
		0.0155487
		0.0207271
		0.023382
		0.0203867
		0.0165406
		0.0178903
		0.0195985
		0.0192405
		0.0187322
		0.0234409
		0.0174581
		0.0222924
		0.0194534
		0.0170152
		0.0220266
		0.0249564
		0.0183227
		0.0160833
		0.0199456
		0.0213269
		0.0231146
		0.0233791
		0.0213896
		0.0185237
		0.0246814
		0.0195764
		0.0200243
		0.0198662
		0.0266516
		0.0268487
		0.0268939
		0.0228967
		0.0254709
		0.0207403
		0.0233006
		0.0209703
		0.0178209
		0.0214748
		0.0197404
		0.0184613
		0.0185921
		0.0182201
		0.0183156
		0.0152132
		0.0157223
		0.0165808
		0.0173019
		0.0211221
		0.0180843
		0.0131784
		0.0108612
		0.0154914
		0.0138569
		0.0142074
		0.0110663
		0.0106971
		0.0182581
		0.0163919
		0.0168502
		0.0115467
		0.0185712
		0.0170394
		0.0178309
		0.0231909
		0.0171364
		0.0139611
		0.0185368
		0.0146235
		0.0193528
		0.0215926
		0.0182085
		0.0199343
		0.022569
		0.0223179
		0.0233342
		0.0231595
		0.0208048
		0.028517
		0.0194246
		0.0247406
		0.0232371
		0.0245559
		0.0269444
		0.0249939
		0.0263642
		0.0301492
		0.0228831
		0.0232564
		0.0290331
		0.0289549
		0.0210533
		0.0260795
		0.0216013
		0.022134
		0.0235369
		0.0223758
		0.0245213
		0.0210855
		0.0263752
		0.0232091
		0.0230487
		0.02133
		0.0203529
		0.024105
		0.0181268
		0.0226217
		0.0194562
		0.0205094
		0.0163925
		0.0239415
		0.0177714
		0.0243077
		0.01912
		0.0204275
		0.0273722
		0.0181831
		0.0226836
		0.0258272
		0.0267168
		0.0232068
		0.0256932
		0.0241671
		0.0279502
		0.0264279
		0.0247589
		0.0280425
		0.0244332
		0.0232114
		0.0241963
		0.0247798
		0.021212
		0.0218993
		0.0190199
		0.0243691
		0.0199784
		0.0266165
		0.0203318
		0.0197464
		0.0181325
		0.0149719
		0.0172616
		0.0226498
		0.0167161
		0.0186707
		0.0194004
		0.024067
		0.0276007
		0.0310209
		0.0198415
		0.025168
		0.017913
		0.0188235
		0.0222832
		0.0181688
		0.0278534
		0.0253255
		0.0235631
		0.0245294
		0.0273084
		0.0223896
		0.0273447
		0.0256658
		0.0244123
		0.0205891
		0.0260641
		0.0292262
		0.0266958
		0.0275234
		0.0245352
		0.0244489
		0.0306555
		0.0278567
		0.0200939
		0.0287094
		0.0292527
		0.0302272
		0.0295729
		0.0373131
		0.0281454
		0.0307699
		0.0297101
		0.0276074
		0.0290572
		0.0286359
		0.0263244
		0.0329586
		0.0294696
		0.0256286
		0.0289976
		0.0286484
		0.0261586
		0.0293296
		0.0321112
		0.0291673
		0.0250978
		0.0203276
		0.0265965
		0.031185
		0.0238746
		0.0270032
		0.0249368
		0.0264163
		0.0264703
		0.021722
		0.0223355
		0.0256255
		0.0226284
		0.0213262
		0.0200978
		0.0201473
		0.0217099
		0.0228363
		0.0210416
		0.0248205
		0.0206787
		0.0212542
		0.0240773
		0.0246667
		0.0208982
		0.0251292
		0.0222578
		0.0181044
		0.0237909
		0.0236638
		0.0272847
		0.0250364
		0.0237391
		0.0221534
		0.0237672
		0.017026
		0.0239616
		0.0206824
		0.0258212
		0.0206242
		0.022107
		0.0172085
		0.0246116
		0.0298676
		0.0276856
		0.0235932
		0.0235737
		0.029645
		0.0276805
		0.0263615
		0.0232224
		0.0303848
		0.0276723
		0.0281986
		0.0261539
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 18.563325 %	 max error: 1127.114884 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009642 max data: 0.037313

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.003542 
	   

>>>> Computational cost: 300.130324 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  8.6423e-04 (1.04e+03%); (bound active) 
	Vm1    : 1.0059e-02  +-  1.9815e-03 (    19.7%); 
	h1     : 1.9446e+00  +-  4.1479e-01 (    21.3%); 
	Km1    : 4.4394e-02  +-  2.0243e-02 (    45.6%); 
	d1     : 2.9083e-02  +-  5.0717e-03 (    17.4%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -5.590683e-01	 6.966447e-01	 5.842752e-01	 -5.715033e-02
	 -5.590683e-01	 1.000000e+00	 -5.476260e-01	 -5.478986e-01	 8.491370e-01
	 6.966447e-01	 -5.476260e-01	 1.000000e+00	 7.502711e-01	 -2.798872e-01
	 5.842752e-01	 -5.478986e-01	 7.502711e-01	 1.000000e+00	 -4.057050e-01
	 -5.715033e-02	 8.491370e-01	 -2.798872e-01	 -4.057050e-01	 1.000000e+00
