   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-003412
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-003412\PE_gal1noD_eSS_pe-9 


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
		v_guess(2)=0.035903;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=6.362152;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.017967;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.039817;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.798e-05  3.088e-05  3.551e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 3240.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 649: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  2.885e+03  2.890e+03  2.895e+03  2.900e+03  2.905e+03  2.910e+03  2.915e+03  2.920e+03  2.925e+03  2.930e+03  2.935e+03  2.940e+03  2.945e+03  2.950e+03  2.955e+03  2.960e+03  2.965e+03  2.970e+03  2.975e+03  2.980e+03  2.985e+03  2.990e+03  2.995e+03  3.000e+03  3.005e+03  3.010e+03  3.015e+03  3.020e+03  3.025e+03  3.030e+03  3.035e+03  3.040e+03  3.045e+03  3.050e+03  3.055e+03  3.060e+03  3.065e+03  3.070e+03  3.075e+03  3.080e+03  3.085e+03  3.090e+03  3.095e+03  3.100e+03  3.105e+03  3.110e+03  3.115e+03  3.120e+03  3.125e+03  3.130e+03  3.135e+03  3.140e+03  3.145e+03  3.150e+03  3.155e+03  3.160e+03  3.165e+03  3.170e+03  3.175e+03  3.180e+03  3.185e+03  3.190e+03  3.195e+03  3.200e+03  3.205e+03  3.210e+03  3.215e+03  3.220e+03  3.225e+03  3.230e+03  3.235e+03  3.240e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0248	  2.0000	  2.0000	  0.0250	  0.0000	  0.0463	  1.9744	  0.0000	  1.8762	  0.1418	  0.1801	  0.0813	  2.0000	  0.0284	  1.0308	  0.0000	  2.0000	  2.0000	  1.9980	  1.9685	  1.9769	  2.0000	  0.0114	  1.5821	  0.0000	  2.0000	  0.0768	  2.0000	  1.8222	  2.0000	  0.0257	  0.0000	  1.9993	  1.1443	  0.0142	  1.6832	  0.0000	  0.0000	  0.1474	  0.0000	  1.3360	  0.0000	  0.0000	  1.9835	  0.0000	  0.0229	  1.8324	  1.9812	  0.0000	  0.0644	  0.7690	  0.0235	  0.0305	  0.9858	
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
		-0.0024655
		-0.00433551
		-0.00381984
		-0.00300493
		0.00235563
		-0.00138616
		0.00184658
		-0.00047403
		0.0015182
		0.000509203
		-0.00286931
		0.00734205
		0.000234576
		-0.00128515
		-0.00423666
		0.0013153
		0.00652806
		0.00576691
		0.000537822
		0.00362412
		0.0052983
		0.0076831
		0.00654218
		0.00843353
		0.00391027
		0.0113162
		0.00886946
		0.00800112
		0.0172268
		0.00968328
		0.0143541
		0.0140074
		0.0120442
		0.01209
		0.0132097
		0.0142468
		0.0181992
		0.015934
		0.0122829
		0.0186138
		0.0205051
		0.0153537
		0.0157554
		0.0241469
		0.0232734
		0.0221726
		0.0219264
		0.0232368
		0.0209276
		0.0175388
		0.0223604
		0.0113938
		0.0215556
		0.0185274
		0.0175998
		0.0176672
		0.021479
		0.0190912
		0.0198831
		0.0163959
		0.0201447
		0.0175651
		0.0115163
		0.0166877
		0.00919787
		0.011957
		0.0159896
		0.0116629
		0.0107316
		0.0128186
		0.0155716
		0.00957517
		0.00997765
		0.0120247
		0.0107559
		0.015264
		0.016327
		0.0132163
		0.0170264
		0.0143213
		0.020864
		0.0165111
		0.0143722
		0.0174287
		0.0133877
		0.0106428
		0.0159381
		0.0129543
		0.0135334
		0.0151369
		0.020186
		0.0150109
		0.0186094
		0.0147805
		0.0196545
		0.0215113
		0.0149167
		0.01728
		0.0242166
		0.0135775
		0.014767
		0.0199142
		0.0168406
		0.0120368
		0.0128689
		0.0195644
		0.0188282
		0.0127111
		0.0134565
		0.0151648
		0.0175976
		0.014576
		0.016291
		0.0193027
		0.0196685
		0.017256
		0.0225282
		0.0182297
		0.0180202
		0.0222439
		0.0171756
		0.0191922
		0.015412
		0.022836
		0.0251468
		0.023588
		0.025505
		0.020082
		0.0214493
		0.0201505
		0.0223555
		0.0231757
		0.0249933
		0.0242361
		0.0245932
		0.0281836
		0.0240528
		0.0269353
		0.0251538
		0.0281986
		0.022684
		0.0279581
		0.0325458
		0.0268847
		0.0318734
		0.031694
		0.0272824
		0.0239666
		0.0287977
		0.0252552
		0.0296054
		0.0312593
		0.024851
		0.0228268
		0.0321788
		0.0196446
		0.027449
		0.0204413
		0.0261204
		0.0262112
		0.0288094
		0.0265171
		0.0236093
		0.0317652
		0.0314014
		0.0303226
		0.028718
		0.0239462
		0.0306301
		0.0212361
		0.0306838
		0.0251199
		0.0288362
		0.0294927
		0.0271876
		0.0249332
		0.0230521
		0.0223358
		0.0198793
		0.0258797
		0.0235811
		0.0306956
		0.0234721
		0.0238199
		0.0270723
		0.0232534
		0.0219273
		0.0229924
		0.0272393
		0.0209712
		0.0247186
		0.0234834
		0.0252831
		0.013026
		0.0171885
		0.0205169
		0.0209
		0.0178373
		0.0194956
		0.0260145
		0.0212719
		0.0116736
		0.0262258
		0.0212046
		0.0197051
		0.0162579
		0.0206959
		0.0174758
		0.0149878
		0.0153868
		0.0225906
		0.0229586
		0.0187557
		0.0239657
		0.0243419
		0.0233451
		0.0218571
		0.023804
		0.0227879
		0.0207463
		0.0242258
		0.0246934
		0.0285067
		0.0291995
		0.027409
		0.0224046
		0.0283616
		0.0244321
		0.021096
		0.0250381
		0.027987
		0.0259178
		0.0249943
		0.0318215
		0.0245681
		0.0259966
		0.0290054
		0.0221283
		0.02569
		0.029206
		0.0287073
		0.0325592
		0.0238648
		0.0281754
		0.0280729
		0.0243585
		0.0319217
		0.0294456
		0.0233341
		0.0238448
		0.0226281
		0.0286861
		0.0332619
		0.0361374
		0.0277806
		0.0295661
		0.0278225
		0.035467
		0.032782
		0.0341306
		0.0358223
		0.0324908
		0.0328799
		0.0299776
		0.0309578
		0.0297218
		0.0310207
		0.0303945
		0.0295708
		0.0321859
		0.0351539
		0.0337411
		0.0323921
		0.0352514
		0.0344036
		0.025606
		0.0304538
		0.0259177
		0.0254526
		0.0282023
		0.0228406
		0.0215759
		0.033563
		0.0237736
		0.0329258
		0.0194678
		0.0226687
		0.0257325
		0.0225732
		0.0239203
		0.0251805
		0.0252904
		0.0245321
		0.0204891
		0.020542
		0.0209946
		0.0191116
		0.0239531
		0.0249723
		0.0219932
		0.0193717
		0.0207698
		0.0216908
		0.0158796
		0.0123271
		0.0223339
		0.0186695
		0.0180181
		0.0229391
		0.0142871
		0.0186563
		0.0185359
		0.0167332
		0.0158443
		0.0181856
		0.020741
		0.0197172
		0.0222178
		0.0218655
		0.0213834
		0.0167314
		0.0202535
		0.0168062
		0.02348
		0.0220878
		0.0187205
		0.0235584
		0.0236299
		0.0225298
		0.0206784
		0.0259898
		0.0202943
		0.0223913
		0.0205834
		0.0231909
		0.0218319
		0.0267476
		0.0274284
		0.0210962
		0.0225988
		0.0186335
		0.0305084
		0.0266049
		0.0271984
		0.0281418
		0.0235924
		0.027611
		0.0265153
		0.0243245
		0.0210576
		0.0264112
		0.0234767
		0.0256589
		0.0255507
		0.0311102
		0.0317623
		0.0274843
		0.0303497
		0.0305566
		0.0326597
		0.0276375
		0.0298545
		0.0317697
		0.0366888
		0.0321404
		0.0267037
		0.0193092
		0.0277248
		0.0335345
		0.0257063
		0.0284589
		0.0255701
		0.0278812
		0.0285482
		0.0257957
		0.0302966
		0.0232063
		0.0298055
		0.0233738
		0.0268561
		0.0222605
		0.0266619
		0.0319578
		0.022675
		0.0273009
		0.0185661
		0.0175445
		0.0178263
		0.0147918
		0.0212127
		0.0199836
		0.0214906
		0.0210024
		0.0170546
		0.0192514
		0.023231
		0.0113651
		0.0160169
		0.0122171
		0.0196685
		0.0162334
		0.0189844
		0.0198964
		0.0177124
		0.0162301
		0.0180967
		0.0261481
		0.0193844
		0.022549
		0.0234819
		0.0211568
		0.0167432
		0.0226062
		0.0206005
		0.0190054
		0.0181016
		0.0215942
		0.0171923
		0.0266927
		0.023844
		0.0226009
		0.0155531
		0.0187871
		0.0184747
		0.0241114
		0.0251259
		0.0214958
		0.0192032
		0.0146967
		0.0235614
		0.0237749
		0.0246477
		0.0175075
		0.0235337
		0.019192
		0.0291804
		0.0230378
		0.0228781
		0.0225412
		0.0226661
		0.0218597
		0.0202669
		0.0229272
		0.0169018
		0.0142822
		0.0193598
		0.020494
		0.0165749
		0.0176844
		0.0118293
		0.0166271
		0.0137071
		0.0148111
		0.0156721
		0.0164408
		0.0140612
		0.0131408
		0.0093603
		0.0111023
		0.0177543
		0.0108992
		0.0138964
		0.0125903
		0.00978341
		0.00904575
		0.0174108
		0.00331119
		0.00805743
		0.0156643
		0.0119977
		0.0106744
		0.0148195
		0.0148289
		0.0114042
		0.0140819
		0.0121321
		0.0164266
		0.0140976
		0.0106899
		0.0132378
		0.0151486
		0.0164165
		0.00816011
		0.0159236
		0.0127375
		0.0146124
		0.0166388
		0.00927861
		0.0172655
		0.0146763
		0.013089
		0.0165472
		0.0135457
		0.0107628
		0.0130668
		0.0129156
		0.0129876
		0.0208973
		0.0103714
		0.0147098
		0.0116346
		0.0159391
		0.0190815
		0.0135642
		0.0186412
		0.0180287
		0.0145186
		0.0122528
		0.0170511
		0.0139912
		0.0174184
		0.0144079
		0.0114949
		0.0127674
		0.0127685
		0.0124946
		0.0084477
		0.0110552
		0.00864059
		0.00692114
		0.00644147
		0.00850761
		0.0134092
		0.00926748
		0.00837083
		0.0107003
		0.00553502
		0.0112508
		0.0124341
		0.0104051
		0.0183404
		0.0137045
		0.010411
		0.0157637
		0.00831438
		0.0176936
		0.0151102
		0.0147487
		0.013452
		0.0133308
		0.010964
		0.0131756
		0.0164818
		0.014473
		0.0129834
		0.0103268
		0.0128935
		0.0117537
		0.0159424
		0.00634215
		0.00725088
		0.0058799
		0.006816
		0.0149292
		0.0109386
		0.00516392
		0.00917146
		0.012066
		0.00726252
		0.0131299
		0.00976563
		0.011478
		0.015055
		0.0087097
		0.0108567
		0.00730603
		0.0147618
		0.0132702
		0.00901769
		0.0151136
		0.0232764
		0.0136121
		0.015048
		0.0168506
		0.0134647
		0.0134315
		0.0172516
		0.0138038
		0.0147159
		0.0182701
		0.018081
		0.025237
		0.0152012
		0.0216388
		0.0188154
		0.0216682
		0.0230926
		0.0202837
		0.0205651
		0.0254306
		0.0203682
		0.0256494
		0.0161932
		0.0234635
		0.0168069
		0.0191125
		0.0212332
		0.012887
		0.0145174
		0.0163161
		0.0198035
		0.0222101
		0.0202843
		0.0205909
		0.0119739
		0.0123293
		0.0126098
		0.0179817
		0.0197126
		0.0172625
		0.0248799
		0.0159996
		0.0240787
		0.0158353
		0.0228886
		0.0199273
		0.0227443
		0.0256904
		0.0257767
		0.0216094
		0.0174333
		0.0207884
		0.0114043
		0.0189492
		0.0221642
		0.0192278
		0.0237511
		0.0182684
		0.0181717
		0.0209535
		0.0196656
		0.0189865
		0.0167623
		0.0158409
		0.0242322
		0.0156793
		0.0184599
		0.0160504
		0.0159771
		0.0168584
		0.0218854
		0.0183396
		0.0218493
		0.0224239
		0.0158188
		0.0172712
		0.0183901
		0.0159443
		0.0175399
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 18.534479 %	 max error: 451.287410 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010257 max data: 0.036689

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.006506 
	   

>>>> Computational cost: 300.395526 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.3098e-07  +-  3.6972e-04 (4.45e+04%); (bound active) 
	Vm1    : 1.1111e-02  +-  1.8054e-03 (    16.2%); 
	h1     : 1.8935e+00  +-  3.5697e-01 (    18.9%); 
	Km1    : 3.8461e-02  +-  4.9359e-03 (    12.8%); 
	d1     : 3.2214e-02  +-  5.2961e-03 (    16.4%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.070261e-01	 2.110339e-01	 3.273604e-01	 1.635080e-01
	 -1.070261e-01	 1.000000e+00	 -2.342892e-01	 2.355995e-02	 9.561541e-01
	 2.110339e-01	 -2.342892e-01	 1.000000e+00	 -6.995510e-02	 -1.562780e-01
	 3.273604e-01	 2.355995e-02	 -6.995510e-02	 1.000000e+00	 2.235784e-02
	 1.635080e-01	 9.561541e-01	 -1.562780e-01	 2.235784e-02	 1.000000e+00
