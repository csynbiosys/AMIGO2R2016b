   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-074940
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-074940\PE_gal1noD_eSS_pe-9 


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

		v_guess(1)=0.000011;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.003752;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=5.501169;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.006413;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.005823;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.961e-03  1.595e-03  1.834e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 3240.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 649: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  2.885e+03  2.890e+03  2.895e+03  2.900e+03  2.905e+03  2.910e+03  2.915e+03  2.920e+03  2.925e+03  2.930e+03  2.935e+03  2.940e+03  2.945e+03  2.950e+03  2.955e+03  2.960e+03  2.965e+03  2.970e+03  2.975e+03  2.980e+03  2.985e+03  2.990e+03  2.995e+03  3.000e+03  3.005e+03  3.010e+03  3.015e+03  3.020e+03  3.025e+03  3.030e+03  3.035e+03  3.040e+03  3.045e+03  3.050e+03  3.055e+03  3.060e+03  3.065e+03  3.070e+03  3.075e+03  3.080e+03  3.085e+03  3.090e+03  3.095e+03  3.100e+03  3.105e+03  3.110e+03  3.115e+03  3.120e+03  3.125e+03  3.130e+03  3.135e+03  3.140e+03  3.145e+03  3.150e+03  3.155e+03  3.160e+03  3.165e+03  3.170e+03  3.175e+03  3.180e+03  3.185e+03  3.190e+03  3.195e+03  3.200e+03  3.205e+03  3.210e+03  3.215e+03  3.220e+03  3.225e+03  3.230e+03  3.235e+03  3.240e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.5510	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0080	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0073	  0.0000	  0.0618	  0.0000	  0.2831	  0.0000	  0.0095	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.5423	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.0053	  0.0000	  0.0000	  0.0000	  0.0594	  0.0000	  0.0000	  0.0000	
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
		4.11596e-05
		-0.00160708
		0.000508844
		0.00125403
		-0.00234876
		-0.00110882
		-0.00368972
		0.00272059
		0.000759136
		0.000897358
		0.0010859
		-0.000786916
		-0.000723085
		-0.00186988
		0.000432745
		0.000197101
		0.000684056
		-0.00154006
		0.000541327
		0.00148024
		0.00225084
		-0.000586812
		0.000796164
		0.000684377
		0.000209568
		0.00107856
		0.000914454
		-0.000936491
		4.35609e-05
		-0.00190837
		0.000516761
		-0.0021079
		-0.000365273
		-0.00235527
		-0.000561487
		0.000304212
		0.000754824
		0.00107856
		0.00108507
		0.000215316
		0.00344668
		-0.00136283
		0.000950639
		-0.00285419
		7.98469e-05
		-0.000624755
		-0.00188985
		-0.000148341
		0.00109738
		-0.00110399
		-0.00154791
		0.000563599
		0.00119514
		-0.000771713
		0.00248376
		-5.26494e-05
		-0.000806077
		-0.000923345
		-0.00133921
		-0.0025844
		0.00117203
		0.00142206
		-0.000835642
		0.00023286
		-0.000705907
		0.00125753
		0.000941905
		2.87862e-05
		1.39128e-05
		0.00279527
		0.00176952
		0.00396921
		0.00390001
		0.00353709
		0.00645574
		0.00511596
		0.00724735
		0.0059953
		0.00810591
		0.008103
		0.011381
		0.0067834
		0.00770231
		0.00665674
		0.0088413
		0.0105338
		0.00713766
		0.00702574
		0.00964421
		0.00887541
		0.0073271
		0.0106444
		0.00792873
		0.00818338
		0.00930539
		0.00814436
		0.0102983
		0.00708535
		0.00760566
		0.00671534
		0.00809797
		0.00747142
		0.00615812
		0.00840509
		0.00631498
		0.00750818
		0.00662296
		0.004465
		0.00594989
		0.00631996
		0.00469951
		0.00692362
		0.00354629
		0.00462162
		0.00307882
		0.00306306
		0.00278092
		0.00310894
		0.00150699
		0.00373878
		0.00205852
		0.000594776
		0.00269097
		0.00131519
		0.00372555
		0.00196776
		0.00349432
		0.00382325
		0.00194559
		0.00222947
		0.00316452
		0.00291256
		0.00283376
		0.00203928
		0.00337662
		0.00298444
		0.00366591
		-0.000791799
		3.51226e-05
		0.0010769
		-0.000838424
		0.00130497
		0.000114625
		0.0019039
		0.000568121
		-0.000687761
		0.000363625
		0.0021346
		-7.48312e-05
		0.000301695
		0.00419966
		-0.00148513
		-0.000327063
		-0.000617554
		-0.000669007
		-0.00206057
		0.000110148
		0.00161849
		0.00374955
		0.00148972
		-0.000931847
		0.00307386
		-0.00177338
		0.000578331
		-0.000961399
		0.00185603
		0.000298656
		0.00170128
		-0.000443893
		-0.000485074
		0.000341958
		0.00113526
		-0.000205826
		-0.00110391
		0.000224124
		0.00251618
		-0.000198879
		0.00183011
		2.86321e-05
		0.000578536
		0.000530041
		0.00298967
		0.000257163
		-0.000427862
		4.88728e-05
		-0.00087861
		0.000480106
		-0.00103961
		0.00195849
		0.000530233
		0.000340246
		0.00175187
		-0.00106546
		0.00043228
		0.000944079
		0.00215655
		0.00168964
		0.000169586
		0.000413744
		0.00199767
		0.000434403
		-0.00118745
		0.00169313
		0.00116511
		0.00153651
		0.00102596
		0.000251503
		0.00124369
		0.00025376
		0.000488402
		0.00115892
		-0.000363035
		0.00135133
		-9.84321e-05
		0.000256448
		0.00194287
		0.000372607
		0.000829956
		0.00130131
		-0.000675929
		-0.00124382
		-0.000328432
		-0.00224565
		0.000429592
		0.00119136
		0.000347721
		0.00166725
		0.000837168
		0.000283894
		0.00142242
		0.00269442
		-0.00016991
		0.000846129
		0.000122126
		0.0010337
		0.00332174
		-0.00158354
		-1.04713e-05
		-0.00222146
		0.000866034
		0.000646635
		-0.00369107
		0.000423044
		-0.00114404
		0.0025604
		0.000733813
		-0.00115919
		0.00113025
		0.000812153
		0.0017991
		-0.000669997
		-0.000225618
		0.00257024
		0.000665492
		0.000227894
		-0.000277184
		-0.000645984
		0.000991477
		0.00093247
		0.000290796
		0.000276638
		0.000382407
		0.000124634
		-0.00114825
		-0.00184901
		0.00193916
		-0.00167016
		0.00337473
		0.00268627
		-0.000506214
		0.00111205
		0.00297383
		0.00217801
		0.00331024
		0.00266096
		0.00234946
		0.00315525
		0.00510926
		0.00475219
		0.00455093
		0.00380805
		0.00373604
		0.00470012
		0.00630737
		0.00325768
		0.00543535
		0.0075771
		0.00675784
		0.00465171
		0.00653648
		0.00687269
		0.00636521
		0.0061637
		0.00762322
		0.00802615
		0.00702491
		0.00697402
		0.00684741
		0.00957064
		0.0102139
		0.00664745
		0.00977811
		0.0117819
		0.0124646
		0.0100913
		0.00952015
		0.0116523
		0.0113879
		0.0109733
		0.0130684
		0.0143769
		0.0121578
		0.0111348
		0.0134801
		0.0141776
		0.012917
		0.0109025
		0.0120822
		0.0119073
		0.0102024
		0.00986572
		0.00984269
		0.0111163
		0.0110649
		0.0111714
		0.0104817
		0.0092127
		0.00925229
		0.00861609
		0.00698676
		0.00608512
		0.0107321
		0.00840207
		0.0054814
		0.0068481
		0.00782756
		0.00825505
		0.00635747
		0.00528241
		0.00713542
		0.00571063
		0.00634778
		0.00750395
		0.00548889
		0.00304308
		0.00348982
		0.00356971
		0.00346028
		0.00271502
		0.00536908
		0.00712244
		0.00170058
		0.00298159
		0.00343961
		0.00359513
		0.00446431
		0.00109178
		0.00370404
		0.00178083
		0.00295289
		0.00124107
		2.40702e-05
		0.0024731
		0.00184967
		0.000850439
		0.00153052
		2.33921e-05
		-0.000693333
		0.00286744
		0.00103071
		0.00178708
		0.00281976
		1.974e-06
		0.00135835
		0.000676607
		-8.95408e-06
		0.000664812
		-0.000761084
		0.00199504
		5.10593e-05
		0.000940424
		0.000591124
		0.00134262
		-0.000474464
		0.000612584
		0.00276938
		0.00110629
		0.000951185
		0.00181368
		-0.0002485
		0.00267942
		-0.00289835
		0.000545415
		0.000268368
		-0.000314853
		-0.0010576
		-0.000218564
		-0.000112964
		-0.00107953
		-0.00241575
		-8.28711e-05
		0.000312352
		-0.0022299
		-0.000218347
		7.25007e-06
		-0.00123977
		-0.00185926
		-0.000685199
		0.000122961
		-0.00122603
		0.000427657
		-0.000150969
		0.000600144
		0.000265651
		0.001546
		-0.000674231
		0.00106272
		0.00161284
		-0.000870903
		0.00204183
		-0.00141643
		0.000215711
		0.000785656
		0.00167824
		-0.000677225
		0.000469157
		-0.000710443
		-0.00212778
		0.000860972
		0.000975397
		-0.001352
		0.000438882
		0.00011786
		-0.000167907
		0.00182632
		0.00124752
		-0.00110815
		-0.0012595
		0.00158189
		0.000520117
		0.00091865
		0.000871989
		0.000146133
		0.00027431
		0.000399318
		-0.000371958
		0.0020864
		0.00165601
		-0.000228147
		0.000695663
		-6.12763e-05
		0.000289631
		-0.00051094
		-0.000766579
		0.00114676
		0.000896895
		-0.00162573
		0.00210622
		0.000964529
		-0.000134961
		0.000341545
		0.000892718
		0.000688786
		0.00137637
		0.00100632
		-0.000256457
		-0.00053833
		-0.000173705
		-0.000243196
		-0.00154705
		-0.000409171
		0.00114329
		7.87868e-05
		0.000406071
		1.3286e-05
		0.000171941
		-0.00259024
		0.00214298
		-0.00263472
		-0.00162259
		0.000346504
		0.00143393
		-0.00130226
		0.000884781
		0.00268227
		0.0019348
		0.00231965
		0.0011133
		0.00252647
		0.00427895
		0.00304364
		0.00302619
		0.00366314
		0.00441761
		0.00465385
		0.00367087
		0.0064181
		0.00734907
		0.00798056
		0.00741731
		0.00631158
		0.0102717
		0.00751987
		0.0086925
		0.00903278
		0.0138014
		0.00893669
		0.0086756
		0.0108521
		0.00866153
		0.00448119
		0.00770145
		0.0097074
		0.0087291
		0.00916373
		0.010244
		0.0080687
		0.0070766
		0.0076155
		0.00707248
		0.00765216
		0.00654825
		0.00882918
		0.00314076
		0.00716302
		0.00636117
		0.00692525
		0.00611236
		0.00554833
		0.00409006
		0.00644604
		0.00630692
		0.00364709
		0.00523289
		0.00453416
		0.00286776
		0.00204628
		0.00358305
		0.001913
		0.00677719
		0.00195758
		0.00392721
		0.00280582
		0.00222088
		0.00244999
		0.00265526
		0.00163443
		8.64142e-05
		0.0026829
		0.00136886
		0.00295087
		0.000492134
		0.00320157
		0.00242632
		0.000893044
		0.000292952
		0.00197117
		0.0030748
		-1.6378e-05
		0.000856208
		0.000585812
		-8.62867e-05
		0.00185901
		0.00337598
		0.00132125
		-0.000295495
		-0.00142923
		0.00333797
		0.00171636
		0.000734731
		0.000326219
		0.000295146
		0.000878321
		0.000138111
		0.000756955
		0.000624277
		-0.0010285
		0.000870195
		0.000826984
		0.00210158
		0.00106508
		-0.000557145
		0.000931824
		0.00356131
		0.00202352
		-0.0028094
		-6.17542e-05
		0.00199075
		-7.11419e-05
		-0.000439361
		-0.00107828
		0.00290619
		0.000749339
		0.00106508
		-6.54671e-05
		-0.00027695
		-0.00124169
		-0.000972331
		0.00222148
		-9.57244e-06
		-0.000286173
		-0.000216985
		-0.00120691
		0.000302214
		0.00216325
		0.00296429
		0.000364529
		0.000545677
		0.00228607
		0.00152934
		0.00457368
		0.00245997
		0.00123816
		0.00221322
		0.00168346
		0.00398938
		0.00116417
		0.00674557
		0.00368453
		0.00426393
		0.00623779
		0.00781451
		0.0069089
		0.00624712
		0.00714208
		0.00545743
		0.00692061
		0.00410158
		0.00578902
		0.0063884
		0.00515513
		0.00648904
		0.00707462
		0.00688952
		0.00690629
		0.00724996
		0.00617821
		0.00567033
		0.00618076
		0.00353407
		0.00567475
		0.00599186
		0.00259354
		0.00494041
		0.00506661
		0.00439105
		0.00201838
		0.00461046
		0.00485342
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 278.702476 %	 max error: 61176.377441 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.004629 max data: 0.014377

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.001082 
	   

>>>> Computational cost: 300.270725 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 3.6869e-05  +-  5.2888e-05 (     143%); 
	Vm1    : 1.0474e-02  +-  1.2110e-03 (    11.6%); 
	h1     : 1.7893e+00  +-  4.0346e-01 (    22.5%); 
	Km1    : 4.0325e-02  +-  4.7818e-03 (    11.9%); 
	d1     : 3.0726e-02  +-  3.3596e-03 (    10.9%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.817404e-02	 4.871950e-01	 2.531964e-01	 1.272757e-01
	 -9.817404e-02	 1.000000e+00	 -3.866751e-01	 2.416373e-01	 9.266155e-01
	 4.871950e-01	 -3.866751e-01	 1.000000e+00	 1.524616e-01	 -2.136738e-01
	 2.531964e-01	 2.416373e-01	 1.524616e-01	 1.000000e+00	 1.095111e-01
	 1.272757e-01	 9.266155e-01	 -2.136738e-01	 1.095111e-01	 1.000000e+00
