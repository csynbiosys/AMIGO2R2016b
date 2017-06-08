   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-184058
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-184058\PE_gal1noD_eSS_pe-8 


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

		v_guess(1)=0.000005;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.004399;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.632050;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.274448;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.150728;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.398e-05  2.762e-05  3.177e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 2880.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 577: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.6842	  0.4875	  0.3325	  0.5802	  0.3942	  0.0000	  0.3716	  0.3314	  0.4297	  1.0123	  0.0000	  0.6847	  1.8834	  0.1052	  0.5731	  0.6809	  1.4178	  0.0151	  0.0162	  0.0171	  2.0000	  0.0168	  2.0000	  0.0154	  2.0000	  2.0000	  0.0154	  2.0000	  2.0000	  0.0161	  0.0168	  2.0000	  0.0000	  0.5211	  0.0000	  0.0000	  1.9989	  0.8697	  1.2004	  0.5461	  0.5397	  0.0000	  0.3824	  0.3266	  0.3504	  0.4911	  0.2722	  0.1053	
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
		0.000933564
		-0.00643871
		0.00634912
		-0.00364263
		-6.61768e-05
		0.000867836
		0.00521631
		-0.000637812
		0.00293542
		0.00417975
		-0.000234815
		0.000794974
		0.00685358
		0.0094578
		0.00862285
		0.00233872
		0.0082849
		0.0110472
		0.0112347
		0.00885867
		0.00750875
		0.00679604
		0.011006
		0.00730456
		0.0103938
		0.0148439
		0.0104242
		0.0121527
		0.012605
		0.0167472
		0.0208922
		0.0203382
		0.0158717
		0.0181053
		0.0230036
		0.0201545
		0.022908
		0.0209296
		0.0190955
		0.0197419
		0.0280109
		0.0323845
		0.0285137
		0.0247479
		0.0217626
		0.0222536
		0.0230677
		0.0233606
		0.0273649
		0.0261175
		0.0298272
		0.0259548
		0.0352565
		0.0265483
		0.0278137
		0.0264466
		0.0249429
		0.0305106
		0.0305203
		0.0271679
		0.0243418
		0.0287201
		0.0279
		0.0316938
		0.0262273
		0.025695
		0.0267127
		0.0276531
		0.0258317
		0.0280619
		0.0253553
		0.0328843
		0.0304356
		0.0242457
		0.0235618
		0.0315267
		0.026183
		0.0222663
		0.0245487
		0.0213268
		0.019615
		0.0231983
		0.0176595
		0.0226599
		0.0235271
		0.0181194
		0.0208017
		0.0269648
		0.0228081
		0.0233276
		0.0225147
		0.0241488
		0.0211744
		0.028391
		0.018467
		0.0234338
		0.0197287
		0.0216918
		0.0258959
		0.0282342
		0.0239779
		0.026241
		0.0242091
		0.0255151
		0.0253825
		0.0230959
		0.0185089
		0.0309728
		0.0322844
		0.0237817
		0.0285013
		0.0282584
		0.0296196
		0.0281336
		0.0264025
		0.029943
		0.0281463
		0.0344481
		0.0307845
		0.030701
		0.0303407
		0.0282384
		0.0312735
		0.0309245
		0.0286567
		0.0287393
		0.0269852
		0.0315761
		0.0300853
		0.0316128
		0.0277442
		0.025222
		0.0308946
		0.0286601
		0.0206882
		0.0210567
		0.0281095
		0.0304435
		0.0176682
		0.0294123
		0.0234301
		0.0261658
		0.0220019
		0.0257983
		0.0253621
		0.0228268
		0.015415
		0.0192943
		0.0201463
		0.02197
		0.0181424
		0.0197202
		0.0258197
		0.0186319
		0.023245
		0.023059
		0.0253854
		0.0209657
		0.0243569
		0.0201862
		0.0239089
		0.02639
		0.024631
		0.0265978
		0.0276026
		0.0218265
		0.0265052
		0.0219359
		0.0264594
		0.0238603
		0.0278196
		0.0222312
		0.023025
		0.0275762
		0.0271392
		0.031443
		0.0215624
		0.0278142
		0.0291451
		0.0307908
		0.0224036
		0.0318084
		0.0268093
		0.030754
		0.0337554
		0.0299395
		0.0343839
		0.0324411
		0.0312821
		0.0282686
		0.0321857
		0.0250256
		0.0312641
		0.0296514
		0.028848
		0.0287462
		0.0264949
		0.0367592
		0.0223495
		0.0336414
		0.0301177
		0.0305445
		0.0288889
		0.0274749
		0.0283216
		0.033889
		0.0308959
		0.0297527
		0.0359985
		0.0313047
		0.0318024
		0.027832
		0.0287953
		0.0298281
		0.0261566
		0.023074
		0.0256198
		0.0273387
		0.0271051
		0.029632
		0.0291137
		0.0260512
		0.0217219
		0.021298
		0.0273652
		0.0228437
		0.025511
		0.0225144
		0.0195852
		0.0258251
		0.0170071
		0.0247526
		0.0173099
		0.0225918
		0.0146422
		0.017001
		0.0199698
		0.0155943
		0.0133836
		0.017393
		0.0138108
		0.0114286
		0.0157096
		0.0183763
		0.0182053
		0.0156049
		0.00986539
		0.0166106
		0.0123667
		0.00719023
		0.0118561
		0.014851
		0.0182504
		0.011769
		0.0184407
		0.0212342
		0.0139422
		0.0160143
		0.0153966
		0.016459
		0.0117096
		0.015619
		0.0144425
		0.0204442
		0.00956285
		0.0107865
		0.0123263
		0.0136531
		0.0136783
		0.0131814
		0.0159324
		0.0174083
		0.0147386
		0.0139763
		0.0183073
		0.0177108
		0.0183335
		0.0131935
		0.0162196
		0.0199637
		0.0182945
		0.0157537
		0.0265713
		0.017177
		0.0238491
		0.0259425
		0.0214749
		0.0198813
		0.0164822
		0.0182717
		0.0198994
		0.0194999
		0.0128664
		0.022079
		0.0249213
		0.0154128
		0.015561
		0.0166558
		0.0197372
		0.0214716
		0.0147645
		0.0215744
		0.0212383
		0.020893
		0.0164506
		0.0185965
		0.0188121
		0.0262562
		0.0243566
		0.0266069
		0.0248292
		0.0252011
		0.0206348
		0.0229978
		0.0235488
		0.0199381
		0.0223856
		0.0246982
		0.0238064
		0.0274073
		0.0246042
		0.0224641
		0.0206508
		0.0326155
		0.0190761
		0.0204801
		0.0192466
		0.0209949
		0.0245528
		0.0182922
		0.0230111
		0.0224351
		0.0226167
		0.0221037
		0.0190582
		0.0201775
		0.0160104
		0.0213626
		0.0217885
		0.0212735
		0.0194823
		0.0194646
		0.0190917
		0.0210414
		0.0233435
		0.0219646
		0.0251885
		0.0262646
		0.0222093
		0.024709
		0.0314325
		0.0233857
		0.0195634
		0.0206727
		0.0276963
		0.023953
		0.0244196
		0.0239102
		0.0242797
		0.0261071
		0.0203366
		0.0216672
		0.0254086
		0.0283034
		0.0231455
		0.0231298
		0.0222857
		0.0229884
		0.028735
		0.0211871
		0.0169945
		0.0226193
		0.0173424
		0.0185394
		0.0167971
		0.0164635
		0.00817905
		0.016704
		0.0229976
		0.0194329
		0.0173355
		0.0200087
		0.0128514
		0.0168281
		0.0189257
		0.0209176
		0.015802
		0.0193157
		0.0159585
		0.0155776
		0.0179284
		0.0167936
		0.0185092
		0.0139509
		0.0169533
		0.0182289
		0.0174861
		0.0169816
		0.0174391
		0.0149283
		0.0108951
		0.0165689
		0.0204025
		0.0131543
		0.0153599
		0.0117416
		0.0191421
		0.01383
		0.0191578
		0.0155175
		0.0153027
		0.0175156
		0.0181685
		0.0172405
		0.021166
		0.0143274
		0.010333
		0.0134037
		0.0165203
		0.0134699
		0.0174082
		0.0166366
		0.0168766
		0.0110556
		0.0173053
		0.0153152
		0.0137574
		0.0133536
		0.0121658
		0.0115768
		0.0112555
		0.01732
		0.0150524
		0.0115942
		0.0166389
		0.0147579
		0.00811904
		0.00928934
		0.00863748
		0.0129955
		0.00809148
		0.00830431
		0.0131861
		0.0165745
		0.0079739
		0.010025
		0.0118046
		0.00544935
		0.0189022
		0.0158435
		0.0155014
		0.00828153
		0.00909202
		0.0112499
		0.0101598
		0.0115419
		0.0184498
		0.0170556
		0.0212153
		0.0205519
		0.0184797
		0.0211953
		0.0160582
		0.0194549
		0.0208394
		0.0211538
		0.0184736
		0.033526
		0.0190494
		0.0195981
		0.0196272
		0.0242262
		0.0268939
		0.0297879
		0.024755
		0.0202385
		0.0261673
		0.0268313
		0.0275115
		0.0250167
		0.0278453
		0.0267206
		0.0300789
		0.0320164
		0.0242
		0.0286949
		0.0284817
		0.0309632
		0.0271235
		0.0275795
		0.0290984
		0.0292147
		0.0309614
		0.0281602
		0.0328952
		0.0280298
		0.0367848
		0.0356229
		0.0296025
		0.0269108
		0.0220275
		0.0300845
		0.0296228
		0.0245042
		0.0259206
		0.0266874
		0.023766
		0.0254136
		0.0216952
		0.0242796
		0.0192137
		0.020713
		0.0225587
		0.0274917
		0.0209456
		0.022316
		0.0303824
		0.0237216
		0.0248408
		0.0260857
		0.0207945
		0.0204504
		0.0235494
		0.0235301
		0.0208348
		0.0253513
		0.0228997
		0.0261923
		0.0215713
		0.0200418
		0.0204846
		0.0250147
		0.0271803
		0.0163763
		0.0277936
		0.0306302
		0.0286256
		0.0275031
		0.0242596
		0.0198821
		0.0273356
		0.0224708
		0.0277823
		0.0267712
		0.0304382
		0.0276175
		0.0292943
		0.0286128
		0.029893
		0.0283926
		0.0338017
		0.0294031
		0.0278667
		0.0242662
		0.0250973
		0.0310122
		0.0302072
		0.0310471
		0.0281135
		0.0307261
		0.0332742
		0.0216938
		0.0310394
		0.0304581
		0.0369206
		0.0310708
		0.0282926
		0.0260803
		0.0300252
		0.0319884
		0.0285567
		0.0311071
		0.0338484
		0.0309249
		0.0236791
		0.0338472
		0.032012
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 17.544400 %	 max error: 1112.810909 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.011165 max data: 0.036921

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.005692 
	   

>>>> Computational cost: 300.364325 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  5.6347e-04 (6.81e+04%); (bound active) 
	Vm1    : 1.0579e-02  +-  1.5968e-03 (    15.1%); 
	h1     : 2.1392e+00  +-  1.2947e+00 (    60.5%); 
	Km1    : 3.0551e-02  +-  1.2770e-02 (    41.8%); 
	d1     : 3.0883e-02  +-  4.8769e-03 (    15.8%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.863050e-01	 3.046878e-01	 -8.994898e-02	 2.579420e-01
	 -1.863050e-01	 1.000000e+00	 -9.542619e-02	 -1.980858e-03	 8.919188e-01
	 3.046878e-01	 -9.542619e-02	 1.000000e+00	 -9.490793e-01	 1.394664e-01
	 -8.994898e-02	 -1.980858e-03	 -9.490793e-01	 1.000000e+00	 -1.525333e-01
	 2.579420e-01	 8.919188e-01	 1.394664e-01	 -1.525333e-01	 1.000000e+00
