   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-012844
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-012844\PE_gal1noD_eSS_pe-7 


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
		v_guess(2)=0.008269;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.257112;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.044651;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.003071;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.427e-03  1.160e-03  1.334e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 2520.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 505: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.9987	  1.9941	  0.3801	  0.2509	  1.0247	  1.4240	  0.1720	  0.0006	  0.0008	  1.9806	  0.0751	  0.1973	  0.0010	  0.6985	  0.1012	  0.1196	  0.2362	  0.1365	  0.2793	  0.1471	  0.0016	  0.1822	  0.4040	  0.0043	  0.0009	  0.0147	  0.8575	  1.1812	  0.0215	  0.0191	  0.0175	  0.2124	  0.8207	  0.7593	  0.5535	  1.9576	  0.0218	  0.0240	  1.8632	  0.0164	  1.7591	  0.0216	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000	780.0000	840.0000	900.0000	960.0000	1020.0000	1080.0000	1140.0000	1200.0000	1260.0000	1320.0000	1380.0000	1440.0000	1500.0000	1560.0000	1620.0000	1680.0000	1740.0000	1800.0000	1860.0000	1920.0000	1980.0000	2040.0000	2100.0000	2160.0000	2220.0000	2280.0000	2340.0000	2400.0000	2460.0000	2520.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 505

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  1505.000  1510.000  1515.000  1520.000  1525.000  1530.000  1535.000  1540.000  1545.000  1550.000  1555.000  1560.000  1565.000  1570.000  1575.000  1580.000  1585.000  1590.000  1595.000  1600.000  1605.000  1610.000  1615.000  1620.000  1625.000  1630.000  1635.000  1640.000  1645.000  1650.000  1655.000  1660.000  1665.000  1670.000  1675.000  1680.000  1685.000  1690.000  1695.000  1700.000  1705.000  1710.000  1715.000  1720.000  1725.000  1730.000  1735.000  1740.000  1745.000  1750.000  1755.000  1760.000  1765.000  1770.000  1775.000  1780.000  1785.000  1790.000  1795.000  1800.000  1805.000  1810.000  1815.000  1820.000  1825.000  1830.000  1835.000  1840.000  1845.000  1850.000  1855.000  1860.000  1865.000  1870.000  1875.000  1880.000  1885.000  1890.000  1895.000  1900.000  1905.000  1910.000  1915.000  1920.000  1925.000  1930.000  1935.000  1940.000  1945.000  1950.000  1955.000  1960.000  1965.000  1970.000  1975.000  1980.000  1985.000  1990.000  1995.000  2000.000  2005.000  2010.000  2015.000  2020.000  2025.000  2030.000  2035.000  2040.000  2045.000  2050.000  2055.000  2060.000  2065.000  2070.000  2075.000  2080.000  2085.000  2090.000  2095.000  2100.000  2105.000  2110.000  2115.000  2120.000  2125.000  2130.000  2135.000  2140.000  2145.000  2150.000  2155.000  2160.000  2165.000  2170.000  2175.000  2180.000  2185.000  2190.000  2195.000  2200.000  2205.000  2210.000  2215.000  2220.000  2225.000  2230.000  2235.000  2240.000  2245.000  2250.000  2255.000  2260.000  2265.000  2270.000  2275.000  2280.000  2285.000  2290.000  2295.000  2300.000  2305.000  2310.000  2315.000  2320.000  2325.000  2330.000  2335.000  2340.000  2345.000  2350.000  2355.000  2360.000  2365.000  2370.000  2375.000  2380.000  2385.000  2390.000  2395.000  2400.000  2405.000  2410.000  2415.000  2420.000  2425.000  2430.000  2435.000  2440.000  2445.000  2450.000  2455.000  2460.000  2465.000  2470.000  2475.000  2480.000  2485.000  2490.000  2495.000  2500.000  2505.000  2510.000  2515.000  2520.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		0.00375551
		0.00391078
		0.000792072
		0.00632376
		0.00320805
		0.00300758
		0.00146637
		-0.000362143
		0.00123411
		0.00234486
		0.00445058
		-0.00300547
		0.00873016
		0.00347779
		0.00618747
		0.00483251
		0.00137946
		0.00405074
		0.00743374
		0.00360201
		0.0121208
		0.0121155
		0.00692264
		0.0127501
		0.0110449
		0.00850388
		0.0137128
		0.0145535
		0.0174416
		0.0159644
		0.0181492
		0.0130078
		0.02076
		0.0135866
		0.0228603
		0.0199424
		0.0190288
		0.0142593
		0.0237785
		0.0231838
		0.0207209
		0.0225291
		0.0247194
		0.0201211
		0.0272729
		0.0248346
		0.0236609
		0.0312526
		0.0193066
		0.0292228
		0.0330799
		0.0269861
		0.0235354
		0.0266762
		0.0267043
		0.0257065
		0.031698
		0.027851
		0.0264214
		0.0297749
		0.0266105
		0.031847
		0.0221951
		0.0338234
		0.0291049
		0.0287113
		0.0281569
		0.0242105
		0.0326324
		0.0240838
		0.0330627
		0.0326146
		0.0342646
		0.0341918
		0.0263422
		0.0270444
		0.0358884
		0.0320423
		0.035208
		0.0269204
		0.0369739
		0.0356222
		0.0293038
		0.034308
		0.0359281
		0.0286523
		0.0307841
		0.0307245
		0.0329924
		0.0387601
		0.0309407
		0.0338041
		0.0304205
		0.0223118
		0.0280292
		0.0272511
		0.0236644
		0.0244051
		0.0260401
		0.0261628
		0.0232731
		0.0259706
		0.0240258
		0.0245511
		0.0231323
		0.0195397
		0.0227096
		0.0223942
		0.022289
		0.0137434
		0.0145916
		0.0187479
		0.0137298
		0.0118345
		0.011144
		0.0158922
		0.0150315
		0.0163488
		0.00995697
		0.0100408
		0.016697
		0.0095888
		0.0159361
		0.0123044
		0.0206529
		0.0161936
		0.0155736
		0.0125181
		0.017594
		0.0195637
		0.0166082
		0.0190808
		0.0209691
		0.0188655
		0.0174171
		0.0187852
		0.0168742
		0.0173793
		0.0220963
		0.0191591
		0.0236788
		0.0207286
		0.0188176
		0.0244959
		0.0187496
		0.0227334
		0.0222228
		0.0293269
		0.0211847
		0.0254647
		0.018268
		0.0285305
		0.0224623
		0.0238891
		0.0247532
		0.0220084
		0.0163156
		0.0212432
		0.0195144
		0.0222024
		0.0212233
		0.016678
		0.0196558
		0.0190267
		0.0241398
		0.0225445
		0.021192
		0.0179411
		0.0159302
		0.0217072
		0.0240531
		0.0191012
		0.023248
		0.0197616
		0.0168405
		0.0231151
		0.0187796
		0.0183007
		0.0173798
		0.027454
		0.0210982
		0.025196
		0.0203202
		0.0239556
		0.0256281
		0.026043
		0.0253354
		0.0249344
		0.02079
		0.0192422
		0.0223997
		0.0244514
		0.0266124
		0.0237422
		0.0160144
		0.0249368
		0.0310303
		0.0182375
		0.0239941
		0.0260443
		0.0246438
		0.0207341
		0.0277656
		0.0249427
		0.0254547
		0.0262448
		0.0293382
		0.0278115
		0.0274193
		0.0291656
		0.0225233
		0.0278629
		0.0276738
		0.0276704
		0.0308782
		0.0167598
		0.0309417
		0.0291466
		0.030431
		0.0299184
		0.0287043
		0.0248758
		0.032917
		0.0267854
		0.0337167
		0.0276963
		0.0265647
		0.0277155
		0.0325763
		0.0305292
		0.027083
		0.0278952
		0.0358246
		0.03476
		0.0330445
		0.0334051
		0.02904
		0.0288463
		0.0344564
		0.0332014
		0.0375514
		0.0313603
		0.0276262
		0.0291329
		0.0335897
		0.0286304
		0.0298575
		0.0291218
		0.0279198
		0.0273913
		0.0267482
		0.0284123
		0.030932
		0.0291282
		0.023552
		0.0243835
		0.0245412
		0.0207056
		0.0234841
		0.0224265
		0.0209889
		0.0249231
		0.0225478
		0.0228491
		0.0267844
		0.0237002
		0.0140088
		0.0230242
		0.0274654
		0.0165997
		0.0177253
		0.0174962
		0.028249
		0.0226385
		0.0238474
		0.0206216
		0.0196063
		0.021565
		0.0217032
		0.0261784
		0.0182145
		0.0259701
		0.0268948
		0.0237584
		0.0266281
		0.0237479
		0.0212341
		0.0247717
		0.0220318
		0.0215233
		0.0181807
		0.0149616
		0.0198271
		0.0211024
		0.0159491
		0.0212809
		0.0184864
		0.0207963
		0.0177379
		0.0152953
		0.0179456
		0.0151389
		0.0163617
		0.0146307
		0.0151458
		0.010544
		0.00923552
		0.0111185
		0.0124944
		0.00881638
		0.00834386
		0.0077378
		0.00950127
		0.0105832
		0.0109816
		0.0118552
		0.00890058
		0.00441014
		0.011172
		0.00273479
		0.00889212
		0.00653446
		0.00339465
		0.0123489
		0.00629072
		0.00902751
		0.0119312
		0.0092559
		0.0153038
		0.00791553
		0.011918
		0.0140576
		0.0112727
		0.0141327
		0.00894723
		0.0153823
		0.0154653
		0.0209804
		0.024679
		0.0186768
		0.018488
		0.0169409
		0.0194631
		0.0220131
		0.018461
		0.0189402
		0.0171524
		0.021994
		0.021901
		0.0226666
		0.0195184
		0.0228164
		0.0183395
		0.0245729
		0.0157644
		0.0174397
		0.0218326
		0.0200039
		0.0202243
		0.0188025
		0.0137848
		0.0211768
		0.0200881
		0.0183355
		0.0188061
		0.0185265
		0.0195772
		0.0172365
		0.0156766
		0.0126365
		0.0149779
		0.0122472
		0.0140087
		0.0152997
		0.00684302
		0.0145606
		0.0158854
		0.0190052
		0.00867791
		0.0165323
		0.0125663
		0.0165682
		0.018449
		0.0136785
		0.0189578
		0.0130426
		0.0145854
		0.0155557
		0.0129723
		0.0139158
		0.0215077
		0.0117122
		0.0197028
		0.0189361
		0.0117466
		0.0188513
		0.0195107
		0.0207783
		0.0208954
		0.0192311
		0.026033
		0.023217
		0.0226972
		0.0212165
		0.0212351
		0.0260267
		0.0258119
		0.0244585
		0.0271474
		0.023786
		0.0235238
		0.020153
		0.0246619
		0.0236103
		0.0277718
		0.0284795
		0.025673
		0.0298645
		0.0252215
		0.0243663
		0.0268448
		0.0287472
		0.0269377
		0.0244657
		0.0269162
		0.0278569
		0.0267488
		0.0304063
		0.0251431
		0.0302088
		0.0295256
		0.0265319
		0.028708
		0.0336367
		0.0286164
		0.0334696
		0.030749
		0.0348236
		0.0262745
		0.033637
		0.0312154
		0.0283832
		0.0296109
		0.0295618
		0.0281801
		0.024438
		0.0213448
		0.0307894
		0.0270885
		0.0238414
		0.0230239
		0.0249952
		0.0249159
		0.0246504
		0.0177334
		0.0199639
		0.0196547
		0.0262412
		0.0173436
		0.0129448
		0.0187054
		0.026699
		0.0181158
		0.020023
		0.0159673
		0.0151577
		0.0241511
		0.0265461
		0.0257521
		0.0188918
		0.0269405
		0.0197478
		0.0193575
		0.0173233
		0.0199736
		0.0136998
		0.0203272
		0.0179891
		0.0187965
		0.0194053
		0.0230536
		0.0180443
		0.0223067
		0.0142176
		0.0217655
		0.0167123
		0.01686
		0.0176126
		0.0107035
		0.0187849
		0.0137914
		0.017707
		0.0247232
		0.0142898
		0.0205969
		0.0174448
		0.017723
		0.0163346
		0.018348
		0.0215789
		0.025536
		0.0192885
		0.0199062
		0.016865
		0.0212205
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 17.197266 %	 max error: 419.644061 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.011698 max data: 0.038760

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.004910 
	   

>>>> Computational cost: 300.223924 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  5.1323e-04 ( 6.2e+04%); (bound active) 
	Vm1    : 1.0778e-02  +-  1.4890e-03 (    13.8%); 
	h1     : 1.9918e+00  +-  3.6167e-01 (    18.2%); 
	Km1    : 3.3658e-02  +-  5.7386e-03 (      17%); 
	d1     : 3.1677e-02  +-  4.8265e-03 (    15.2%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -2.150588e-02	 1.602102e-01	 3.794149e-01	 3.567718e-01
	 -2.150588e-02	 1.000000e+00	 1.367342e-02	 -7.228003e-02	 9.118272e-01
	 1.602102e-01	 1.367342e-02	 1.000000e+00	 -6.105043e-01	 1.884135e-01
	 3.794149e-01	 -7.228003e-02	 -6.105043e-01	 1.000000e+00	 -5.352753e-02
	 3.567718e-01	 9.118272e-01	 1.884135e-01	 -5.352753e-02	 1.000000e+00
