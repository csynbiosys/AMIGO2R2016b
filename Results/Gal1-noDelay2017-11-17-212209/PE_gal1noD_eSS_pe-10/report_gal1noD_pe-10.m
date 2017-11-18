   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 17-Nov-2017
Problem folder:	 Results\Gal1-noDelay2017-11-17-212209
Results folder in problem folder:	 Results\Gal1-noDelay2017-11-17-212209\PE_gal1noD_eSS_pe-10 


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

		v_guess(1)=0.041400;  v_min(1)=0.004140; v_max(1)=0.414000;
		v_guess(2)=1.890000;  v_min(2)=0.189000; v_max(2)=5.000000;
		v_guess(3)=0.036800;  v_min(3)=0.003680; v_max(3)=0.368000;
		v_guess(4)=0.030000;  v_min(4)=0.003000; v_max(4)=0.300000;



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

--> Number of states: 4


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.00003     0.04140     1.89000     0.03680     0.03000     0.01000     0.01000     0.00200     0.00230  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.380e+00  1.150e+00  1.000e+00  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 3000.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 601: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  2.885e+03  2.890e+03  2.895e+03  2.900e+03  2.905e+03  2.910e+03  2.915e+03  2.920e+03  2.925e+03  2.930e+03  2.935e+03  2.940e+03  2.945e+03  2.950e+03  2.955e+03  2.960e+03  2.965e+03  2.970e+03  2.975e+03  2.980e+03  2.985e+03  2.990e+03  2.995e+03  3.000e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0179	  0.6311	
			Control switching times: 	  0.0000	1500.0000	3000.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 601

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  1505.000  1510.000  1515.000  1520.000  1525.000  1530.000  1535.000  1540.000  1545.000  1550.000  1555.000  1560.000  1565.000  1570.000  1575.000  1580.000  1585.000  1590.000  1595.000  1600.000  1605.000  1610.000  1615.000  1620.000  1625.000  1630.000  1635.000  1640.000  1645.000  1650.000  1655.000  1660.000  1665.000  1670.000  1675.000  1680.000  1685.000  1690.000  1695.000  1700.000  1705.000  1710.000  1715.000  1720.000  1725.000  1730.000  1735.000  1740.000  1745.000  1750.000  1755.000  1760.000  1765.000  1770.000  1775.000  1780.000  1785.000  1790.000  1795.000  1800.000  1805.000  1810.000  1815.000  1820.000  1825.000  1830.000  1835.000  1840.000  1845.000  1850.000  1855.000  1860.000  1865.000  1870.000  1875.000  1880.000  1885.000  1890.000  1895.000  1900.000  1905.000  1910.000  1915.000  1920.000  1925.000  1930.000  1935.000  1940.000  1945.000  1950.000  1955.000  1960.000  1965.000  1970.000  1975.000  1980.000  1985.000  1990.000  1995.000  2000.000  2005.000  2010.000  2015.000  2020.000  2025.000  2030.000  2035.000  2040.000  2045.000  2050.000  2055.000  2060.000  2065.000  2070.000  2075.000  2080.000  2085.000  2090.000  2095.000  2100.000  2105.000  2110.000  2115.000  2120.000  2125.000  2130.000  2135.000  2140.000  2145.000  2150.000  2155.000  2160.000  2165.000  2170.000  2175.000  2180.000  2185.000  2190.000  2195.000  2200.000  2205.000  2210.000  2215.000  2220.000  2225.000  2230.000  2235.000  2240.000  2245.000  2250.000  2255.000  2260.000  2265.000  2270.000  2275.000  2280.000  2285.000  2290.000  2295.000  2300.000  2305.000  2310.000  2315.000  2320.000  2325.000  2330.000  2335.000  2340.000  2345.000  2350.000  2355.000  2360.000  2365.000  2370.000  2375.000  2380.000  2385.000  2390.000  2395.000  2400.000  2405.000  2410.000  2415.000  2420.000  2425.000  2430.000  2435.000  2440.000  2445.000  2450.000  2455.000  2460.000  2465.000  2470.000  2475.000  2480.000  2485.000  2490.000  2495.000  2500.000  2505.000  2510.000  2515.000  2520.000  2525.000  2530.000  2535.000  2540.000  2545.000  2550.000  2555.000  2560.000  2565.000  2570.000  2575.000  2580.000  2585.000  2590.000  2595.000  2600.000  2605.000  2610.000  2615.000  2620.000  2625.000  2630.000  2635.000  2640.000  2645.000  2650.000  2655.000  2660.000  2665.000  2670.000  2675.000  2680.000  2685.000  2690.000  2695.000  2700.000  2705.000  2710.000  2715.000  2720.000  2725.000  2730.000  2735.000  2740.000  2745.000  2750.000  2755.000  2760.000  2765.000  2770.000  2775.000  2780.000  2785.000  2790.000  2795.000  2800.000  2805.000  2810.000  2815.000  2820.000  2825.000  2830.000  2835.000  2840.000  2845.000  2850.000  2855.000  2860.000  2865.000  2870.000  2875.000  2880.000  2885.000  2890.000  2895.000  2900.000  2905.000  2910.000  2915.000  2920.000  2925.000  2930.000  2935.000  2940.000  2945.000  2950.000  2955.000  2960.000  2965.000  2970.000  2975.000  2980.000  2985.000  2990.000  2995.000  3000.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		0.956122
		0.854601
		0.969827
		0.878199
		1.00129
		0.955849
		1.17116
		0.953389
		1.03036
		1.10141
		1.04995
		0.856894
		1.11795
		1.01599
		0.986741
		0.842182
		0.955138
		0.937801
		0.791019
		0.996116
		0.991293
		0.988764
		1.09238
		1.0368
		0.82412
		0.855535
		1.05406
		0.86191
		0.857368
		0.8069
		0.955515
		0.944566
		0.872808
		0.906982
		0.933366
		0.953466
		0.95478
		0.780322
		0.946978
		0.820127
		0.884759
		0.956265
		0.864947
		0.70894
		0.796517
		0.755515
		0.780239
		0.772503
		0.808429
		0.898406
		0.841958
		1.0019
		0.760074
		0.846074
		0.783734
		0.714223
		0.794605
		0.741203
		0.773955
		0.64119
		0.761935
		0.771145
		0.818647
		0.760019
		0.809295
		0.784005
		0.629569
		0.705943
		0.703203
		0.694614
		0.623602
		0.819176
		0.690783
		0.584261
		0.620548
		0.694427
		0.654237
		0.77618
		0.546184
		0.673658
		0.608428
		0.561395
		0.645015
		0.569255
		0.45206
		0.562496
		0.44345
		0.559758
		0.803321
		0.772427
		0.566357
		0.566392
		0.731347
		0.6205
		0.46992
		0.652583
		0.547438
		0.599737
		0.613808
		0.522796
		0.705873
		0.556758
		0.377491
		0.529464
		0.514412
		0.539168
		0.422199
		0.383082
		0.479977
		0.491441
		0.397498
		0.707912
		0.480891
		0.644378
		0.373705
		0.560431
		0.489624
		0.618943
		0.599855
		0.529536
		0.448481
		0.489944
		0.315238
		0.493611
		0.362255
		0.299236
		0.395679
		0.467998
		0.500833
		0.379682
		0.379701
		0.392273
		0.516893
		0.458857
		0.521016
		0.59217
		0.501634
		0.439378
		0.404034
		0.346283
		0.357363
		0.448424
		0.433393
		0.388648
		0.331725
		0.369837
		0.377468
		0.34869
		0.211431
		0.199052
		0.405938
		0.340995
		0.522524
		0.44703
		0.0632268
		0.464807
		0.274609
		0.417327
		0.487298
		0.42305
		0.342047
		0.474894
		0.217093
		0.338466
		0.372359
		0.107647
		0.339795
		0.522931
		0.318032
		0.312561
		0.338547
		0.293928
		0.287725
		0.299175
		0.350346
		0.490328
		0.329596
		0.315723
		0.363448
		0.299917
		0.379894
		0.233678
		0.489503
		0.346471
		0.407225
		0.0868233
		0.321832
		0.358022
		0.221732
		0.367902
		0.490996
		0.253171
		0.26916
		0.236491
		0.330949
		0.278036
		0.201506
		0.408243
		0.271104
		0.330512
		0.299127
		0.239702
		0.201918
		0.26505
		0.300713
		0.245537
		0.417306
		0.367906
		0.18985
		0.344387
		0.308357
		0.339108
		0.384824
		0.196669
		0.622664
		0.274803
		0.247114
		0.161298
		0.304792
		0.478942
		0.287218
		0.432472
		0.178574
		0.395869
		0.143459
		0.437073
		0.386927
		0.2965
		0.31648
		0.241999
		0.311448
		0.349471
		0.213529
		0.27734
		0.320379
		0.258964
		0.241876
		0.416157
		0.207026
		0.401864
		0.246507
		0.272728
		0.0950708
		0.126622
		0.117722
		0.194236
		0.29332
		0.387251
		0.300837
		0.358519
		0.445022
		0.107664
		0.372276
		0.315211
		0.216963
		0.0975733
		0.147017
		0.261775
		0.3048
		0.25685
		0.320302
		0.385047
		0.343104
		0.352146
		0.225093
		0.057889
		0.182817
		0.257146
		0.280666
		0.135382
		0.185029
		0.416919
		0.226202
		0.127326
		0.199925
		0.20036
		0.0327707
		0.285216
		0.247305
		0.19186
		0.15907
		0.211374
		0.0583678
		0.270961
		0.222291
		0.0980794
		0.127682
		0.300647
		0.346618
		0.245968
		0.35794
		0.346845
		0.223423
		0.181455
		0.31109
		0.318374
		0.213704
		0.243441
		0.225408
		0.20411
		0.503459
		0.357729
		0.22376
		0.306213
		0.145848
		0.328044
		0.00556877
		0.272908
		0.357949
		0.088385
		0.282466
		0.241763
		0.26473
		0.237264
		0.122349
		0.168534
		0.260256
		0.285124
		0.40115
		0.315498
		0.300973
		0.299497
		0.433233
		0.179611
		0.406069
		0.317955
		0.173911
		0.318424
		0.299107
		0.335858
		0.220149
		0.288308
		0.259699
		0.171821
		0.240409
		0.377864
		0.277696
		0.256579
		0.278156
		0.433216
		0.27135
		0.430413
		0.405096
		0.334879
		0.419815
		0.41933
		0.417874
		0.444078
		0.458277
		0.430101
		0.501409
		0.364273
		0.441136
		0.562015
		0.49395
		0.416728
		0.522765
		0.60547
		0.460656
		0.343676
		0.53201
		0.389062
		0.570068
		0.744178
		0.427839
		0.621412
		0.344952
		0.455366
		0.622569
		0.473972
		0.813166
		0.508996
		0.738218
		0.588119
		0.632326
		0.596487
		0.758968
		0.534033
		0.509441
		0.565367
		0.640486
		0.72882
		0.537249
		0.620033
		0.667732
		0.577389
		0.797425
		0.575369
		0.606984
		0.649632
		0.753766
		0.597068
		0.562946
		0.640863
		0.780258
		0.783687
		0.694398
		0.587335
		0.650487
		0.618138
		0.725883
		0.527938
		0.835826
		0.56124
		0.594156
		0.647531
		0.644059
		0.78044
		0.843155
		0.686086
		0.575681
		0.600269
		0.777023
		0.785859
		0.693786
		0.625589
		0.736286
		0.790716
		0.61143
		0.766155
		0.862428
		0.841033
		0.815632
		0.814989
		0.81307
		0.77049
		0.711365
		0.673495
		0.764349
		0.76675
		0.961906
		0.765152
		0.955506
		0.883546
		0.855391
		0.817662
		0.640901
		0.497633
		0.82111
		0.758717
		0.88491
		0.77706
		0.72906
		0.715384
		0.907658
		0.866514
		0.849149
		0.768979
		0.85093
		0.698246
		0.975526
		0.885987
		0.751979
		0.868103
		0.908719
		0.833871
		0.696893
		0.601906
		0.772503
		0.940607
		1.00472
		0.8549
		0.838153
		0.6588
		0.863042
		0.714785
		0.938828
		0.935626
		0.742392
		0.839346
		1.04917
		0.977747
		0.851789
		0.926998
		1.02029
		0.845915
		0.904523
		0.837936
		0.879918
		0.939848
		0.660624
		0.769854
		1.05431
		0.910537
		0.897325
		0.897177
		0.707704
		0.675113
		1.11404
		0.85021
		0.846858
		0.90728
		0.787384
		0.957713
		1.0527
		0.920463
		0.941194
		0.858208
		0.865187
		0.936132
		1.03567
		0.764074
		0.751751
		0.875955
		0.839127
		1.00263
		0.974884
		0.882523
		1.1803
		0.818608
		0.831696
		0.754748
		0.673821
		0.796354
		0.881129
		0.950774
		0.902927
		0.850157
		0.790194
		0.994188
		0.903639
		0.960294
		0.937851
		1.00353
		0.843346
		0.838679
		1.09868
		1.02766
		1.04653
		1.11543
		0.972185
		0.806436
		1.09864
		1.04227
		0.875099
		1.03066
		1.00894
		0.694193
		0.945768
		0.793365
		1.01078
		1.18134
		1.01931
		0.939248
		0.855707
		0.777376
		0.919629
		0.769535
		0.825661
		0.817114
		0.793931
		0.802585
		0.883634
		0.794057
		0.979201
		0.944078
		0.862104
		0.894071
		0.98145
		0.838037
		0.915959
		0.921233
		0.94606
		0.78398
		0.853917
		0.885032
		0.870426
		0.990426
		0.998114
		1.04322
		1.05393
		1.16756
		1.07664
		0.948488
		1.12035
		0.960265
		0.923745
		0.988343
		0.851879
		1.01656
		0.967601
		1.00236
		0.872766
		0.982787
		0.882927
		1.06697
		0.974752
		0.89618
		0.994485
		0.914715
		0.83831
		1.11318
		1.05313
		0.852424
		0.847795
		0.917552
		0.914631
		0.936521
		0.854373
		0.879436
		1.14724
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 27.335562 %	 max error: 4149.968636 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.328652 max data: 1.181342

--------------------------------------------------------------------------	   

>>>> Best objective function: 5.723498 
	   

>>>> Computational cost: 300.192724 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Vm1    : 6.7026e-02  +-  2.8558e+04 (4.26e+07%); 
	h1     : 6.8278e-01  +-  1.7818e+05 (2.61e+07%); 
	Km1    : 3.0765e-01  +-  4.4786e+05 (1.46e+08%); 
	d1     : 3.0150e-02  +-  1.2761e-02 (    42.3%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.000000e+00	 1.000000e+00	 2.658232e-03
	 -1.000000e+00	 1.000000e+00	 -1.000000e+00	 -2.657289e-03
	 1.000000e+00	 -1.000000e+00	 1.000000e+00	 2.657251e-03
	 2.658232e-03	 -2.657289e-03	 2.657251e-03	 1.000000e+00
