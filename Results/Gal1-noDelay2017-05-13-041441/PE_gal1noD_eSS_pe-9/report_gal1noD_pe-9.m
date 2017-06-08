   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-041441
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-041441\PE_gal1noD_eSS_pe-9 


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
		v_guess(2)=0.009075;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.237581;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.042302;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.168431;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.124e-05  2.540e-05  2.921e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 3240.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 649: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  2.885e+03  2.890e+03  2.895e+03  2.900e+03  2.905e+03  2.910e+03  2.915e+03  2.920e+03  2.925e+03  2.930e+03  2.935e+03  2.940e+03  2.945e+03  2.950e+03  2.955e+03  2.960e+03  2.965e+03  2.970e+03  2.975e+03  2.980e+03  2.985e+03  2.990e+03  2.995e+03  3.000e+03  3.005e+03  3.010e+03  3.015e+03  3.020e+03  3.025e+03  3.030e+03  3.035e+03  3.040e+03  3.045e+03  3.050e+03  3.055e+03  3.060e+03  3.065e+03  3.070e+03  3.075e+03  3.080e+03  3.085e+03  3.090e+03  3.095e+03  3.100e+03  3.105e+03  3.110e+03  3.115e+03  3.120e+03  3.125e+03  3.130e+03  3.135e+03  3.140e+03  3.145e+03  3.150e+03  3.155e+03  3.160e+03  3.165e+03  3.170e+03  3.175e+03  3.180e+03  3.185e+03  3.190e+03  3.195e+03  3.200e+03  3.205e+03  3.210e+03  3.215e+03  3.220e+03  3.225e+03  3.230e+03  3.235e+03  3.240e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.9721	  0.0000	  0.0240	  0.2427	  0.6536	  0.2415	  0.1404	  0.1288	  1.9656	  1.9629	  0.0000	  0.0000	  2.0000	  0.0000	  2.0000	  1.4381	  0.0379	  0.0000	  0.0000	  0.0000	  0.0348	  0.0000	  2.0000	  0.0000	  0.0000	  2.0000	  0.0170	  0.0003	  0.9073	  2.0000	  0.0000	  0.3255	  2.0000	  0.8607	  0.7394	  0.0000	  0.0000	  0.0000	  1.9995	  2.0000	  1.9824	  1.9667	  1.9561	  0.3007	  0.0000	  0.8642	  1.8082	  0.0000	  0.0067	  1.8292	  1.3174	  1.9334	  0.0000	  2.0000	
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
		-0.0029699
		0.000556525
		-0.00219836
		0.00197439
		-0.0045714
		-0.00282642
		-0.00340608
		0.00344761
		0.00119253
		0.00436846
		0.00780161
		0.0042396
		0.00586809
		-0.00218431
		0.00138685
		0.00875006
		0.00956262
		0.0123667
		0.00769268
		0.0110942
		0.00664056
		0.00480187
		0.0118386
		0.0111967
		0.00915122
		0.0111074
		0.00777017
		0.00470143
		0.00661958
		0.00937547
		0.0154551
		0.00611427
		0.00343267
		0.0115839
		0.00946183
		0.0056989
		0.0121299
		0.00247848
		0.00840648
		0.00837548
		0.0111947
		0.0117731
		0.00951948
		0.0127509
		0.0133582
		0.00967405
		0.0156858
		0.00950851
		0.0125792
		0.0126958
		0.0120227
		0.00902817
		0.0105591
		0.0165794
		0.0149892
		0.0190134
		0.0184662
		0.0125987
		0.0124598
		0.0229621
		0.0157798
		0.0162973
		0.0184591
		0.0163953
		0.0234948
		0.0243157
		0.0254353
		0.0199876
		0.0192181
		0.0247072
		0.0272318
		0.0228414
		0.0239837
		0.0247033
		0.0229239
		0.0233
		0.0256299
		0.0264484
		0.0215922
		0.0194894
		0.0284083
		0.0269759
		0.0235102
		0.0269507
		0.0281511
		0.0304221
		0.0226666
		0.026719
		0.0271208
		0.0347151
		0.0320244
		0.0322688
		0.0301594
		0.0328013
		0.0226018
		0.0297244
		0.0316121
		0.023507
		0.0298549
		0.028667
		0.025805
		0.0313521
		0.0268766
		0.0297651
		0.0319096
		0.0296766
		0.0267019
		0.0262264
		0.0265047
		0.0288646
		0.0275083
		0.0276556
		0.0252241
		0.0282896
		0.0249446
		0.0280186
		0.0306032
		0.0280278
		0.0301343
		0.0326363
		0.0362396
		0.0271123
		0.0325527
		0.0264672
		0.030702
		0.0344065
		0.0303865
		0.0298792
		0.0306451
		0.0284679
		0.0282738
		0.0285241
		0.026739
		0.0258044
		0.0287003
		0.0198252
		0.0285084
		0.0239336
		0.0259339
		0.0194222
		0.0243955
		0.0198986
		0.0201934
		0.0176509
		0.0204602
		0.0181583
		0.0125648
		0.0211647
		0.0134857
		0.020867
		0.0223294
		0.00827158
		0.0154256
		0.0180211
		0.0165185
		0.00945489
		0.0156836
		0.0156381
		0.0137396
		0.0176231
		0.0178471
		0.0192068
		0.0148569
		0.0169112
		0.0179961
		0.0110284
		0.0132816
		0.0123277
		0.0184215
		0.0151543
		0.016066
		0.0117744
		0.0134488
		0.0148924
		0.0208396
		0.0153131
		0.0110053
		0.0136516
		0.015148
		0.0184019
		0.0142159
		0.012816
		0.015627
		0.0150429
		0.0129095
		0.0110876
		0.0148601
		0.0181346
		0.0171021
		0.0185063
		0.0148453
		0.0184908
		0.0199843
		0.022085
		0.0190539
		0.0176636
		0.0199095
		0.0213982
		0.0190365
		0.0167121
		0.0171536
		0.0214229
		0.0250435
		0.0157779
		0.0225308
		0.0263637
		0.0248235
		0.0186671
		0.0224449
		0.0203085
		0.0227764
		0.0178351
		0.0244166
		0.0179065
		0.019001
		0.0218152
		0.0204648
		0.0223543
		0.0168388
		0.0188251
		0.0172472
		0.0220195
		0.0156677
		0.0174759
		0.0145646
		0.0146118
		0.0183446
		0.0131582
		0.00844767
		0.0122875
		0.00784473
		0.0124465
		0.0102277
		0.0127126
		0.00933843
		0.00876394
		0.0117505
		0.00451795
		0.0111516
		0.0130458
		0.0073923
		0.011231
		0.00671728
		0.00498695
		0.00426001
		0.00137816
		0.00420663
		0.00101794
		0.00721803
		0.00957638
		0.010343
		0.00628433
		0.00962279
		0.00817927
		-0.00087369
		0.00350003
		0.00714768
		0.00932536
		0.000909527
		0.00617236
		0.00719223
		0.00494271
		0.0105433
		0.00396985
		0.00607023
		0.0109574
		0.0129381
		0.00845416
		0.00252558
		0.00828744
		0.00633435
		0.00574044
		0.00326773
		0.00355037
		0.0103205
		0.00357291
		0.00817823
		0.00817667
		0.00884206
		0.00875146
		0.00850698
		0.0132492
		0.0121632
		0.00561155
		0.0140661
		0.0137139
		0.0120025
		0.0123746
		0.0173144
		0.0103326
		0.0113236
		0.0155023
		0.0164381
		0.014942
		0.00577703
		0.0155415
		0.0165944
		0.0121422
		0.0160434
		0.00932401
		0.00635189
		0.0113356
		0.00959899
		0.00661329
		0.00695793
		0.00823173
		0.00785769
		0.00931671
		0.00319431
		0.0107069
		0.00498107
		0.00841102
		0.0103154
		0.00995555
		0.0060866
		0.00871218
		0.00830362
		0.0107496
		0.00634161
		0.0046079
		0.0141786
		0.0115085
		0.0156117
		0.0162386
		0.0127745
		0.0124659
		0.0149337
		0.0149446
		0.0108879
		0.0160332
		0.0133784
		0.0106677
		0.0166041
		0.00825583
		0.0172365
		0.0127505
		0.0127585
		0.0151263
		0.0101848
		0.00582033
		0.00951066
		0.0135663
		0.00656919
		0.00792662
		0.00987422
		0.00438713
		0.0118348
		0.00892844
		0.00834986
		0.0119169
		0.0106164
		0.014294
		0.0129016
		0.00774634
		0.0158174
		0.0152432
		0.0141533
		0.0133993
		0.0205839
		0.0142319
		0.0088493
		0.0188773
		0.0191945
		0.0182412
		0.0150785
		0.0203592
		0.0223302
		0.0153803
		0.0191695
		0.0214784
		0.0255874
		0.0228133
		0.0194849
		0.0210816
		0.0196487
		0.0258545
		0.0171853
		0.00948637
		0.0167468
		0.016708
		0.0156589
		0.0181516
		0.0219544
		0.0174647
		0.0130395
		0.0158703
		0.0146075
		0.0180235
		0.0253175
		0.0213863
		0.0201456
		0.018743
		0.0201901
		0.0182872
		0.0254894
		0.027931
		0.019678
		0.0197213
		0.0234467
		0.0226861
		0.0228576
		0.0205606
		0.0251974
		0.0258896
		0.0261449
		0.0246102
		0.0289574
		0.0290486
		0.0253295
		0.0240018
		0.0285259
		0.0271617
		0.0268343
		0.0213437
		0.0224978
		0.0298032
		0.036955
		0.0350136
		0.0304055
		0.022312
		0.0290072
		0.0314586
		0.0286944
		0.0252677
		0.0296475
		0.0293101
		0.0310296
		0.0297855
		0.0311956
		0.0257324
		0.0326175
		0.0274347
		0.0212095
		0.0210476
		0.0279593
		0.0273626
		0.0235241
		0.0213889
		0.0250408
		0.0227973
		0.0170679
		0.0254488
		0.0178047
		0.0186306
		0.0162697
		0.0257526
		0.0161319
		0.0223751
		0.0133759
		0.0142432
		0.0181004
		0.0140683
		0.012623
		0.0119484
		0.0107214
		0.0105202
		0.0108038
		0.0147736
		0.0053483
		0.0102644
		0.00934983
		0.00981663
		0.0084428
		0.00826448
		0.00559981
		0.0089472
		0.0105971
		0.00797457
		0.0126639
		0.00763345
		0.0151013
		0.00597037
		0.00904811
		0.0127246
		0.0111151
		0.0144072
		0.0171806
		0.00940505
		0.0114852
		0.0156755
		0.0150536
		0.0192923
		0.0138536
		0.0152017
		0.0216768
		0.0115116
		0.0218193
		0.0234007
		0.0203125
		0.0200441
		0.018083
		0.0203777
		0.024925
		0.0216281
		0.0260855
		0.0257836
		0.0271539
		0.0270999
		0.0219015
		0.0242004
		0.0287381
		0.0250498
		0.0281417
		0.0249506
		0.0257372
		0.0266193
		0.027364
		0.0275467
		0.03128
		0.0215386
		0.0308962
		0.0284063
		0.0251456
		0.0283489
		0.0278073
		0.0292215
		0.0271366
		0.0285922
		0.0338836
		0.0294202
		0.0357338
		0.0331526
		0.0321871
		0.0301618
		0.03422
		0.0386484
		0.0344212
		0.0297146
		0.0297323
		0.0289699
		0.0356706
		0.0299941
		0.0280493
		0.0311263
		0.0365023
		0.0263383
		0.0310334
		0.0312578
		0.030829
		0.0259688
		0.0331927
		0.0273687
		0.0270716
		0.0311634
		0.0226595
		0.0230716
		0.0215097
		0.0224855
		0.0200688
		0.0252251
		0.0226575
		0.020195
		0.0260642
		0.0201613
		0.0171046
		0.0147549
		0.0274354
		0.0261055
		0.0194054
		0.0198335
		0.0217966
		0.0228485
		0.0255739
		0.0279249
		0.025804
		0.0246142
		0.0228565
		0.0242347
		0.0227323
		0.0273389
		0.0261535
		0.0214562
		0.0273963
		0.0222639
		0.0223796
		0.0250881
		0.0278588
		0.0242679
		0.0227626
		0.0223962
		0.014035
		0.022446
		0.0237885
		0.0244941
		0.0182343
		0.0220049
		0.0114434
		0.0167212
		0.0150252
		0.0212154
		0.0105193
		0.0170498
		0.0142485
		0.0146136
		0.0123651
		0.0149541
		0.0115571
		0.0113832
		0.0109097
		0.0188994
		0.01472
		0.017995
		0.0073912
		0.0124551
		0.0162117
		0.0143174
		0.0163934
		0.0192267
		0.0164207
		0.0173338
		0.0194408
		0.0172477
		0.0206476
		0.0147224
		0.0177445
		0.0183666
		0.0261266
		0.0190111
		0.0224687
		0.0252855
		0.0219211
		0.0227577
		0.018551
		0.0268592
		0.0220155
		0.0190207
		0.0214735
		0.030687
		0.0260976
		0.0243319
		0.0245528
		0.0293568
		0.0248169
		0.0251852
		0.0263527
		0.0294699
		0.023607
		0.0204749
		0.0230821
		0.0211473
		0.0207703
		0.0226556
		0.0165656
		0.0214408
		0.0211654
		0.0180762
		0.0224139
		0.0244657
		0.022144
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 22.920417 %	 max error: 765.360455 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009167 max data: 0.038648

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.006088 
	   

>>>> Computational cost: 300.333125 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  3.5984e-04 (4.35e+04%); (bound active) 
	Vm1    : 1.0700e-02  +-  1.2435e-03 (    11.6%); 
	h1     : 1.7692e+00  +-  5.2629e-01 (    29.7%); 
	Km1    : 3.9492e-02  +-  7.5841e-03 (    19.2%); 
	d1     : 3.0833e-02  +-  3.9925e-03 (    12.9%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 3.235133e-02	 6.361363e-01	 5.843818e-01	 4.134216e-01
	 3.235133e-02	 1.000000e+00	 6.383378e-02	 6.583728e-02	 9.142637e-01
	 6.361363e-01	 6.383378e-02	 1.000000e+00	 3.325005e-01	 3.436938e-01
	 5.843818e-01	 6.583728e-02	 3.325005e-01	 1.000000e+00	 2.243063e-01
	 4.134216e-01	 9.142637e-01	 3.436938e-01	 2.243063e-01	 1.000000e+00
