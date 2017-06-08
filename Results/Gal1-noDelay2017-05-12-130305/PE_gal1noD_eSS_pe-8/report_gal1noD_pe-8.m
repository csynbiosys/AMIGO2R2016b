   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-130305
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-130305\PE_gal1noD_eSS_pe-8 


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

		v_guess(1)=0.000002;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.005685;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.532503;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.287044;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.037037;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[5.055e-05  4.110e-05  4.727e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 2880.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 577: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.9136	  2.0000	  1.8090	  2.0000	  1.2966	  1.9167	  2.0000	  0.3683	  0.0000	  0.6295	  0.9709	  0.5667	  0.2315	  0.9596	  0.9878	  0.9479	  1.4200	  0.3069	  0.5029	  2.0000	  0.6242	  0.6667	  0.3648	  2.0000	  0.2192	  0.3101	  0.3294	  0.8234	  1.5539	  0.0000	  1.5585	  2.0000	  1.9998	  1.8243	  0.9049	  2.0000	  2.0000	  0.4831	  1.3163	  1.9956	  0.0235	  0.0138	  2.0000	  0.0119	  1.9964	  2.0000	  1.9736	  1.8428	
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
		-0.00502369
		-0.00199678
		-0.00602252
		0.000729458
		-0.00308581
		0.00268591
		-0.00869317
		-0.00144767
		0.0011015
		0.00362008
		0.000304715
		0.006328
		0.00339839
		0.00111658
		0.00575629
		0.00183674
		0.00988845
		0.00561165
		0.0149596
		0.00608847
		0.0124746
		0.00884388
		0.00371887
		0.0120709
		0.0151371
		0.00919338
		0.0160178
		0.0186793
		0.0198492
		0.0127939
		0.0200476
		0.0122355
		0.023652
		0.0214531
		0.019501
		0.0219028
		0.0250885
		0.0212243
		0.0251943
		0.0228858
		0.0225202
		0.0210191
		0.025529
		0.0212644
		0.0258742
		0.0209576
		0.0268995
		0.0258467
		0.0267881
		0.0274211
		0.0325237
		0.0257564
		0.0248368
		0.0233616
		0.0287923
		0.0260478
		0.030413
		0.0271023
		0.0275084
		0.0322699
		0.0255328
		0.0231313
		0.0290277
		0.0272445
		0.0308719
		0.0271285
		0.028949
		0.0282911
		0.0272965
		0.0292406
		0.031323
		0.0276954
		0.0340833
		0.0308369
		0.0278714
		0.0309711
		0.0295563
		0.030812
		0.030054
		0.0291887
		0.0382068
		0.0335774
		0.0337807
		0.0301534
		0.0318151
		0.028752
		0.03732
		0.025786
		0.03401
		0.0282979
		0.0334464
		0.0327955
		0.0270086
		0.0291832
		0.0358828
		0.031163
		0.0357516
		0.0294421
		0.036926
		0.0331244
		0.0323826
		0.0291628
		0.0356432
		0.0300992
		0.0314583
		0.0292294
		0.0321171
		0.0308939
		0.0263985
		0.0260743
		0.0253256
		0.0249594
		0.0212591
		0.0189853
		0.0222584
		0.0224574
		0.0292638
		0.0264321
		0.023626
		0.0190115
		0.0238373
		0.0182644
		0.0245474
		0.0238502
		0.0226109
		0.0222969
		0.0210413
		0.0241606
		0.0235755
		0.0276197
		0.0171075
		0.0215567
		0.0310165
		0.024559
		0.0246868
		0.0278315
		0.0238616
		0.029046
		0.02758
		0.0205043
		0.0162057
		0.0198076
		0.0255054
		0.0278329
		0.0264881
		0.0284253
		0.0229726
		0.0267567
		0.0258826
		0.0319391
		0.0251928
		0.0221714
		0.0269597
		0.0286676
		0.0322565
		0.0262314
		0.0294852
		0.0306559
		0.0254532
		0.0301747
		0.0332763
		0.0352579
		0.027271
		0.0347107
		0.0313821
		0.031288
		0.0304043
		0.0292023
		0.0306657
		0.0321758
		0.0232193
		0.0280244
		0.0353674
		0.0316647
		0.035006
		0.0328216
		0.0284638
		0.0296587
		0.0323352
		0.026219
		0.0289535
		0.030268
		0.0287565
		0.0306184
		0.0352837
		0.0264385
		0.033043
		0.0289528
		0.0289221
		0.0367767
		0.0331256
		0.0363872
		0.0330307
		0.0366313
		0.028215
		0.0335381
		0.0321094
		0.029597
		0.0306341
		0.03191
		0.0304908
		0.0281921
		0.0337076
		0.0290939
		0.0332632
		0.0349731
		0.0355149
		0.0314146
		0.0313625
		0.0321727
		0.0321649
		0.038343
		0.0313892
		0.0333827
		0.0296582
		0.0336137
		0.0324788
		0.0417812
		0.0310592
		0.0345733
		0.031281
		0.034213
		0.0307127
		0.0360446
		0.0313162
		0.0367151
		0.0351005
		0.0331934
		0.0302971
		0.0330917
		0.0373211
		0.0356985
		0.0349206
		0.0313945
		0.0275143
		0.033518
		0.0361899
		0.0339244
		0.0264845
		0.027695
		0.0316367
		0.0301762
		0.0342334
		0.0326539
		0.0303176
		0.0362006
		0.0342989
		0.0329935
		0.0275512
		0.0321435
		0.0305884
		0.0313071
		0.0381979
		0.029398
		0.0306023
		0.0319008
		0.0336097
		0.0314629
		0.0305993
		0.0253983
		0.0332963
		0.0320162
		0.0303017
		0.0266994
		0.0315399
		0.0335631
		0.0342518
		0.0310912
		0.0299863
		0.0303316
		0.029226
		0.0321731
		0.0288315
		0.031016
		0.0293347
		0.0303746
		0.0373518
		0.0315047
		0.0239881
		0.032603
		0.0276312
		0.0360211
		0.0315667
		0.0347486
		0.0283036
		0.0341989
		0.0301647
		0.0345886
		0.0319543
		0.0277439
		0.0341232
		0.0259628
		0.03271
		0.0299252
		0.03115
		0.0306156
		0.0291492
		0.0263938
		0.0330197
		0.0277008
		0.0378297
		0.0319866
		0.0297446
		0.0307814
		0.032141
		0.034583
		0.0363127
		0.0316309
		0.0276139
		0.029401
		0.0322545
		0.0325401
		0.0333056
		0.0323386
		0.0249609
		0.0318919
		0.027581
		0.0315073
		0.0258636
		0.0402841
		0.0339377
		0.0300882
		0.0287237
		0.03034
		0.0328735
		0.0315636
		0.0323908
		0.0313177
		0.0312444
		0.0343765
		0.0380782
		0.0250999
		0.0311944
		0.0319895
		0.0292589
		0.0347874
		0.0292312
		0.0328471
		0.0317612
		0.0311342
		0.0295458
		0.0320891
		0.0335976
		0.0285023
		0.0233155
		0.0381962
		0.037512
		0.0346751
		0.0316435
		0.0322674
		0.0322026
		0.032083
		0.0303614
		0.0363025
		0.0354499
		0.0302311
		0.0253195
		0.0287647
		0.0320062
		0.0237963
		0.0294567
		0.032099
		0.02722
		0.0267257
		0.0261592
		0.0285409
		0.0228016
		0.0230575
		0.0227897
		0.0243485
		0.0237271
		0.0251957
		0.0220091
		0.0157803
		0.0212309
		0.0220919
		0.0269216
		0.0192308
		0.0236974
		0.0251382
		0.0196152
		0.021793
		0.0207427
		0.0283197
		0.0263386
		0.0251527
		0.0263174
		0.0236791
		0.0214551
		0.0273961
		0.025489
		0.0224356
		0.021593
		0.0259098
		0.0260041
		0.0245077
		0.0248821
		0.024598
		0.0236413
		0.0252483
		0.0288983
		0.0306627
		0.0336432
		0.0278674
		0.0271474
		0.0280818
		0.0270021
		0.0294416
		0.0325716
		0.0300496
		0.029641
		0.0262894
		0.0276162
		0.0318485
		0.02805
		0.0264
		0.0260122
		0.0265918
		0.0281852
		0.0312256
		0.0323699
		0.0281602
		0.0303191
		0.032013
		0.0290237
		0.029379
		0.0306161
		0.0283532
		0.0339778
		0.0253147
		0.0268027
		0.023056
		0.0336498
		0.0364407
		0.0334703
		0.0361123
		0.0310397
		0.0326263
		0.0327746
		0.0291629
		0.0323877
		0.0280258
		0.0289075
		0.0328255
		0.0295041
		0.0304174
		0.0386539
		0.0287205
		0.0325551
		0.030931
		0.0371321
		0.0282456
		0.0324334
		0.0304421
		0.0317332
		0.0408503
		0.0347557
		0.0265408
		0.0337967
		0.0354731
		0.0267822
		0.0295887
		0.0390527
		0.0336071
		0.0276822
		0.028803
		0.0336804
		0.0343869
		0.0305919
		0.0336256
		0.0298843
		0.0282915
		0.0296315
		0.0341975
		0.0346587
		0.030162
		0.0329407
		0.0297586
		0.0341298
		0.0305233
		0.0299661
		0.0353273
		0.0367824
		0.0349908
		0.0271972
		0.0369305
		0.0290145
		0.0296571
		0.0317214
		0.0352756
		0.0243767
		0.0295823
		0.0303293
		0.025345
		0.0319802
		0.0342482
		0.0367306
		0.0191455
		0.0306391
		0.0255614
		0.0279681
		0.0265469
		0.0246783
		0.0222534
		0.0249028
		0.0213398
		0.0200547
		0.0244438
		0.0166439
		0.0192521
		0.0224863
		0.0183737
		0.014378
		0.0125172
		0.0201245
		0.0120797
		0.0215446
		0.0149699
		0.0238306
		0.0224864
		0.0159618
		0.0225427
		0.015239
		0.014923
		0.0242675
		0.0188013
		0.0201791
		0.0153516
		0.0210156
		0.0213946
		0.0177471
		0.0186514
		0.0155059
		0.0229874
		0.0179618
		0.013704
		0.0191658
		0.0134951
		0.0165232
		0.0167378
		0.0135622
		0.0208149
		0.0170342
		0.0194547
		0.0223308
		0.0178897
		0.0199627
		0.022794
		0.0191904
		0.0182947
		0.0194787
		0.0280491
		0.0201518
		0.0235672
		0.0216974
		0.0225756
		0.0217063
		0.0248938
		0.0235232
		0.0215243
		0.0224926
		0.0231745
		0.0257103
		0.0196665
		0.0237691
		0.0262235
		0.0222587
		0.0261143
		0.0261904
		0.0295839
		0.0316182
		0.0333389
		0.0265193
		0.0287328
		0.028241
		0.0290544
		0.0315624
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 13.503772 %	 max error: 707.322035 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009959 max data: 0.041781

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.005761 
	   

>>>> Computational cost: 300.301925 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  1.1373e-03 (1.37e+05%); (bound active) 
	Vm1    : 1.1144e-02  +-  2.2855e-03 (    20.5%); 
	h1     : 2.2054e+00  +-  1.8996e+00 (    86.1%); 
	Km1    : 3.0938e-02  +-  1.5164e-02 (      49%); 
	d1     : 3.2602e-02  +-  6.9712e-03 (    21.4%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -2.460020e-01	 4.280989e-01	 -2.372666e-02	 2.847737e-01
	 -2.460020e-01	 1.000000e+00	 2.474934e-01	 -4.378119e-01	 8.571862e-01
	 4.280989e-01	 2.474934e-01	 1.000000e+00	 -8.636779e-01	 5.035345e-01
	 -2.372666e-02	 -4.378119e-01	 -8.636779e-01	 1.000000e+00	 -4.830881e-01
	 2.847737e-01	 8.571862e-01	 5.035345e-01	 -4.830881e-01	 1.000000e+00
