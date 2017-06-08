   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-142104
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-142104\PE_gal1noD_eSS_pe-8 


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
		v_guess(2)=0.010538;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=8.354980;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.006378;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.048560;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.609e-05  2.122e-05  2.440e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 2880.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 577: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.0000	  2.0000	  0.0233	  1.9915	  1.9513	  0.7390	  2.0000	  1.6714	  1.2414	  0.0000	  0.0000	  1.9709	  1.3309	  0.0004	  1.8660	  1.3587	  0.1050	  0.0007	  2.0000	  0.0081	  0.0412	  0.0397	  0.0020	  0.0000	  0.0000	  2.0000	  1.9994	  0.0024	  0.0000	  1.9769	  1.9873	  0.0053	  2.0000	  1.9478	  0.1953	  0.0236	  1.9865	  2.0000	  0.0000	  0.0337	  1.8956	  0.0344	  2.0000	  0.0085	  0.8334	  0.0087	  1.2425	
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
		-0.00225093
		0.0010831
		-0.00146795
		-0.00346488
		-0.00305259
		0.00102586
		0.000163041
		-0.00417965
		0.00513645
		-0.00169004
		-0.000234803
		-0.00146747
		-0.0017631
		-0.00164177
		-6.04867e-05
		-0.00145034
		0.00251706
		0.00100635
		0.0023169
		0.00292878
		-0.00165636
		-0.00199229
		0.0019475
		-0.000734183
		-0.00582914
		-0.00410624
		-0.000510239
		0.00165547
		0.0105156
		-0.00438628
		-0.00179094
		0.000764241
		0.00380439
		0.00141212
		0.00403515
		0.00410104
		0.00380831
		-0.00136189
		0.0048954
		0.00757813
		0.00726174
		0.00488189
		0.00767292
		0.0100851
		0.0115589
		0.00415741
		0.00575313
		0.0101268
		0.0113035
		0.0164557
		0.0143188
		0.0127561
		0.0118605
		0.0137863
		0.013287
		0.00977846
		0.0124059
		0.0102255
		0.0163589
		0.0183433
		0.00986386
		0.0236293
		0.0196306
		0.0186244
		0.0142071
		0.015638
		0.012058
		0.0181979
		0.0175153
		0.0166818
		0.018251
		0.0247471
		0.0213649
		0.0209835
		0.0229743
		0.0244012
		0.0226393
		0.0219407
		0.0272897
		0.018395
		0.0221316
		0.0203485
		0.026475
		0.0281122
		0.0281763
		0.0215751
		0.0302785
		0.0306746
		0.0251215
		0.0256301
		0.0278659
		0.0282793
		0.0284238
		0.0288178
		0.026388
		0.0345062
		0.0296337
		0.0307048
		0.0338709
		0.0277828
		0.0327594
		0.0279759
		0.0287411
		0.028344
		0.0274549
		0.030854
		0.0276829
		0.0318901
		0.0306188
		0.0296818
		0.0276648
		0.0274134
		0.0340192
		0.0272224
		0.0341632
		0.0295846
		0.030718
		0.0322906
		0.0318974
		0.0296392
		0.0292067
		0.0340963
		0.032836
		0.0342999
		0.0334054
		0.0329706
		0.0293345
		0.0319466
		0.0325814
		0.0224408
		0.0305453
		0.0305878
		0.0306174
		0.0285128
		0.0262143
		0.0198307
		0.0293516
		0.0259678
		0.0244392
		0.0177603
		0.0248139
		0.0191864
		0.0170685
		0.0208243
		0.0198748
		0.0176352
		0.0178899
		0.0210857
		0.0143831
		0.0163157
		0.0170206
		0.0140464
		0.0142421
		0.0126014
		0.0144813
		0.0164989
		0.0140105
		0.0156511
		0.0189755
		0.0201607
		0.0207674
		0.0178771
		0.0143036
		0.0141664
		0.0167991
		0.0152068
		0.0136238
		0.0195686
		0.0177159
		0.021588
		0.0220524
		0.0151395
		0.0174357
		0.016173
		0.022417
		0.0216629
		0.0197612
		0.0277544
		0.0158977
		0.0220843
		0.0199116
		0.0246731
		0.0179785
		0.0202445
		0.0178681
		0.0191154
		0.019764
		0.0163566
		0.0202429
		0.0182158
		0.014744
		0.0149845
		0.0202309
		0.0230469
		0.0177737
		0.021378
		0.0253384
		0.0198101
		0.0137792
		0.0215997
		0.0221667
		0.0226498
		0.0192732
		0.0189246
		0.0218023
		0.0229118
		0.0227894
		0.0234033
		0.0205748
		0.028028
		0.0237179
		0.0251824
		0.0221944
		0.0264548
		0.0169092
		0.0251303
		0.0245447
		0.0271574
		0.0270477
		0.0263472
		0.0214963
		0.027494
		0.0228499
		0.0291503
		0.0231464
		0.0210834
		0.0275377
		0.0253252
		0.0270162
		0.0276298
		0.0256752
		0.0228232
		0.0222523
		0.0243893
		0.027604
		0.0176746
		0.020402
		0.0259827
		0.0150047
		0.0174453
		0.0186847
		0.0238314
		0.0249366
		0.0163533
		0.0204536
		0.0156457
		0.0193119
		0.0205457
		0.0205849
		0.0249868
		0.0225623
		0.0196607
		0.0231362
		0.0223877
		0.0144504
		0.0199807
		0.0133497
		0.0160706
		0.0160584
		0.0147496
		0.0169894
		0.0155553
		0.0161867
		0.0147204
		0.0155574
		0.0155711
		0.0159569
		0.0170279
		0.0196665
		0.0128892
		0.0186174
		0.0166924
		0.0138553
		0.0165298
		0.0197547
		0.00648621
		0.0187163
		0.0118995
		0.0124899
		0.0153057
		0.0181178
		0.0151691
		0.0149416
		0.0171781
		0.0131632
		0.0149655
		0.0176119
		0.0199027
		0.0126617
		0.0148847
		0.012441
		0.0106407
		0.0125194
		0.0139071
		0.0138883
		0.0106956
		0.014139
		0.0106845
		0.012507
		0.0131361
		0.0109674
		0.00954733
		0.00534621
		0.00919838
		0.0127472
		0.00662413
		0.00570361
		0.00795354
		0.00671134
		0.00909277
		0.0063569
		0.00411311
		0.00240229
		0.00535864
		-0.00154814
		0.00470378
		0.00854823
		0.00753987
		-2.65563e-07
		0.00376767
		0.00608848
		0.00619392
		0.00488519
		0.00679268
		0.00562467
		0.00618856
		0.0055424
		0.00750813
		0.00504856
		0.0122466
		0.0150257
		0.0106829
		0.00774365
		0.0128156
		0.0166288
		0.0109079
		0.0144806
		0.0142373
		0.0156205
		0.0176065
		0.0209493
		0.0112848
		0.0161589
		0.0136764
		0.0166393
		0.0178584
		0.0175956
		0.016303
		0.0197709
		0.0182501
		0.0202498
		0.0159601
		0.0218037
		0.0168405
		0.0170212
		0.0219048
		0.021484
		0.0195017
		0.0147274
		0.0142346
		0.015551
		0.0107911
		0.0099982
		0.0108668
		0.0126438
		0.0150065
		0.0104306
		0.00646866
		0.014918
		0.014241
		0.0114052
		0.00970257
		0.00945863
		0.0200465
		0.0129143
		0.00909106
		0.0163336
		0.0123373
		0.0140385
		0.0160211
		0.00971281
		0.0113161
		0.0148108
		0.0157912
		0.0176471
		0.0236047
		0.0121928
		0.0173193
		0.0200521
		0.0187381
		0.0210617
		0.0167257
		0.0214135
		0.0239662
		0.0187922
		0.0205014
		0.0232593
		0.0226161
		0.020252
		0.0181542
		0.0247484
		0.0168297
		0.0160596
		0.0180096
		0.0220458
		0.0173166
		0.0215597
		0.020293
		0.0100864
		0.0175387
		0.0218421
		0.0215542
		0.013826
		0.0198864
		0.0209703
		0.0243392
		0.0223388
		0.0319561
		0.0280002
		0.0204999
		0.0203533
		0.0209896
		0.0188824
		0.0219843
		0.0282323
		0.024046
		0.0247817
		0.016812
		0.0273803
		0.0254368
		0.0292345
		0.0245328
		0.0237955
		0.0165854
		0.0244767
		0.0209227
		0.0297593
		0.0277753
		0.0260629
		0.0248254
		0.0269686
		0.0242287
		0.0279814
		0.0254227
		0.0259027
		0.0241676
		0.029725
		0.0224356
		0.0304683
		0.0286718
		0.0204299
		0.0296443
		0.0255882
		0.028873
		0.0264256
		0.0235237
		0.0304775
		0.0226889
		0.0260635
		0.0235058
		0.0272374
		0.021214
		0.0279881
		0.0259342
		0.0297116
		0.0240312
		0.0238235
		0.0249119
		0.024296
		0.0284169
		0.0256511
		0.02797
		0.0271201
		0.0273784
		0.0260894
		0.0251553
		0.0240451
		0.0296771
		0.0208506
		0.0278676
		0.0250489
		0.0292663
		0.0221559
		0.0222874
		0.024018
		0.0241683
		0.0226661
		0.0202411
		0.0175059
		0.0261633
		0.0203054
		0.0198963
		0.018315
		0.0165541
		0.0145296
		0.0162572
		0.0163041
		0.0171635
		0.01534
		0.0121081
		0.0197747
		0.022397
		0.0226253
		0.0231718
		0.0222714
		0.017703
		0.0136363
		0.0237382
		0.0184166
		0.0204462
		0.0254974
		0.018759
		0.0225095
		0.0162977
		0.0226687
		0.0153773
		0.0184034
		0.0194489
		0.0194377
		0.0176673
		0.0216746
		0.0243693
		0.0212283
		0.0167683
		0.0195701
		0.0252109
		0.0204409
		0.0167743
		0.0226107
		0.0209023
		0.018807
		0.0229962
		0.0219597
		0.0212303
		0.0236104
		0.0246734
		0.0246986
		0.0252743
		0.0214445
		0.0250846
		0.0167248
		0.0148832
		0.0172674
		0.0216109
		0.020863
		0.0185011
		0.0171636
		0.0181462
		0.020808
		0.019785
		0.0156007
		0.021449
		0.023012
		0.0193404
		0.0224702
		0.0159055
		0.0127948
		0.0174637
		0.0199089
		0.0233313
		0.0256944
		0.0205737
		0.0211059
		0.0192898
		0.0166232
		0.0194419
		0.015028
		0.0156977
		0.0166819
		0.0123374
		0.0124137
		0.0165882
		0.01766
		0.0180349
		0.0165661
		0.0175097
		0.0194524
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 3339.034120 %	 max error: 1914893.234847 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.011064 max data: 0.034506

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.005107 
	   

>>>> Computational cost: 300.301925 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  3.1517e-04 (3.81e+04%); (bound active) 
	Vm1    : 1.0536e-02  +-  1.5194e-03 (    14.4%); 
	h1     : 1.8736e+00  +-  6.7426e-01 (      36%); 
	Km1    : 3.5532e-02  +-  4.1024e-03 (    11.5%); 
	d1     : 3.0303e-02  +-  4.3694e-03 (    14.4%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -2.065967e-01	 4.023738e-02	 4.005645e-01	 7.516352e-02
	 -2.065967e-01	 1.000000e+00	 2.134343e-01	 -2.232179e-01	 9.538159e-01
	 4.023738e-02	 2.134343e-01	 1.000000e+00	 -2.389252e-01	 2.273921e-01
	 4.005645e-01	 -2.232179e-01	 -2.389252e-01	 1.000000e+00	 -1.764455e-01
	 7.516352e-02	 9.538159e-01	 2.273921e-01	 -1.764455e-01	 1.000000e+00
