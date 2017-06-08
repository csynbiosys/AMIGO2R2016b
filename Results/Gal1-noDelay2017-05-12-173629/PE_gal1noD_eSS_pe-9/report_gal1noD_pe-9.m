   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-173629
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-173629\PE_gal1noD_eSS_pe-9 


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
		v_guess(2)=0.019562;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.490649;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.097176;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.149732;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[7.793e-06  6.336e-06  7.286e-07  ]

-->Final process time for each experiment: 
		Experiment 1: 	 3240.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 649: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  2.885e+03  2.890e+03  2.895e+03  2.900e+03  2.905e+03  2.910e+03  2.915e+03  2.920e+03  2.925e+03  2.930e+03  2.935e+03  2.940e+03  2.945e+03  2.950e+03  2.955e+03  2.960e+03  2.965e+03  2.970e+03  2.975e+03  2.980e+03  2.985e+03  2.990e+03  2.995e+03  3.000e+03  3.005e+03  3.010e+03  3.015e+03  3.020e+03  3.025e+03  3.030e+03  3.035e+03  3.040e+03  3.045e+03  3.050e+03  3.055e+03  3.060e+03  3.065e+03  3.070e+03  3.075e+03  3.080e+03  3.085e+03  3.090e+03  3.095e+03  3.100e+03  3.105e+03  3.110e+03  3.115e+03  3.120e+03  3.125e+03  3.130e+03  3.135e+03  3.140e+03  3.145e+03  3.150e+03  3.155e+03  3.160e+03  3.165e+03  3.170e+03  3.175e+03  3.180e+03  3.185e+03  3.190e+03  3.195e+03  3.200e+03  3.205e+03  3.210e+03  3.215e+03  3.220e+03  3.225e+03  3.230e+03  3.235e+03  3.240e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.8913	  0.0593	  1.8551	  0.0402	  0.0494	  1.8308	  1.3547	  0.0558	  0.6554	  1.3914	  1.8968	  0.0598	  2.0000	  0.0304	  0.0214	  1.6655	  1.6778	  1.8834	  1.9977	  0.0397	  1.9249	  0.3640	  0.2298	  0.1044	  0.0000	  0.7210	  0.1252	  0.3668	  0.0000	  0.3195	  0.1107	  1.8631	  2.0000	  1.5351	  0.0000	  0.5200	  0.0000	  1.9990	  0.3330	  0.4160	  0.5152	  0.7444	  0.2390	  0.0000	  1.5723	  0.2176	  0.0004	  0.1566	  0.4946	  0.0000	  0.4936	  1.7129	  1.9686	  1.9825	
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
		0.00143224
		0.00124203
		-0.00191838
		-0.00254107
		-0.000367076
		0.00136008
		-0.00841746
		0.00293343
		0.00471369
		-0.00271544
		0.00509947
		-0.000314081
		0.00607559
		0.00877119
		0.00389795
		0.00522124
		0.0056305
		0.0102035
		0.00789344
		0.00190341
		0.00369401
		0.00861722
		0.011241
		0.0145223
		0.0122226
		0.0159615
		0.00866227
		0.0161996
		0.0161512
		0.0163894
		0.0199636
		0.0121785
		0.0138133
		0.016074
		0.021545
		0.0187846
		0.0185146
		0.0174029
		0.0213326
		0.0191028
		0.0191199
		0.0213739
		0.0203013
		0.0209034
		0.0216595
		0.0203211
		0.020728
		0.0196443
		0.0222166
		0.0231536
		0.022936
		0.0213009
		0.02071
		0.0215836
		0.0196805
		0.018202
		0.0225997
		0.0143098
		0.0196888
		0.017008
		0.0190796
		0.0211716
		0.021398
		0.0197476
		0.0164917
		0.0174118
		0.0210713
		0.0155493
		0.0248515
		0.0224382
		0.0220566
		0.0233403
		0.0225
		0.0209009
		0.0250737
		0.0200686
		0.0240196
		0.0279055
		0.0246205
		0.029058
		0.0237351
		0.0235001
		0.0279522
		0.0278423
		0.0264509
		0.0232722
		0.0285639
		0.028578
		0.0248117
		0.0240754
		0.0228882
		0.0259676
		0.0282059
		0.0194805
		0.0284781
		0.029633
		0.0264435
		0.025162
		0.0251401
		0.0292759
		0.0330068
		0.0275573
		0.0271856
		0.0233871
		0.0275057
		0.0290573
		0.020518
		0.0262804
		0.0262377
		0.0297935
		0.0299536
		0.0222078
		0.022043
		0.0272029
		0.0263782
		0.0250775
		0.0297266
		0.0275382
		0.0300795
		0.0278309
		0.0287592
		0.0246863
		0.0296831
		0.0270886
		0.0228711
		0.0273877
		0.0257329
		0.0279327
		0.0267723
		0.032863
		0.0294326
		0.0276184
		0.0244022
		0.0302792
		0.0274361
		0.030942
		0.0313206
		0.0300333
		0.0290531
		0.0278861
		0.0306661
		0.0282491
		0.0273468
		0.0252415
		0.0302439
		0.023717
		0.034091
		0.0273427
		0.0292436
		0.0329647
		0.0264349
		0.029285
		0.0287188
		0.030357
		0.0298048
		0.0306231
		0.0268353
		0.0268238
		0.0327257
		0.03006
		0.0322348
		0.0304021
		0.0242094
		0.0281607
		0.0384555
		0.0323851
		0.0258274
		0.0249735
		0.0293963
		0.0276121
		0.0307114
		0.027551
		0.0241439
		0.0214466
		0.0198751
		0.0212729
		0.0233093
		0.0202792
		0.0207262
		0.021099
		0.019328
		0.0227326
		0.0232776
		0.0194857
		0.0207033
		0.0208151
		0.0184095
		0.0167392
		0.0187818
		0.0250905
		0.023241
		0.0228012
		0.0257193
		0.0222789
		0.0175597
		0.0223078
		0.0171788
		0.020128
		0.0218364
		0.0288071
		0.0182922
		0.0225222
		0.0216648
		0.0245618
		0.0231801
		0.0283395
		0.0266753
		0.0279707
		0.0216808
		0.0225696
		0.0232405
		0.022375
		0.0299545
		0.0209807
		0.0232565
		0.0247489
		0.0220705
		0.0262817
		0.0239008
		0.0262199
		0.0269926
		0.0267576
		0.0235317
		0.0271994
		0.0288975
		0.0294181
		0.0293576
		0.0279229
		0.0273042
		0.0252824
		0.0311211
		0.0314832
		0.0349485
		0.0302039
		0.0270261
		0.0263555
		0.0272397
		0.0281959
		0.0318242
		0.0314242
		0.0257901
		0.0278069
		0.0307304
		0.0318571
		0.0268405
		0.027413
		0.0279946
		0.0295058
		0.0247562
		0.0254424
		0.0239623
		0.0242322
		0.0313374
		0.0300736
		0.024443
		0.0254728
		0.0281761
		0.0271483
		0.027206
		0.028275
		0.0256304
		0.0251425
		0.0261375
		0.0291834
		0.026842
		0.0245753
		0.0273351
		0.0278198
		0.0271333
		0.0273291
		0.0260294
		0.0330229
		0.027451
		0.0270684
		0.032517
		0.0224084
		0.0260479
		0.0322946
		0.0296092
		0.0299678
		0.0298382
		0.0251522
		0.0322245
		0.0324331
		0.0302969
		0.0310398
		0.0346206
		0.0273249
		0.0261025
		0.0322414
		0.0264309
		0.0319824
		0.0279999
		0.0199236
		0.0287902
		0.0259459
		0.0286917
		0.0272085
		0.0267455
		0.0215137
		0.0305307
		0.0199822
		0.031283
		0.0287862
		0.0214936
		0.0242454
		0.0214012
		0.0225611
		0.0253914
		0.0255563
		0.0276638
		0.0211988
		0.0204913
		0.0220266
		0.0250354
		0.0239435
		0.0221805
		0.0211257
		0.0238213
		0.0186154
		0.0203185
		0.0204283
		0.0243425
		0.022837
		0.0210842
		0.0258162
		0.0214254
		0.0214219
		0.0248015
		0.0235811
		0.0216384
		0.0267935
		0.0235905
		0.0266002
		0.0267523
		0.0289427
		0.0277218
		0.0236207
		0.0331514
		0.0238978
		0.023204
		0.0294171
		0.0257326
		0.0259585
		0.0275639
		0.0295878
		0.0303048
		0.0231965
		0.0214205
		0.0234376
		0.0229426
		0.0262136
		0.0219889
		0.0256651
		0.0227954
		0.0288316
		0.0167765
		0.0193272
		0.0194935
		0.0207
		0.0191557
		0.0207866
		0.0165091
		0.0206463
		0.0212441
		0.0187483
		0.0202385
		0.0206107
		0.0214619
		0.0216833
		0.0193737
		0.0163694
		0.021051
		0.0234252
		0.020535
		0.0215375
		0.0219206
		0.0187524
		0.0308843
		0.0251641
		0.0204304
		0.0230238
		0.0215976
		0.0255918
		0.0225565
		0.0268309
		0.0248617
		0.0264657
		0.028767
		0.0247992
		0.0267193
		0.0277468
		0.0302802
		0.0249616
		0.0227101
		0.0305929
		0.0252476
		0.0311009
		0.0313131
		0.0330642
		0.0263575
		0.0259635
		0.0279515
		0.0320204
		0.0277933
		0.0273505
		0.0322163
		0.0284077
		0.028278
		0.0313725
		0.0331305
		0.0280772
		0.0281469
		0.0308942
		0.0311152
		0.0342061
		0.0299189
		0.0277272
		0.0317664
		0.0239193
		0.0303377
		0.0215016
		0.0213184
		0.0225598
		0.022238
		0.0241797
		0.0249317
		0.0189183
		0.0234142
		0.021478
		0.0243732
		0.0208232
		0.0254344
		0.0204471
		0.0267712
		0.0252061
		0.0156839
		0.022247
		0.0184866
		0.0202315
		0.0190942
		0.0214978
		0.0179579
		0.0177364
		0.0213483
		0.0204318
		0.022545
		0.018825
		0.0169497
		0.0206004
		0.019888
		0.0216893
		0.0201109
		0.0208505
		0.0212232
		0.0187026
		0.0155793
		0.0166541
		0.0137745
		0.0161743
		0.0191393
		0.0134736
		0.0208056
		0.0178579
		0.0152096
		0.020939
		0.0207964
		0.0223744
		0.01959
		0.0257169
		0.0211978
		0.0154629
		0.0194607
		0.0249792
		0.0182818
		0.0197829
		0.0252413
		0.0242395
		0.0248388
		0.0256851
		0.0214807
		0.0240597
		0.0289144
		0.026703
		0.0264867
		0.0248669
		0.0302603
		0.025265
		0.0293003
		0.0255005
		0.0304895
		0.0228095
		0.0303248
		0.0346108
		0.027356
		0.0303595
		0.0264821
		0.0347092
		0.0287398
		0.0304268
		0.029248
		0.0334886
		0.0287939
		0.0301486
		0.0314422
		0.0249721
		0.0354282
		0.0303345
		0.0331856
		0.0376676
		0.0241147
		0.0260532
		0.0311118
		0.0189428
		0.0337955
		0.028012
		0.0276959
		0.0318504
		0.0285001
		0.02579
		0.0324625
		0.0296
		0.0313746
		0.0284703
		0.0266901
		0.0281069
		0.023564
		0.0243532
		0.0312101
		0.0287515
		0.0217756
		0.0257522
		0.025626
		0.0268746
		0.0260889
		0.0200647
		0.0261522
		0.0331952
		0.0232738
		0.0230251
		0.0231439
		0.0186017
		0.0196711
		0.0180513
		0.0203563
		0.0198097
		0.0186093
		0.0211474
		0.0206144
		0.0245567
		0.0226143
		0.0252949
		0.0256308
		0.024431
		0.0250122
		0.0211224
		0.0201432
		0.0243139
		0.0199347
		0.0213321
		0.0243964
		0.0225843
		0.0248625
		0.0217994
		0.020398
		0.0198234
		0.022436
		0.0173002
		0.0204897
		0.029702
		0.0171365
		0.0233272
		0.0185509
		0.0180097
		0.0196073
		0.0125374
		0.0200223
		0.0215972
		0.0207226
		0.018778
		0.0203269
		0.0250359
		0.020563
		0.0221335
		0.0161397
		0.0181338
		0.0245382
		0.0182536
		0.019015
		0.021026
		0.0203154
		0.0254848
		0.0265447
		0.0188967
		0.024409
		0.0231422
		0.0199846
		0.0169948
		0.027298
		0.0209675
		0.0175953
		0.0193456
		0.0227476
		0.0173185
		0.0186477
		0.0140966
		0.0194211
		0.0225884
		0.0247834
		0.0220017
		0.0237626
		0.0176509
		0.0237912
		0.0196615
		0.0212002
		0.0194417
		0.0215918
		0.0205407
		0.0195136
		0.0185379
		0.0224523
		0.0218285
		0.0225629
		0.0179076
		0.0202998
		0.0220938
		0.0205476
		0.0209111
		0.0208004
		0.022429
		0.0243462
		0.0267982
		0.0278089
		0.0263871
		0.0237079
		0.0264228
		0.02558
		0.0302791
		0.0282099
		0.0299567
		0.0229467
		0.030144
		0.0267171
		0.0282551
		0.0284503
		0.026383
		0.0291899
		0.0300787
		0.0277042
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 13.830154 %	 max error: 1035.482836 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.011449 max data: 0.038455

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.005549 
	   

>>>> Computational cost: 300.301925 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  6.1430e-04 (     742%); (bound active) 
	Vm1    : 1.0524e-02  +-  1.6215e-03 (    15.4%); 
	h1     : 1.8482e+00  +-  3.9519e-01 (    21.4%); 
	Km1    : 3.7551e-02  +-  3.8045e-03 (    10.1%); 
	d1     : 3.1160e-02  +-  5.1642e-03 (    16.6%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -5.850872e-02	 -6.333585e-02	 6.901493e-02	 3.782851e-01
	 -5.850872e-02	 1.000000e+00	 -4.195256e-02	 4.413850e-02	 8.946914e-01
	 -6.333585e-02	 -4.195256e-02	 1.000000e+00	 -1.642408e-01	 1.162482e-02
	 6.901493e-02	 4.413850e-02	 -1.642408e-01	 1.000000e+00	 -5.807664e-03
	 3.782851e-01	 8.946914e-01	 1.162482e-02	 -5.807664e-03	 1.000000e+00
