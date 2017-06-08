   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-065519
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-065519\PE_gal1noD_eSS_pe-9 


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
		v_guess(2)=0.046136;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.334324;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.065979;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.142850;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[4.431e-05  3.602e-05  4.143e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 3240.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 649: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  2.885e+03  2.890e+03  2.895e+03  2.900e+03  2.905e+03  2.910e+03  2.915e+03  2.920e+03  2.925e+03  2.930e+03  2.935e+03  2.940e+03  2.945e+03  2.950e+03  2.955e+03  2.960e+03  2.965e+03  2.970e+03  2.975e+03  2.980e+03  2.985e+03  2.990e+03  2.995e+03  3.000e+03  3.005e+03  3.010e+03  3.015e+03  3.020e+03  3.025e+03  3.030e+03  3.035e+03  3.040e+03  3.045e+03  3.050e+03  3.055e+03  3.060e+03  3.065e+03  3.070e+03  3.075e+03  3.080e+03  3.085e+03  3.090e+03  3.095e+03  3.100e+03  3.105e+03  3.110e+03  3.115e+03  3.120e+03  3.125e+03  3.130e+03  3.135e+03  3.140e+03  3.145e+03  3.150e+03  3.155e+03  3.160e+03  3.165e+03  3.170e+03  3.175e+03  3.180e+03  3.185e+03  3.190e+03  3.195e+03  3.200e+03  3.205e+03  3.210e+03  3.215e+03  3.220e+03  3.225e+03  3.230e+03  3.235e+03  3.240e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.1964	  1.0073	  0.5081	  0.0000	  1.1011	  0.0000	  1.8860	  0.5130	  0.7500	  1.9999	  0.0014	  0.0011	  2.0000	  1.9584	  0.0010	  1.6879	  2.0000	  0.0000	  1.9974	  1.9931	  0.0002	  2.0000	  0.5366	  1.6648	  0.1632	  0.4748	  0.8109	  0.5429	  0.1772	  0.0001	  0.1354	  1.2018	  0.0031	  0.0033	  2.0000	  1.6190	  1.7765	  0.0006	  0.0000	  2.0000	  0.0588	  0.2511	  0.4592	  0.3068	  0.0000	  0.8770	  0.1617	  0.0000	  0.7500	  0.0081	  0.1502	  0.5572	  0.1065	  1.9140	
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
		0.00352103
		0.000275509
		8.13048e-05
		-0.00146576
		0.00128211
		0.000355188
		-0.00145722
		0.00115603
		0.00287531
		0.00327397
		0.00398354
		0.00116966
		0.00619057
		0.00593137
		0.00296177
		0.00406232
		0.00190361
		0.00841826
		0.00873035
		0.00789119
		0.00807301
		0.0127071
		0.0143661
		0.0104243
		0.0105554
		0.0126186
		0.0117549
		0.0132982
		0.0127121
		0.00884654
		0.0156123
		0.0157861
		0.0218153
		0.0219127
		0.021064
		0.0166854
		0.0147917
		0.0226771
		0.023986
		0.0234442
		0.0240449
		0.0243349
		0.020815
		0.0225917
		0.0213483
		0.0255855
		0.0221172
		0.0195184
		0.0222087
		0.0242004
		0.0222208
		0.0198444
		0.0204896
		0.0167079
		0.0222666
		0.0197335
		0.0157385
		0.0171275
		0.0233339
		0.01951
		0.01687
		0.0205309
		0.0148668
		0.0195381
		0.017657
		0.0194092
		0.0231508
		0.0218165
		0.0228818
		0.0204923
		0.0148372
		0.0211829
		0.0156087
		0.0168059
		0.0110772
		0.0128473
		0.0185114
		0.0156499
		0.0165423
		0.019784
		0.0175967
		0.0134017
		0.013506
		0.0136676
		0.0162202
		0.0198532
		0.0177736
		0.0131639
		0.0145189
		0.0167744
		0.0128118
		0.0221648
		0.0183269
		0.0181591
		0.0222667
		0.0220899
		0.0244418
		0.02236
		0.0218515
		0.0201485
		0.0235064
		0.0180197
		0.0192389
		0.0224807
		0.0274504
		0.0240299
		0.028818
		0.0260075
		0.0257691
		0.0280196
		0.0244492
		0.0283658
		0.0246471
		0.0265353
		0.0276067
		0.0257003
		0.028228
		0.0273541
		0.0238298
		0.0293164
		0.023874
		0.0274148
		0.0280327
		0.029164
		0.0304999
		0.0213769
		0.0341483
		0.0326341
		0.0284122
		0.0302804
		0.0357506
		0.0284783
		0.0323022
		0.0266271
		0.0262367
		0.0286289
		0.0260064
		0.0231888
		0.0156962
		0.0242717
		0.0212408
		0.0199176
		0.016274
		0.0264387
		0.017437
		0.0145829
		0.0194937
		0.0113603
		0.0178119
		0.0137196
		0.0134329
		0.0155321
		0.0112084
		0.0155949
		0.0158544
		0.0154039
		0.011146
		0.0176436
		0.0187571
		0.0170756
		0.0161222
		0.0176087
		0.0153405
		0.0207895
		0.0167967
		0.0147698
		0.0189967
		0.0255798
		0.0226887
		0.0202438
		0.0200047
		0.0198779
		0.0180676
		0.0219641
		0.0216843
		0.021297
		0.0165044
		0.0193108
		0.020239
		0.0217516
		0.0191497
		0.0226692
		0.0190751
		0.0215882
		0.0200718
		0.025053
		0.0217256
		0.0215945
		0.013986
		0.019571
		0.0166812
		0.0194275
		0.019987
		0.0209301
		0.015931
		0.0228598
		0.0180044
		0.018097
		0.0232704
		0.0272867
		0.0148693
		0.0228804
		0.026533
		0.0212189
		0.0256816
		0.0228519
		0.0156873
		0.02454
		0.0251412
		0.022979
		0.0314019
		0.0232017
		0.0208392
		0.0230397
		0.0193555
		0.0226406
		0.024336
		0.022851
		0.0321335
		0.0242683
		0.0238342
		0.0198443
		0.019442
		0.0200136
		0.0212363
		0.018968
		0.0231838
		0.0140367
		0.0195202
		0.0212249
		0.0200328
		0.0178081
		0.019281
		0.0201528
		0.0169755
		0.0223093
		0.0209417
		0.0233092
		0.0230298
		0.0183378
		0.0197715
		0.0216773
		0.0196022
		0.0236434
		0.0248719
		0.0227527
		0.0220525
		0.0185701
		0.017763
		0.0267408
		0.0252667
		0.0240988
		0.0237276
		0.0198106
		0.0263278
		0.0197015
		0.0218896
		0.0228248
		0.0150678
		0.0188646
		0.0195299
		0.0160008
		0.0190697
		0.0202813
		0.0211631
		0.0190577
		0.0189961
		0.0174877
		0.0178263
		0.0231239
		0.020481
		0.0180057
		0.020754
		0.0239568
		0.0176448
		0.0237734
		0.0167354
		0.0238008
		0.0223364
		0.026305
		0.0271451
		0.0225219
		0.0232802
		0.0249563
		0.019796
		0.0183952
		0.0200275
		0.0298621
		0.0280727
		0.0327088
		0.0246016
		0.0217185
		0.0283719
		0.0282131
		0.0325649
		0.0260014
		0.0238105
		0.0316496
		0.0253259
		0.0367865
		0.0319032
		0.0250499
		0.0305886
		0.029086
		0.0232437
		0.0307879
		0.0295944
		0.0251312
		0.0267447
		0.0335105
		0.0286125
		0.0326999
		0.0302484
		0.0326184
		0.0305077
		0.0274478
		0.0332076
		0.0283215
		0.0269859
		0.0319327
		0.0250298
		0.0298958
		0.029317
		0.0287614
		0.034159
		0.0297639
		0.030044
		0.03257
		0.0338107
		0.029958
		0.035842
		0.0305354
		0.0276184
		0.0357863
		0.0325715
		0.0291146
		0.0320568
		0.0297627
		0.029385
		0.0344935
		0.0407878
		0.03174
		0.0306397
		0.026833
		0.0307567
		0.0338274
		0.0340866
		0.0320456
		0.0315318
		0.0262502
		0.0282771
		0.0279207
		0.0341937
		0.0341724
		0.0270054
		0.028447
		0.0304398
		0.0265006
		0.0283089
		0.0291809
		0.0308632
		0.027402
		0.0295506
		0.0265983
		0.0234668
		0.0308095
		0.0292576
		0.0251814
		0.0212065
		0.0209995
		0.022759
		0.0199604
		0.0217014
		0.0240921
		0.0190365
		0.0241148
		0.0231538
		0.0235427
		0.0237196
		0.018291
		0.0215117
		0.0181453
		0.0208989
		0.0180248
		0.0296212
		0.0234587
		0.0232892
		0.021911
		0.0259588
		0.0251012
		0.0240774
		0.0256773
		0.0238914
		0.0294368
		0.0258991
		0.0218313
		0.0205991
		0.0210277
		0.0142806
		0.0226469
		0.0213688
		0.0171651
		0.0215547
		0.0229702
		0.0189838
		0.0160927
		0.0114851
		0.0135362
		0.0196099
		0.016487
		0.016916
		0.0173395
		0.0186302
		0.0107753
		0.018016
		0.014145
		0.0124413
		0.010928
		0.016904
		0.0148172
		0.00970504
		0.00897345
		0.0146356
		0.0143807
		0.0164171
		0.0112791
		0.0171992
		0.018461
		0.0209725
		0.0146291
		0.0134015
		0.0167536
		0.0127295
		0.0134357
		0.0189357
		0.0202303
		0.016896
		0.0176386
		0.0256266
		0.0243244
		0.0200761
		0.020407
		0.0176268
		0.0192435
		0.0247989
		0.0234327
		0.022682
		0.0327035
		0.0222454
		0.0287978
		0.0230624
		0.0291675
		0.0245848
		0.0218765
		0.0273268
		0.0260507
		0.023701
		0.0245161
		0.023097
		0.018956
		0.021241
		0.019531
		0.0159577
		0.025613
		0.0216941
		0.0253544
		0.0103122
		0.0175677
		0.0192523
		0.0170918
		0.0119167
		0.0116766
		0.0148168
		0.0190364
		0.00945604
		0.0136903
		0.0111492
		0.0161378
		0.0146727
		0.0128466
		0.00950938
		0.0196445
		0.0157881
		0.0130097
		0.0102269
		0.0149925
		0.0114937
		0.0129494
		0.0158633
		0.0138812
		0.0158876
		0.0178967
		0.0174308
		0.0177702
		0.020826
		0.0191267
		0.0216179
		0.0147985
		0.0181786
		0.0254312
		0.0128393
		0.0162627
		0.0224798
		0.0204352
		0.0239332
		0.0246148
		0.0199582
		0.0214148
		0.0239211
		0.0172665
		0.0223772
		0.0242335
		0.0259683
		0.0268969
		0.0272316
		0.0236691
		0.025881
		0.021778
		0.0232999
		0.0228147
		0.024796
		0.0295475
		0.0260091
		0.027621
		0.0262552
		0.0257404
		0.0255817
		0.0245298
		0.0255832
		0.0295246
		0.0283639
		0.0291314
		0.0279818
		0.0282602
		0.0328975
		0.0270447
		0.0301898
		0.0278081
		0.026726
		0.0262581
		0.031755
		0.0296769
		0.0257725
		0.0237053
		0.0232118
		0.0229649
		0.0214492
		0.0235391
		0.0258928
		0.0219871
		0.0229976
		0.0211136
		0.0231143
		0.0209514
		0.0211069
		0.0232143
		0.0216729
		0.0244813
		0.0184595
		0.0199226
		0.0258478
		0.0212074
		0.0213434
		0.0250403
		0.0221547
		0.0275883
		0.0278854
		0.0254767
		0.0273947
		0.0237724
		0.0173887
		0.0249971
		0.028578
		0.0247449
		0.0210548
		0.0292648
		0.0243919
		0.0218194
		0.0215572
		0.0203495
		0.0231615
		0.0176629
		0.0242571
		0.0165992
		0.0213219
		0.017
		0.0239382
		0.0184749
		0.0214881
		0.0167421
		0.0216187
		0.0168993
		0.0216914
		0.0239993
		0.0170155
		0.018498
		0.0212475
		0.0160408
		0.0194018
		0.0182167
		0.0100445
		0.0190798
		0.0216547
		0.0144122
		0.0140866
		0.0215707
		0.01771
		0.0159385
		0.0100491
		0.014584
		0.0182811
		0.0172546
		0.0130828
		0.019248
		0.0148728
		0.0195237
		0.0152625
		0.0242356
		0.015791
		0.0120346
		0.0209404
		0.0178856
		0.0179222
		0.017655
		0.0210425
		0.023081
		0.0180424
		0.0231635
		0.0192172
		0.0202743
		0.0222244
		0.0180849
		0.0243333
		0.0204177
		0.0220682
		0.021724
		0.0222786
		0.0178196
		0.0184284
		0.0216589
		0.0218834
		0.0234083
		0.0236222
		0.021526
		0.0186105
		0.0264115
		0.0278151
		0.0263008
		0.0227677
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 13.795228 %	 max error: 210.069383 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010531 max data: 0.040788

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.005795 
	   

>>>> Computational cost: 300.223924 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  5.1645e-04 (6.24e+04%); (bound active) 
	Vm1    : 1.0102e-02  +-  1.2767e-03 (    12.6%); 
	h1     : 1.8825e+00  +-  1.0315e+00 (    54.8%); 
	Km1    : 4.4749e-02  +-  1.8347e-02 (      41%); 
	d1     : 2.9130e-02  +-  4.4134e-03 (    15.2%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 3.074047e-02	 6.177171e-01	 5.356070e-01	 5.476971e-01
	 3.074047e-02	 1.000000e+00	 5.093798e-02	 1.447899e-01	 8.451736e-01
	 6.177171e-01	 5.093798e-02	 1.000000e+00	 8.454751e-01	 4.126178e-01
	 5.356070e-01	 1.447899e-01	 8.454751e-01	 1.000000e+00	 4.035060e-01
	 5.476971e-01	 8.451736e-01	 4.126178e-01	 4.035060e-01	 1.000000e+00
