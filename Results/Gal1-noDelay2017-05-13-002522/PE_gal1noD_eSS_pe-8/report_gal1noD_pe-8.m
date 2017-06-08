   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-002522
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-002522\PE_gal1noD_eSS_pe-8 


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

		v_guess(1)=0.000052;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.001934;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.061396;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.174297;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.101433;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[5.124e-04  4.166e-04  4.791e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 2880.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 577: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.5106	  0.6034	  0.0000	  1.9427	  0.5410	  0.0000	  0.6193	  0.0000	  0.5886	  0.8819	  0.3943	  0.3265	  0.3934	  0.5389	  0.3723	  0.3835	  0.4631	  0.3959	  0.4053	  0.4480	  0.0000	  1.4340	  0.0533	  1.9997	  0.0454	  1.9740	  1.8880	  0.0000	  0.0000	  0.0000	  1.6335	  0.9968	  1.9992	  0.0469	  0.0521	  1.9998	  1.9985	  0.0511	  0.0523	  2.0000	  0.0509	  0.0519	  0.0506	  2.0000	  0.0564	  1.2070	  0.4315	
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
		-0.000737381
		-0.003053
		4.15177e-05
		0.00056469
		-0.00322175
		0.0002779
		-0.00388297
		0.00490207
		0.000878052
		0.00243959
		-0.000678045
		0.00170543
		0.00112435
		-0.00411943
		0.0018177
		0.00401738
		-0.00218627
		0.00517246
		-0.0001191
		-0.00131238
		-0.000417302
		0.00165425
		0.00471442
		0.00297471
		0.00431105
		0.00301653
		0.0034471
		-0.00451971
		0.00863294
		0.00237013
		0.00523093
		0.00651625
		0.00723675
		0.0108359
		0.0121874
		0.0155441
		0.0130344
		0.015116
		0.012245
		0.0102853
		0.0119218
		0.0218096
		0.0169911
		0.0172757
		0.0197328
		0.01536
		0.0147055
		0.0205732
		0.00970694
		0.0166565
		0.0129081
		0.0218782
		0.019054
		0.0133475
		0.0162802
		0.0182906
		0.0192295
		0.0136968
		0.00994796
		0.0161879
		0.0211782
		0.0147205
		0.0159246
		0.0192
		0.016257
		0.0231841
		0.0183978
		0.0202663
		0.0172373
		0.0199297
		0.0240324
		0.0267763
		0.0226121
		0.0175184
		0.0183082
		0.0200479
		0.0269712
		0.0201396
		0.01964
		0.0188653
		0.0240949
		0.0225927
		0.0210995
		0.0210071
		0.0220178
		0.0177784
		0.0254348
		0.0163264
		0.0256467
		0.0212536
		0.028972
		0.0219475
		0.0209555
		0.0167813
		0.0163878
		0.0202935
		0.0181072
		0.0187681
		0.0168419
		0.0180856
		0.0213206
		0.0201797
		0.0221692
		0.0156833
		0.0235598
		0.0218223
		0.0150717
		0.0196735
		0.0187259
		0.0245732
		0.0250445
		0.0228426
		0.0100109
		0.0208241
		0.0203929
		0.0165374
		0.0136402
		0.0144402
		0.0176989
		0.0155967
		0.0200817
		0.0187185
		0.0184968
		0.015751
		0.0183755
		0.0159227
		0.0221291
		0.0202339
		0.0180524
		0.0207188
		0.0191465
		0.0197686
		0.0236711
		0.0279012
		0.026287
		0.0213823
		0.0233316
		0.0190373
		0.0230032
		0.0276983
		0.0240628
		0.0191626
		0.0205748
		0.0242439
		0.0257785
		0.0237808
		0.0234582
		0.0236383
		0.0271803
		0.0248645
		0.0228862
		0.0252557
		0.023029
		0.0256598
		0.0322451
		0.0305882
		0.0266891
		0.0295157
		0.0295972
		0.0297208
		0.0337288
		0.0270668
		0.0319595
		0.0256588
		0.0283421
		0.0279671
		0.0259189
		0.0275652
		0.0281805
		0.0254945
		0.0301297
		0.0228718
		0.0290829
		0.0254473
		0.0260196
		0.0281155
		0.0349052
		0.0265597
		0.0355523
		0.0311444
		0.0309684
		0.0302909
		0.0296925
		0.0295591
		0.0254005
		0.0312002
		0.0318004
		0.0325562
		0.0288068
		0.0288356
		0.023384
		0.0292976
		0.0331323
		0.0231232
		0.0365539
		0.0242782
		0.0310275
		0.0280709
		0.029485
		0.0272848
		0.0261428
		0.035495
		0.0255266
		0.0282248
		0.0308396
		0.0349187
		0.0301236
		0.028752
		0.0257573
		0.0269803
		0.0303062
		0.0292346
		0.0259227
		0.0329291
		0.032913
		0.0318432
		0.0234991
		0.0341225
		0.0331779
		0.0333876
		0.0333725
		0.0302707
		0.0355127
		0.0356282
		0.0337695
		0.0340838
		0.0295996
		0.0296875
		0.0287873
		0.0287137
		0.0284531
		0.0354781
		0.0310745
		0.035369
		0.0323626
		0.0339291
		0.0366623
		0.028384
		0.0345781
		0.0313729
		0.0358132
		0.0367214
		0.0275777
		0.0303807
		0.0359567
		0.0392971
		0.0329781
		0.03911
		0.0354429
		0.0313279
		0.0287751
		0.0344402
		0.0275955
		0.0296749
		0.033918
		0.0298699
		0.037009
		0.02604
		0.0323648
		0.0306735
		0.0319599
		0.0316511
		0.032528
		0.0245211
		0.0335854
		0.0231716
		0.0259409
		0.0254778
		0.0240328
		0.0226864
		0.0150657
		0.0253962
		0.0239246
		0.0240047
		0.0207722
		0.0240669
		0.0206026
		0.022897
		0.0242616
		0.0209051
		0.018132
		0.0209217
		0.0206387
		0.0194806
		0.0224445
		0.0248983
		0.024228
		0.0218187
		0.0179945
		0.0292144
		0.0296392
		0.0288196
		0.0245853
		0.0244631
		0.0241007
		0.024036
		0.0239596
		0.0272596
		0.0277647
		0.0210749
		0.026515
		0.0200568
		0.0255149
		0.0262499
		0.0237884
		0.0239176
		0.0232519
		0.0270287
		0.0193495
		0.0288773
		0.0256657
		0.0302067
		0.0214835
		0.0265787
		0.0260949
		0.0214154
		0.0231677
		0.0255547
		0.0242106
		0.0264132
		0.0245119
		0.0220548
		0.0248633
		0.0238887
		0.0311873
		0.0244188
		0.0266253
		0.0236578
		0.0255262
		0.0258261
		0.0239109
		0.028669
		0.0259276
		0.0229425
		0.025384
		0.0300345
		0.0278996
		0.0283571
		0.0252938
		0.0238448
		0.0294707
		0.0268726
		0.0189034
		0.0291603
		0.0254659
		0.0329659
		0.0295697
		0.0274845
		0.0271997
		0.0193294
		0.0166106
		0.0230183
		0.0235597
		0.0250653
		0.0215782
		0.021635
		0.0214297
		0.0206544
		0.0296296
		0.0249806
		0.021032
		0.0211235
		0.0197548
		0.00917089
		0.0167426
		0.0139679
		0.0142995
		0.0193673
		0.0127419
		0.0079451
		0.00869157
		0.00765296
		0.0138273
		0.00916822
		0.00666165
		0.00935755
		0.00990092
		0.0112647
		0.00641898
		0.0069898
		0.00577919
		0.0112572
		0.00924446
		0.00276192
		0.0141561
		0.00875264
		0.00945967
		0.0107736
		0.0150598
		0.00722696
		0.010772
		0.0122087
		0.016526
		0.0183797
		0.0142702
		0.019183
		0.0156904
		0.0155497
		0.0141885
		0.0158843
		0.0180943
		0.0196236
		0.0168528
		0.0183091
		0.0245574
		0.0206602
		0.0168853
		0.024654
		0.0189627
		0.0244537
		0.024078
		0.0213707
		0.0272114
		0.0294754
		0.0309905
		0.0217723
		0.0215279
		0.025507
		0.0248309
		0.0198101
		0.028644
		0.0260819
		0.0193945
		0.0252151
		0.0278159
		0.0231656
		0.0211452
		0.0243421
		0.0252486
		0.0271768
		0.0218817
		0.0273894
		0.0219155
		0.0202836
		0.021657
		0.0216456
		0.0261783
		0.0187964
		0.0200674
		0.0233828
		0.0233801
		0.0199036
		0.0202363
		0.0244224
		0.0206187
		0.0230449
		0.0221312
		0.0251555
		0.0253774
		0.0270349
		0.0270244
		0.0271624
		0.020488
		0.0265187
		0.0248609
		0.0223861
		0.0312231
		0.0252722
		0.0260515
		0.0262917
		0.0264312
		0.0273024
		0.028779
		0.0274124
		0.0267275
		0.0253808
		0.0258816
		0.030194
		0.0229713
		0.0248188
		0.0236513
		0.0300177
		0.027154
		0.0279061
		0.0267585
		0.0266296
		0.0273582
		0.019407
		0.0320415
		0.0270737
		0.0276507
		0.0273258
		0.0247077
		0.0290383
		0.0244914
		0.0286009
		0.0283852
		0.0244534
		0.0276101
		0.0246766
		0.0253211
		0.0258656
		0.0289435
		0.0197532
		0.0227931
		0.0279646
		0.0246547
		0.0249801
		0.0205495
		0.0283287
		0.0233597
		0.0292514
		0.0226582
		0.0293671
		0.0215711
		0.0217824
		0.0263265
		0.0213039
		0.0227204
		0.0285792
		0.0240889
		0.0295635
		0.0249872
		0.0256729
		0.0242908
		0.0208942
		0.0267005
		0.0297402
		0.0264161
		0.0228287
		0.0241659
		0.0217302
		0.0230297
		0.0187696
		0.0214253
		0.0247785
		0.0233737
		0.0246908
		0.0195231
		0.0236751
		0.0194781
		0.022756
		0.0230611
		0.0246215
		0.0258343
		0.0244754
		0.0258571
		0.022304
		0.0229858
		0.0260513
		0.0220983
		0.0205635
		0.0266954
		0.0260077
		0.0232526
		0.0215304
		0.0268014
		0.0232871
		0.0259763
		0.0294299
		0.0278755
		0.0253826
		0.0254957
		0.0254945
		0.0246379
		0.0253539
		0.0312926
		0.018733
		0.0246162
		0.0251453
		0.0210526
		0.0223935
		0.0271414
		0.0236649
		0.0285134
		0.0227557
		0.0233881
		0.0243819
		0.0319348
		0.0268304
		0.0290937
		0.0256641
		0.0278155
		0.0293624
		0.0187094
		0.0305175
		0.0246305
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 17.744115 %	 max error: 714.173147 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010016 max data: 0.039297

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.005747 
	   

>>>> Computational cost: 300.208324 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  4.6547e-04 (     562%); (bound active) 
	Vm1    : 9.7282e-03  +-  1.6300e-03 (    16.8%); 
	h1     : 1.3959e+00  +-  8.1635e-01 (    58.5%); 
	Km1    : 3.4842e-02  +-  4.6545e-03 (    13.4%); 
	d1     : 2.8372e-02  +-  4.6701e-03 (    16.5%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -3.007863e-01	 5.436533e-01	 2.854494e-01	 2.151095e-01
	 -3.007863e-01	 1.000000e+00	 -2.650459e-01	 -2.006602e-01	 8.363633e-01
	 5.436533e-01	 -2.650459e-01	 1.000000e+00	 5.222516e-01	 2.037645e-01
	 2.854494e-01	 -2.006602e-01	 5.222516e-01	 1.000000e+00	 -2.185324e-02
	 2.151095e-01	 8.363633e-01	 2.037645e-01	 -2.185324e-02	 1.000000e+00
