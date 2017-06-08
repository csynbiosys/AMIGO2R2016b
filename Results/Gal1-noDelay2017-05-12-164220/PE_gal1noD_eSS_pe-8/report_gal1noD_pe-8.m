   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-164220
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-164220\PE_gal1noD_eSS_pe-8 


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

		v_guess(1)=0.000006;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.089474;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=2.130189;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.157698;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.004684;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.299e-03  1.056e-03  1.214e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 2880.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 577: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.3578	  1.8349	  1.6472	  0.1081	  0.0881	  1.7001	  0.9628	  1.6852	  1.6813	  0.0968	  1.9195	  0.0189	  0.4228	  0.3092	  0.3516	  0.0021	  1.7627	  1.4842	  0.0174	  0.3716	  0.5718	  0.3094	  1.1920	  0.0000	  0.3132	  0.3385	  0.3437	  0.3045	  0.3199	  1.6032	  0.3419	  0.2354	  1.1419	  1.6803	  0.0000	  1.1626	  0.7393	  0.1163	  1.0947	  0.1011	  1.7767	  1.5597	  1.7284	  0.1043	  1.7436	  0.1018	  0.1007	  1.6861	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000	780.0000	840.0000	900.0000	960.0000	1020.0000	1080.0000	1140.0000	1200.0000	1260.0000	1320.0000	1380.0000	1440.0000	1500.0000	1560.0000	1620.0000	1680.0000	1740.0000	1800.0000	1860.0000	1920.0000	1980.0000	2040.0000	2100.0000	2160.0000	2220.0000	2280.0000	2340.0000	2400.0000	2460.0000	2520.0000	2580.0000	2640.0000	2700.0000	2760.0000	2820.0000	2880.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 577

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  1505.000  1510.000  1515.000  1520.000  1525.000  1530.000  1535.000  1540.000  1545.000  1550.000  1555.000  1560.000  1565.000  1570.000  1575.000  1580.000  1585.000  1590.000  1595.000  1600.000  1605.000  1610.000  1615.000  1620.000  1625.000  1630.000  1635.000  1640.000  1645.000  1650.000  1655.000  1660.000  1665.000  1670.000  1675.000  1680.000  1685.000  1690.000  1695.000  1700.000  1705.000  1710.000  1715.000  1720.000  1725.000  1730.000  1735.000  1740.000  1745.000  1750.000  1755.000  1760.000  1765.000  1770.000  1775.000  1780.000  1785.000  1790.000  1795.000  1800.000  1805.000  1810.000  1815.000  1820.000  1825.000  1830.000  1835.000  1840.000  1845.000  1850.000  1855.000  1860.000  1865.000  1870.000  1875.000  1880.000  1885.000  1890.000  1895.000  1900.000  1905.000  1910.000  1915.000  1920.000  1925.000  1930.000  1935.000  1940.000  1945.000  1950.000  1955.000  1960.000  1965.000  1970.000  1975.000  1980.000  1985.000  1990.000  1995.000  2000.000  2005.000  2010.000  2015.000  2020.000  2025.000  2030.000  2035.000  2040.000  2045.000  2050.000  2055.000  2060.000  2065.000  2070.000  2075.000  2080.000  2085.000  2090.000  2095.000  2100.000  2105.000  2110.000  2115.000  2120.000  2125.000  2130.000  2135.000  2140.000  2145.000  2150.000  2155.000  2160.000  2165.000  2170.000  2175.000  2180.000  2185.000  2190.000  2195.000  2200.000  2205.000  2210.000  2215.000  2220.000  2225.000  2230.000  2235.000  2240.000  2245.000  2250.000  2255.000  2260.000  2265.000  2270.000  2275.000  2280.000  2285.000  2290.000  2295.000  2300.000  2305.000  2310.000  2315.000  2320.000  2325.000  2330.000  2335.000  2340.000  2345.000  2350.000  2355.000  2360.000  2365.000  2370.000  2375.000  2380.000  2385.000  2390.000  2395.000  2400.000  2405.000  2410.000  2415.000  2420.000  2425.000  2430.000  2435.000  2440.000  2445.000  2450.000  2455.000  2460.000  2465.000  2470.000  2475.000  2480.000  2485.000  2490.000  2495.000  2500.000  2505.000  2510.000  2515.000  2520.000  2525.000  2530.000  2535.000  2540.000  2545.000  2550.000  2555.000  2560.000  2565.000  2570.000  2575.000  2580.000  2585.000  2590.000  2595.000  2600.000  2605.000  2610.000  2615.000  2620.000  2625.000  2630.000  2635.000  2640.000  2645.000  2650.000  2655.000  2660.000  2665.000  2670.000  2675.000  2680.000  2685.000  2690.000  2695.000  2700.000  2705.000  2710.000  2715.000  2720.000  2725.000  2730.000  2735.000  2740.000  2745.000  2750.000  2755.000  2760.000  2765.000  2770.000  2775.000  2780.000  2785.000  2790.000  2795.000  2800.000  2805.000  2810.000  2815.000  2820.000  2825.000  2830.000  2835.000  2840.000  2845.000  2850.000  2855.000  2860.000  2865.000  2870.000  2875.000  2880.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		-0.000670332
		0.000966544
		-0.00532137
		-0.000123593
		0.00377351
		0.00014419
		0.000879345
		-0.00193242
		0.00143651
		0.00649827
		0.0023041
		0.0032187
		-2.73808e-05
		0.00219307
		0.00501819
		0.00567384
		0.00236419
		0.00649201
		0.0116771
		0.0112281
		0.00740615
		0.0154859
		0.0117713
		-0.000405365
		0.00833867
		0.0118811
		0.0124098
		0.0117991
		0.0134936
		0.0101593
		0.0162041
		0.015321
		0.0137997
		0.0219584
		0.0157088
		0.0226102
		0.0236074
		0.0174581
		0.0213437
		0.0206315
		0.0251115
		0.0197127
		0.0189599
		0.0257264
		0.0234444
		0.0274885
		0.0281328
		0.027089
		0.0240554
		0.0302607
		0.0288445
		0.0193251
		0.0240285
		0.0270046
		0.0239368
		0.0278757
		0.0264648
		0.0265727
		0.0292844
		0.0255718
		0.0202593
		0.0194598
		0.0311811
		0.0328343
		0.0219588
		0.0277163
		0.0281876
		0.0263344
		0.0218857
		0.0266507
		0.0272702
		0.0305135
		0.0294788
		0.0269012
		0.0276197
		0.0229981
		0.0285164
		0.0271491
		0.0263767
		0.0304607
		0.0301654
		0.032178
		0.0279906
		0.0298134
		0.0322113
		0.0323484
		0.0265406
		0.0224079
		0.0291913
		0.0306069
		0.0327644
		0.0270985
		0.0298272
		0.0279557
		0.0299839
		0.0272964
		0.0301594
		0.0267872
		0.0324003
		0.0261433
		0.0301913
		0.0316238
		0.0341097
		0.0340421
		0.0288881
		0.0347696
		0.0338655
		0.0332927
		0.0253489
		0.0318853
		0.031212
		0.0315543
		0.0325025
		0.0311064
		0.0323967
		0.0358926
		0.0329558
		0.0372401
		0.0293472
		0.0309887
		0.0335797
		0.0239139
		0.0321397
		0.0305511
		0.0346387
		0.0330379
		0.0300649
		0.0288024
		0.0352729
		0.0378909
		0.0350867
		0.0292581
		0.0304793
		0.0252941
		0.0309423
		0.0266169
		0.0307261
		0.0343099
		0.0286464
		0.0248239
		0.0279174
		0.0279294
		0.0275331
		0.0286075
		0.0267394
		0.0246778
		0.0316999
		0.0191824
		0.0318174
		0.0243091
		0.0276443
		0.0285082
		0.0320591
		0.0255822
		0.0237267
		0.028369
		0.0268775
		0.0259946
		0.0187276
		0.0280829
		0.0204015
		0.0230286
		0.0304589
		0.0287594
		0.0220386
		0.0219154
		0.028893
		0.029383
		0.0277892
		0.026693
		0.0230896
		0.0264452
		0.0270472
		0.024859
		0.0250518
		0.0262011
		0.0239362
		0.0298792
		0.0302516
		0.0309831
		0.0232657
		0.029356
		0.0293635
		0.0279926
		0.0247362
		0.0282835
		0.0246389
		0.0311121
		0.0303593
		0.0260261
		0.025856
		0.0286086
		0.0284653
		0.0263728
		0.0250718
		0.0294802
		0.0250614
		0.0260857
		0.0217111
		0.0252912
		0.0143541
		0.0247923
		0.0242237
		0.0171285
		0.0234633
		0.023754
		0.0209034
		0.0190161
		0.0235041
		0.0247226
		0.0220877
		0.0168544
		0.0207047
		0.0242058
		0.0269529
		0.017529
		0.0209861
		0.0242617
		0.0237678
		0.0208013
		0.0305891
		0.0188711
		0.0253958
		0.0266009
		0.0255122
		0.0242505
		0.0256148
		0.0250021
		0.0231505
		0.0218021
		0.0228637
		0.0217362
		0.0174922
		0.025491
		0.0213012
		0.0161445
		0.0210233
		0.0248093
		0.0199808
		0.0223177
		0.018499
		0.0194535
		0.0132973
		0.0151726
		0.0264665
		0.0172993
		0.0205521
		0.0176981
		0.023681
		0.0242133
		0.0257025
		0.0276472
		0.0245299
		0.0257347
		0.02798
		0.0253265
		0.0236646
		0.0257952
		0.0218095
		0.0249409
		0.0248273
		0.0243338
		0.0233433
		0.0240264
		0.0276288
		0.0227841
		0.0288932
		0.0264171
		0.0304297
		0.0266333
		0.0283562
		0.0315202
		0.0237098
		0.0277583
		0.0253349
		0.0305812
		0.0306738
		0.0253558
		0.031826
		0.0293603
		0.0254835
		0.0294303
		0.027035
		0.03066
		0.024242
		0.0283638
		0.0288397
		0.0280905
		0.0293445
		0.0217169
		0.0252971
		0.0217769
		0.0216161
		0.0233519
		0.0233369
		0.0190121
		0.0261743
		0.0292228
		0.0155378
		0.0223141
		0.0262626
		0.0151143
		0.022014
		0.0220113
		0.0229753
		0.0192986
		0.0281048
		0.0233002
		0.0232821
		0.023273
		0.0222132
		0.0224344
		0.029784
		0.0257635
		0.0208746
		0.0272135
		0.0223482
		0.0213084
		0.0264227
		0.022077
		0.0291091
		0.0200305
		0.0316032
		0.0279628
		0.0314221
		0.0287347
		0.023149
		0.025494
		0.0301926
		0.0272544
		0.0207609
		0.0291847
		0.0306457
		0.0267338
		0.027239
		0.0289535
		0.0273015
		0.0289636
		0.0308507
		0.0223642
		0.0272347
		0.0305412
		0.0302315
		0.0281868
		0.0297869
		0.0263435
		0.0315347
		0.0293391
		0.0294772
		0.0227593
		0.029708
		0.0349262
		0.0241108
		0.027545
		0.0300561
		0.039108
		0.0261456
		0.0311262
		0.0293801
		0.0322383
		0.0301656
		0.0315945
		0.0270842
		0.0307501
		0.0309152
		0.0267264
		0.0258893
		0.0286796
		0.0330219
		0.0212874
		0.028203
		0.0319003
		0.0374285
		0.0303793
		0.0327801
		0.0307073
		0.0289257
		0.034193
		0.0318355
		0.0293585
		0.0262898
		0.0325642
		0.0307622
		0.0343031
		0.0326331
		0.0322256
		0.0253398
		0.0329793
		0.0266053
		0.0315815
		0.0362516
		0.0281501
		0.0327485
		0.0315293
		0.0296829
		0.0279906
		0.0283246
		0.0366436
		0.0324091
		0.0338741
		0.033585
		0.0336608
		0.030567
		0.0340523
		0.03203
		0.0313889
		0.0334947
		0.0290582
		0.029914
		0.03447
		0.0342871
		0.0276475
		0.0307917
		0.0342326
		0.0313563
		0.0308672
		0.0258402
		0.0313812
		0.0251539
		0.0298997
		0.0311023
		0.0272191
		0.0218182
		0.0287853
		0.0242704
		0.0252282
		0.0302393
		0.0197731
		0.0225469
		0.0210826
		0.0232859
		0.0227105
		0.0189239
		0.02914
		0.0265028
		0.0244068
		0.0210227
		0.0320477
		0.0204655
		0.0248097
		0.0242519
		0.0170624
		0.0222407
		0.0264024
		0.0162338
		0.0276268
		0.0197955
		0.0249758
		0.021085
		0.0257123
		0.0192508
		0.0285584
		0.0300069
		0.0264959
		0.0191658
		0.0291165
		0.0223015
		0.0281814
		0.0270317
		0.0256698
		0.0308766
		0.0287513
		0.0291628
		0.0326133
		0.0246488
		0.0290042
		0.0237397
		0.0301271
		0.0301449
		0.0300873
		0.0298784
		0.0266231
		0.0260785
		0.0265478
		0.0267737
		0.0243835
		0.0270248
		0.0288282
		0.0284005
		0.0302697
		0.0296654
		0.0309508
		0.0348878
		0.0321542
		0.0292238
		0.0255701
		0.0338588
		0.0273246
		0.0294789
		0.0323277
		0.0314194
		0.0347827
		0.0280905
		0.0293401
		0.0314354
		0.0272813
		0.0334343
		0.0310257
		0.0231874
		0.0261982
		0.0245088
		0.0246167
		0.0275366
		0.0338648
		0.0306971
		0.0274057
		0.0329147
		0.0310817
		0.0228311
		0.0331631
		0.0323962
		0.0254503
		0.0325205
		0.0295315
		0.0261477
		0.0293463
		0.0381635
		0.0322415
		0.037838
		0.0298816
		0.0351978
		0.0278326
		0.0308513
		0.0284948
		0.0333896
		0.0304196
		0.0323319
		0.03524
		0.0307946
		0.0281507
		0.031404
		0.0360749
		0.0303277
		0.0339295
		0.0315944
		0.0308359
		0.03272
		0.0275611
		0.033378
		0.0356499
		0.0294279
		0.0342181
		0.0261517
		0.0291585
		0.027858
		0.028775
		0.0323426
		0.0271797
		0.0247382
		0.0305219
		0.026552
		0.0262949
		0.0283964
		0.0251866
		0.0320903
		0.0277232
		0.0338154
		0.036334
		0.0282792
		0.0350986
		0.034748
		0.0317998
		0.0311505
		0.0292546
		0.0297159
		0.0340136
		0.0341142
		0.028816
		0.0309511
		0.0265338
		0.0320719
		0.0260124
		0.0279584
		0.0234996
		0.0256587
		0.0305018
		0.0266645
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 37.584671 %	 max error: 11726.935689 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.011263 max data: 0.039108

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.006004 
	   

>>>> Computational cost: 300.177124 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2813e-07  +-  9.3539e-04 (1.13e+05%); (bound active) 
	Vm1    : 8.6463e-03  +-  1.5617e-03 (    18.1%); 
	h1     : 1.8248e+00  +-  5.7612e-01 (    31.6%); 
	Km1    : 3.5427e-02  +-  9.2906e-03 (    26.2%); 
	d1     : 2.5327e-02  +-  4.6823e-03 (    18.5%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -3.407599e-01	 6.283714e-01	 2.069382e-01	 3.728854e-01
	 -3.407599e-01	 1.000000e+00	 -3.402548e-01	 -1.380548e-01	 7.380972e-01
	 6.283714e-01	 -3.402548e-01	 1.000000e+00	 2.152847e-01	 1.582084e-01
	 2.069382e-01	 -1.380548e-01	 2.152847e-01	 1.000000e+00	 -6.658059e-02
	 3.728854e-01	 7.380972e-01	 1.582084e-01	 -6.658059e-02	 1.000000e+00
