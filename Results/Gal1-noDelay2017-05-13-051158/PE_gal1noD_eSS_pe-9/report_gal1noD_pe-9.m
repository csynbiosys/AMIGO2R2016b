   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-051158
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-051158\PE_gal1noD_eSS_pe-9 


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
		v_guess(2)=0.081628;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=2.995172;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.075325;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.035513;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.692e-03  1.376e-03  1.582e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 3240.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 649: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  2.885e+03  2.890e+03  2.895e+03  2.900e+03  2.905e+03  2.910e+03  2.915e+03  2.920e+03  2.925e+03  2.930e+03  2.935e+03  2.940e+03  2.945e+03  2.950e+03  2.955e+03  2.960e+03  2.965e+03  2.970e+03  2.975e+03  2.980e+03  2.985e+03  2.990e+03  2.995e+03  3.000e+03  3.005e+03  3.010e+03  3.015e+03  3.020e+03  3.025e+03  3.030e+03  3.035e+03  3.040e+03  3.045e+03  3.050e+03  3.055e+03  3.060e+03  3.065e+03  3.070e+03  3.075e+03  3.080e+03  3.085e+03  3.090e+03  3.095e+03  3.100e+03  3.105e+03  3.110e+03  3.115e+03  3.120e+03  3.125e+03  3.130e+03  3.135e+03  3.140e+03  3.145e+03  3.150e+03  3.155e+03  3.160e+03  3.165e+03  3.170e+03  3.175e+03  3.180e+03  3.185e+03  3.190e+03  3.195e+03  3.200e+03  3.205e+03  3.210e+03  3.215e+03  3.220e+03  3.225e+03  3.230e+03  3.235e+03  3.240e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.9904	  0.6837	  0.0480	  0.0487	  0.1347	  0.1318	  0.1287	  0.0059	  0.0044	  0.1297	  0.0067	  1.7590	  1.1713	  0.3010	  0.4464	  0.0075	  0.1343	  0.1342	  0.0085	  0.1322	  0.1352	  0.1385	  0.0062	  1.2391	  0.7313	  0.0472	  0.4702	  1.9894	  1.1942	  1.2581	  0.1540	  0.0097	  1.4143	  0.0452	  0.5267	  0.7799	  0.0463	  0.6451	  0.0477	  0.0474	  0.7696	  1.9647	  0.0144	  0.5347	  0.0057	  1.6354	  1.9793	  1.5371	  0.8662	  0.9196	  0.0466	  0.0444	  0.4191	  0.0095	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000	780.0000	840.0000	900.0000	960.0000	1020.0000	1080.0000	1140.0000	1200.0000	1260.0000	1320.0000	1380.0000	1440.0000	1500.0000	1560.0000	1620.0000	1680.0000	1740.0000	1800.0000	1860.0000	1920.0000	1980.0000	2040.0000	2100.0000	2160.0000	2220.0000	2280.0000	2340.0000	2400.0000	2460.0000	2520.0000	2580.0000	2640.0000	2700.0000	2760.0000	2820.0000	2880.0000	2940.0000	3000.0000	3060.0000	3120.0000	3180.0000	3240.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 649

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  1505.000  1510.000  1515.000  1520.000  1525.000  1530.000  1535.000  1540.000  1545.000  1550.000  1555.000  1560.000  1565.000  1570.000  1575.000  1580.000  1585.000  1590.000  1595.000  1600.000  1605.000  1610.000  1615.000  1620.000  1625.000  1630.000  1635.000  1640.000  1645.000  1650.000  1655.000  1660.000  1665.000  1670.000  1675.000  1680.000  1685.000  1690.000  1695.000  1700.000  1705.000  1710.000  1715.000  1720.000  1725.000  1730.000  1735.000  1740.000  1745.000  1750.000  1755.000  1760.000  1765.000  1770.000  1775.000  1780.000  1785.000  1790.000  1795.000  1800.000  1805.000  1810.000  1815.000  1820.000  1825.000  1830.000  1835.000  1840.000  1845.000  1850.000  1855.000  1860.000  1865.000  1870.000  1875.000  1880.000  1885.000  1890.000  1895.000  1900.000  1905.000  1910.000  1915.000  1920.000  1925.000  1930.000  1935.000  1940.000  1945.000  1950.000  1955.000  1960.000  1965.000  1970.000  1975.000  1980.000  1985.000  1990.000  1995.000  2000.000  2005.000  2010.000  2015.000  2020.000  2025.000  2030.000  2035.000  2040.000  2045.000  2050.000  2055.000  2060.000  2065.000  2070.000  2075.000  2080.000  2085.000  2090.000  2095.000  2100.000  2105.000  2110.000  2115.000  2120.000  2125.000  2130.000  2135.000  2140.000  2145.000  2150.000  2155.000  2160.000  2165.000  2170.000  2175.000  2180.000  2185.000  2190.000  2195.000  2200.000  2205.000  2210.000  2215.000  2220.000  2225.000  2230.000  2235.000  2240.000  2245.000  2250.000  2255.000  2260.000  2265.000  2270.000  2275.000  2280.000  2285.000  2290.000  2295.000  2300.000  2305.000  2310.000  2315.000  2320.000  2325.000  2330.000  2335.000  2340.000  2345.000  2350.000  2355.000  2360.000  2365.000  2370.000  2375.000  2380.000  2385.000  2390.000  2395.000  2400.000  2405.000  2410.000  2415.000  2420.000  2425.000  2430.000  2435.000  2440.000  2445.000  2450.000  2455.000  2460.000  2465.000  2470.000  2475.000  2480.000  2485.000  2490.000  2495.000  2500.000  2505.000  2510.000  2515.000  2520.000  2525.000  2530.000  2535.000  2540.000  2545.000  2550.000  2555.000  2560.000  2565.000  2570.000  2575.000  2580.000  2585.000  2590.000  2595.000  2600.000  2605.000  2610.000  2615.000  2620.000  2625.000  2630.000  2635.000  2640.000  2645.000  2650.000  2655.000  2660.000  2665.000  2670.000  2675.000  2680.000  2685.000  2690.000  2695.000  2700.000  2705.000  2710.000  2715.000  2720.000  2725.000  2730.000  2735.000  2740.000  2745.000  2750.000  2755.000  2760.000  2765.000  2770.000  2775.000  2780.000  2785.000  2790.000  2795.000  2800.000  2805.000  2810.000  2815.000  2820.000  2825.000  2830.000  2835.000  2840.000  2845.000  2850.000  2855.000  2860.000  2865.000  2870.000  2875.000  2880.000  2885.000  2890.000  2895.000  2900.000  2905.000  2910.000  2915.000  2920.000  2925.000  2930.000  2935.000  2940.000  2945.000  2950.000  2955.000  2960.000  2965.000  2970.000  2975.000  2980.000  2985.000  2990.000  2995.000  3000.000  3005.000  3010.000  3015.000  3020.000  3025.000  3030.000  3035.000  3040.000  3045.000  3050.000  3055.000  3060.000  3065.000  3070.000  3075.000  3080.000  3085.000  3090.000  3095.000  3100.000  3105.000  3110.000  3115.000  3120.000  3125.000  3130.000  3135.000  3140.000  3145.000  3150.000  3155.000  3160.000  3165.000  3170.000  3175.000  3180.000  3185.000  3190.000  3195.000  3200.000  3205.000  3210.000  3215.000  3220.000  3225.000  3230.000  3235.000  3240.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		-0.00308121
		0.000453803
		0.00306946
		0.00279381
		0.00351586
		0.00162192
		0.000783866
		0.000820747
		0.00522346
		0.00467046
		0.00324957
		0.00421728
		0.00242941
		0.0106038
		0.00729492
		0.00576578
		0.00370069
		0.00430182
		0.00585716
		0.00765361
		0.00675604
		0.0165834
		0.00548118
		0.0110456
		0.0102321
		0.00964277
		0.0114416
		0.0201074
		0.0129767
		0.018631
		0.0144662
		0.0145923
		0.0204439
		0.0235484
		0.0170309
		0.012898
		0.0234178
		0.0214184
		0.0186983
		0.0148006
		0.0231491
		0.0229919
		0.0289988
		0.0163023
		0.0218078
		0.0247553
		0.0237889
		0.0221578
		0.0202484
		0.025311
		0.0227745
		0.0227207
		0.019121
		0.0227306
		0.0209549
		0.0212433
		0.0265971
		0.0169114
		0.0173454
		0.025872
		0.0204276
		0.0211381
		0.0203533
		0.0203693
		0.0228139
		0.0286898
		0.0211573
		0.019316
		0.0220427
		0.0209754
		0.0274151
		0.0211184
		0.0201987
		0.0251874
		0.0280747
		0.0249787
		0.0256498
		0.0169916
		0.0256523
		0.025993
		0.0297597
		0.0338166
		0.0203525
		0.0243636
		0.0316849
		0.0276622
		0.0273134
		0.0240094
		0.0254438
		0.0272278
		0.0282236
		0.0263271
		0.0264114
		0.0248629
		0.0295572
		0.0260547
		0.0273544
		0.0236943
		0.0250563
		0.0241336
		0.019553
		0.024639
		0.0205769
		0.0179513
		0.0300621
		0.0225736
		0.0188349
		0.0175592
		0.0160502
		0.0140562
		0.0189785
		0.0119236
		0.0119132
		0.0112738
		0.0125474
		0.01556
		0.0129406
		0.0155634
		0.013988
		0.013286
		0.013961
		0.0110189
		0.0114967
		0.0139257
		0.0135865
		0.0214853
		0.011644
		0.0154092
		0.0148778
		0.00939832
		0.0156733
		0.0102882
		0.0139773
		0.0174621
		0.017106
		0.0171889
		0.0196195
		0.011477
		0.0138224
		0.0150924
		0.0119461
		0.0205499
		0.0141349
		0.0147254
		0.0113712
		0.0162743
		0.0226006
		0.0122402
		0.0174827
		0.0121228
		0.0102266
		0.0110187
		0.0252104
		0.019816
		0.0187037
		0.0149427
		0.0229218
		0.0176501
		0.019287
		0.0201751
		0.0230702
		0.0194039
		0.0236482
		0.0179817
		0.025236
		0.0276144
		0.0196874
		0.024093
		0.0240403
		0.0235841
		0.0307736
		0.0282821
		0.0196155
		0.0306817
		0.0267354
		0.0289975
		0.0251333
		0.020249
		0.0291055
		0.0238897
		0.0184274
		0.0324456
		0.0299618
		0.0313302
		0.0270277
		0.0215672
		0.0300416
		0.0276558
		0.026523
		0.027003
		0.028722
		0.0284912
		0.0303223
		0.0220892
		0.022672
		0.0265531
		0.0252742
		0.028556
		0.0175618
		0.0222412
		0.0232533
		0.020143
		0.0197335
		0.0202021
		0.0273723
		0.0241203
		0.0224158
		0.0268776
		0.0231052
		0.0221033
		0.0178986
		0.0221224
		0.0229072
		0.0202417
		0.024772
		0.0191273
		0.0253529
		0.0196386
		0.0261933
		0.0219494
		0.0203266
		0.021035
		0.0204202
		0.0253912
		0.0192763
		0.0237656
		0.0235743
		0.0240868
		0.0237072
		0.0177636
		0.0276292
		0.0200301
		0.0208055
		0.0177285
		0.0195621
		0.0155806
		0.0185297
		0.0171795
		0.0181161
		0.0172017
		0.0217013
		0.0223369
		0.0152371
		0.0214573
		0.0213371
		0.0199192
		0.0226306
		0.0171551
		0.0212239
		0.0174426
		0.0117192
		0.0178852
		0.0174768
		0.0235447
		0.0203593
		0.0281574
		0.0186866
		0.0217423
		0.022467
		0.0193922
		0.0232964
		0.0248137
		0.0246616
		0.0328375
		0.0264034
		0.026538
		0.0221095
		0.0200763
		0.0210712
		0.0281288
		0.0287096
		0.0296412
		0.0181022
		0.0237606
		0.0286335
		0.0268668
		0.0265414
		0.0258294
		0.0214224
		0.0244195
		0.0223956
		0.0220968
		0.0204994
		0.0212383
		0.0223075
		0.0236488
		0.0156855
		0.0205389
		0.0227654
		0.0245065
		0.0272374
		0.0241592
		0.0213616
		0.0255609
		0.0228844
		0.0183519
		0.0204122
		0.0218328
		0.0197778
		0.0210181
		0.0230545
		0.0261915
		0.0193237
		0.0172073
		0.0263003
		0.0237646
		0.0220024
		0.024438
		0.0238297
		0.0271563
		0.0245622
		0.0243979
		0.0252646
		0.0225161
		0.0247492
		0.0232344
		0.0229578
		0.0230255
		0.0280312
		0.0216503
		0.0303311
		0.0216117
		0.0229735
		0.0295526
		0.023957
		0.0246603
		0.0316242
		0.0247765
		0.0236354
		0.0318237
		0.0299615
		0.0276139
		0.0293305
		0.0281347
		0.0310133
		0.0278479
		0.023937
		0.0228029
		0.0281861
		0.0255341
		0.0269839
		0.0318164
		0.0304769
		0.0267478
		0.0253866
		0.0252109
		0.0271987
		0.0290599
		0.0301051
		0.0278546
		0.029002
		0.02791
		0.021528
		0.0350087
		0.0302353
		0.0337227
		0.0320864
		0.0357729
		0.0334977
		0.0295865
		0.0290225
		0.0276391
		0.0282148
		0.028463
		0.0342926
		0.0357285
		0.0256929
		0.0380659
		0.0299172
		0.0297204
		0.0321425
		0.029248
		0.0299665
		0.0362276
		0.0351117
		0.0275377
		0.0293675
		0.0358403
		0.0323528
		0.0257999
		0.031602
		0.0286736
		0.0286351
		0.0275096
		0.0266015
		0.027441
		0.0200544
		0.0203263
		0.0269238
		0.0244392
		0.0215139
		0.0275629
		0.0209155
		0.0246876
		0.0213361
		0.0248211
		0.021395
		0.0222301
		0.0293908
		0.0222004
		0.0270243
		0.0220357
		0.0196986
		0.0221027
		0.023276
		0.0219001
		0.0260899
		0.023027
		0.0229649
		0.0242341
		0.0248704
		0.0235356
		0.0235626
		0.024366
		0.0199519
		0.0219992
		0.0191207
		0.026449
		0.0198109
		0.0217075
		0.0158834
		0.0235771
		0.0207171
		0.0190367
		0.0185872
		0.0235798
		0.0205761
		0.0280239
		0.0195404
		0.0219533
		0.023982
		0.0243659
		0.0289809
		0.02326
		0.0225715
		0.027061
		0.0208995
		0.0243742
		0.028309
		0.0242482
		0.0233739
		0.0264616
		0.02212
		0.0245431
		0.0318267
		0.0295887
		0.0261715
		0.0255732
		0.0299496
		0.0275612
		0.0299402
		0.0237901
		0.021418
		0.021406
		0.0255467
		0.026064
		0.0241586
		0.0278584
		0.0260557
		0.0240628
		0.0307282
		0.032436
		0.0279301
		0.0273241
		0.0286798
		0.0274604
		0.0289399
		0.0275408
		0.0272743
		0.0273191
		0.0212087
		0.029934
		0.0275413
		0.0281719
		0.0257749
		0.0253767
		0.0313227
		0.0211001
		0.0273379
		0.0269326
		0.0236447
		0.0255661
		0.0228237
		0.0233231
		0.0219088
		0.0283408
		0.0276661
		0.0203736
		0.0236605
		0.0200247
		0.0235118
		0.026536
		0.0258397
		0.0273832
		0.0238951
		0.0218833
		0.0248626
		0.0251539
		0.0272863
		0.0327523
		0.027955
		0.0314625
		0.0251834
		0.0250964
		0.0221102
		0.026288
		0.0260506
		0.0229857
		0.0240788
		0.0265239
		0.0275586
		0.0311172
		0.0241883
		0.0256032
		0.023942
		0.0209349
		0.0288248
		0.0246896
		0.0241161
		0.03003
		0.0225658
		0.0271092
		0.0217934
		0.0235829
		0.019278
		0.0227397
		0.0236136
		0.0224909
		0.0208512
		0.0243418
		0.0240359
		0.0242193
		0.0224867
		0.024765
		0.0259518
		0.0293168
		0.022093
		0.0206807
		0.0239308
		0.0177747
		0.0185219
		0.0159206
		0.0233431
		0.0185293
		0.0215648
		0.0191574
		0.0174582
		0.0163116
		0.0162303
		0.0156003
		0.0208497
		0.0196698
		0.0160208
		0.0205937
		0.01713
		0.0186759
		0.0176091
		0.0235006
		0.0224255
		0.0249455
		0.0179647
		0.026081
		0.0202188
		0.0215374
		0.0202504
		0.0228962
		0.0249213
		0.0224118
		0.0260885
		0.0195221
		0.0234953
		0.0241039
		0.0307213
		0.0243175
		0.02107
		0.0237543
		0.0215126
		0.0242233
		0.0303896
		0.0283765
		0.0276087
		0.0219688
		0.0225958
		0.0246302
		0.0269408
		0.0301841
		0.0267402
		0.0261703
		0.0271551
		0.027859
		0.0283746
		0.0288212
		0.0303473
		0.0257145
		0.028633
		0.0306471
		0.0220957
		0.0287325
		0.0286824
		0.0290365
		0.0294538
		0.0284825
		0.0350244
		0.0292303
		0.0334137
		0.0351539
		0.0280601
		0.0304994
		0.0322122
		0.0289304
		0.0323557
		0.0309727
		0.0292685
		0.0298605
		0.0368193
		0.0248896
		0.0251966
		0.0277504
		0.0335458
		0.0313479
		0.0263729
		0.0299328
		0.0273122
		0.0283947
		0.02656
		0.0295594
		0.0248401
		0.0220869
		0.0237627
		0.024537
		0.0269811
		0.0191847
		0.027349
		0.0259042
		0.0284747
		0.0239686
		0.0182088
		0.0236975
		0.0268016
		0.0232249
		0.0277527
		0.0229542
		0.0273277
		0.0228027
		0.0259155
		0.0306049
		0.0233621
		0.0221837
		0.0162986
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 12.691783 %	 max error: 105.133848 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009676 max data: 0.038066

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.006298 
	   

>>>> Computational cost: 300.270725 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2799e-05  +-  5.0847e-04 (     614%); (bound active) 
	Vm1    : 9.6412e-03  +-  1.4781e-03 (    15.3%); 
	h1     : 1.9779e+00  +-  4.6371e-01 (    23.4%); 
	Km1    : 3.7166e-02  +-  4.9223e-03 (    13.2%); 
	d1     : 2.8387e-02  +-  4.7237e-03 (    16.6%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -5.375801e-02	 1.083929e-01	 1.784128e-01	 3.460898e-01
	 -5.375801e-02	 1.000000e+00	 -1.099501e-01	 -1.949896e-01	 9.111983e-01
	 1.083929e-01	 -1.099501e-01	 1.000000e+00	 5.988384e-01	 -6.215079e-02
	 1.784128e-01	 -1.949896e-01	 5.988384e-01	 1.000000e+00	 -1.884472e-01
	 3.460898e-01	 9.111983e-01	 -6.215079e-02	 -1.884472e-01	 1.000000e+00
