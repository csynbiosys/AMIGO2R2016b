   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-222743
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-222743\PE_gal1noD_eSS_pe-10 


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

		v_guess(1)=0.000015;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.007402;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.519901;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.085883;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.015792;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[9.225e-04  7.500e-04  8.625e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 3600.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 721: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  2.885e+03  2.890e+03  2.895e+03  2.900e+03  2.905e+03  2.910e+03  2.915e+03  2.920e+03  2.925e+03  2.930e+03  2.935e+03  2.940e+03  2.945e+03  2.950e+03  2.955e+03  2.960e+03  2.965e+03  2.970e+03  2.975e+03  2.980e+03  2.985e+03  2.990e+03  2.995e+03  3.000e+03  3.005e+03  3.010e+03  3.015e+03  3.020e+03  3.025e+03  3.030e+03  3.035e+03  3.040e+03  3.045e+03  3.050e+03  3.055e+03  3.060e+03  3.065e+03  3.070e+03  3.075e+03  3.080e+03  3.085e+03  3.090e+03  3.095e+03  3.100e+03  3.105e+03  3.110e+03  3.115e+03  3.120e+03  3.125e+03  3.130e+03  3.135e+03  3.140e+03  3.145e+03  3.150e+03  3.155e+03  3.160e+03  3.165e+03  3.170e+03  3.175e+03  3.180e+03  3.185e+03  3.190e+03  3.195e+03  3.200e+03  3.205e+03  3.210e+03  3.215e+03  3.220e+03  3.225e+03  3.230e+03  3.235e+03  3.240e+03  3.245e+03  3.250e+03  3.255e+03  3.260e+03  3.265e+03  3.270e+03  3.275e+03  3.280e+03  3.285e+03  3.290e+03  3.295e+03  3.300e+03  3.305e+03  3.310e+03  3.315e+03  3.320e+03  3.325e+03  3.330e+03  3.335e+03  3.340e+03  3.345e+03  3.350e+03  3.355e+03  3.360e+03  3.365e+03  3.370e+03  3.375e+03  3.380e+03  3.385e+03  3.390e+03  3.395e+03  3.400e+03  3.405e+03  3.410e+03  3.415e+03  3.420e+03  3.425e+03  3.430e+03  3.435e+03  3.440e+03  3.445e+03  3.450e+03  3.455e+03  3.460e+03  3.465e+03  3.470e+03  3.475e+03  3.480e+03  3.485e+03  3.490e+03  3.495e+03  3.500e+03  3.505e+03  3.510e+03  3.515e+03  3.520e+03  3.525e+03  3.530e+03  3.535e+03  3.540e+03  3.545e+03  3.550e+03  3.555e+03  3.560e+03  3.565e+03  3.570e+03  3.575e+03  3.580e+03  3.585e+03  3.590e+03  3.595e+03  3.600e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.2278	  0.0000	  1.9877	  1.8577	  0.0049	  0.0060	  0.0052	  1.9986	  0.0048	  1.9988	  1.9967	  0.0052	  1.9888	  1.9982	  0.0065	  0.0077	  0.7752	  0.0000	  0.0000	  0.2408	  0.6122	  0.0000	  1.6107	  0.7579	  1.9744	  1.5294	  0.0234	  0.3503	  1.9999	  0.0000	  0.2541	  0.1891	  0.2328	  1.3270	  0.2424	  0.0000	  0.0000	  0.2829	  0.3779	  0.6324	  0.2466	  0.4434	  0.2377	  0.0000	  0.3905	  0.3848	  1.4079	  0.0001	  2.0000	  0.0053	  0.0049	  0.0046	  0.0039	  2.0000	  1.9979	  1.9987	  2.0000	  0.0040	  1.9998	  1.2823	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000	780.0000	840.0000	900.0000	960.0000	1020.0000	1080.0000	1140.0000	1200.0000	1260.0000	1320.0000	1380.0000	1440.0000	1500.0000	1560.0000	1620.0000	1680.0000	1740.0000	1800.0000	1860.0000	1920.0000	1980.0000	2040.0000	2100.0000	2160.0000	2220.0000	2280.0000	2340.0000	2400.0000	2460.0000	2520.0000	2580.0000	2640.0000	2700.0000	2760.0000	2820.0000	2880.0000	2940.0000	3000.0000	3060.0000	3120.0000	3180.0000	3240.0000	3300.0000	3360.0000	3420.0000	3480.0000	3540.0000	3600.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 721

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  1505.000  1510.000  1515.000  1520.000  1525.000  1530.000  1535.000  1540.000  1545.000  1550.000  1555.000  1560.000  1565.000  1570.000  1575.000  1580.000  1585.000  1590.000  1595.000  1600.000  1605.000  1610.000  1615.000  1620.000  1625.000  1630.000  1635.000  1640.000  1645.000  1650.000  1655.000  1660.000  1665.000  1670.000  1675.000  1680.000  1685.000  1690.000  1695.000  1700.000  1705.000  1710.000  1715.000  1720.000  1725.000  1730.000  1735.000  1740.000  1745.000  1750.000  1755.000  1760.000  1765.000  1770.000  1775.000  1780.000  1785.000  1790.000  1795.000  1800.000  1805.000  1810.000  1815.000  1820.000  1825.000  1830.000  1835.000  1840.000  1845.000  1850.000  1855.000  1860.000  1865.000  1870.000  1875.000  1880.000  1885.000  1890.000  1895.000  1900.000  1905.000  1910.000  1915.000  1920.000  1925.000  1930.000  1935.000  1940.000  1945.000  1950.000  1955.000  1960.000  1965.000  1970.000  1975.000  1980.000  1985.000  1990.000  1995.000  2000.000  2005.000  2010.000  2015.000  2020.000  2025.000  2030.000  2035.000  2040.000  2045.000  2050.000  2055.000  2060.000  2065.000  2070.000  2075.000  2080.000  2085.000  2090.000  2095.000  2100.000  2105.000  2110.000  2115.000  2120.000  2125.000  2130.000  2135.000  2140.000  2145.000  2150.000  2155.000  2160.000  2165.000  2170.000  2175.000  2180.000  2185.000  2190.000  2195.000  2200.000  2205.000  2210.000  2215.000  2220.000  2225.000  2230.000  2235.000  2240.000  2245.000  2250.000  2255.000  2260.000  2265.000  2270.000  2275.000  2280.000  2285.000  2290.000  2295.000  2300.000  2305.000  2310.000  2315.000  2320.000  2325.000  2330.000  2335.000  2340.000  2345.000  2350.000  2355.000  2360.000  2365.000  2370.000  2375.000  2380.000  2385.000  2390.000  2395.000  2400.000  2405.000  2410.000  2415.000  2420.000  2425.000  2430.000  2435.000  2440.000  2445.000  2450.000  2455.000  2460.000  2465.000  2470.000  2475.000  2480.000  2485.000  2490.000  2495.000  2500.000  2505.000  2510.000  2515.000  2520.000  2525.000  2530.000  2535.000  2540.000  2545.000  2550.000  2555.000  2560.000  2565.000  2570.000  2575.000  2580.000  2585.000  2590.000  2595.000  2600.000  2605.000  2610.000  2615.000  2620.000  2625.000  2630.000  2635.000  2640.000  2645.000  2650.000  2655.000  2660.000  2665.000  2670.000  2675.000  2680.000  2685.000  2690.000  2695.000  2700.000  2705.000  2710.000  2715.000  2720.000  2725.000  2730.000  2735.000  2740.000  2745.000  2750.000  2755.000  2760.000  2765.000  2770.000  2775.000  2780.000  2785.000  2790.000  2795.000  2800.000  2805.000  2810.000  2815.000  2820.000  2825.000  2830.000  2835.000  2840.000  2845.000  2850.000  2855.000  2860.000  2865.000  2870.000  2875.000  2880.000  2885.000  2890.000  2895.000  2900.000  2905.000  2910.000  2915.000  2920.000  2925.000  2930.000  2935.000  2940.000  2945.000  2950.000  2955.000  2960.000  2965.000  2970.000  2975.000  2980.000  2985.000  2990.000  2995.000  3000.000  3005.000  3010.000  3015.000  3020.000  3025.000  3030.000  3035.000  3040.000  3045.000  3050.000  3055.000  3060.000  3065.000  3070.000  3075.000  3080.000  3085.000  3090.000  3095.000  3100.000  3105.000  3110.000  3115.000  3120.000  3125.000  3130.000  3135.000  3140.000  3145.000  3150.000  3155.000  3160.000  3165.000  3170.000  3175.000  3180.000  3185.000  3190.000  3195.000  3200.000  3205.000  3210.000  3215.000  3220.000  3225.000  3230.000  3235.000  3240.000  3245.000  3250.000  3255.000  3260.000  3265.000  3270.000  3275.000  3280.000  3285.000  3290.000  3295.000  3300.000  3305.000  3310.000  3315.000  3320.000  3325.000  3330.000  3335.000  3340.000  3345.000  3350.000  3355.000  3360.000  3365.000  3370.000  3375.000  3380.000  3385.000  3390.000  3395.000  3400.000  3405.000  3410.000  3415.000  3420.000  3425.000  3430.000  3435.000  3440.000  3445.000  3450.000  3455.000  3460.000  3465.000  3470.000  3475.000  3480.000  3485.000  3490.000  3495.000  3500.000  3505.000  3510.000  3515.000  3520.000  3525.000  3530.000  3535.000  3540.000  3545.000  3550.000  3555.000  3560.000  3565.000  3570.000  3575.000  3580.000  3585.000  3590.000  3595.000  3600.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		-0.00388418
		0.00147347
		-0.000680482
		-0.00234269
		-0.00216831
		0.00562254
		0.00112322
		-0.000551744
		-0.00272611
		0.00304205
		0.00460595
		0.00547528
		0.00347964
		0.00564629
		0.00578829
		0.0065927
		0.00695759
		0.00732811
		0.012341
		0.00863373
		0.00655229
		0.00761505
		0.0043541
		0.0107646
		0.00879447
		0.00865552
		0.0119395
		0.00512506
		0.00686276
		0.00821215
		0.00992961
		0.00736584
		0.0088006
		0.0117075
		0.0119862
		0.0101805
		0.0111508
		0.0171053
		0.0161067
		0.00760345
		0.0120902
		0.0190244
		0.014971
		0.0154547
		0.0126122
		0.0185441
		0.0179228
		0.0174344
		0.01848
		0.0208407
		0.0190796
		0.0194399
		0.0181119
		0.0225568
		0.0163193
		0.0180043
		0.0243718
		0.0206558
		0.0159678
		0.0215096
		0.0182117
		0.0221536
		0.0199149
		0.0173466
		0.0236787
		0.0200396
		0.0203541
		0.0188235
		0.0215485
		0.0227313
		0.02151
		0.0129827
		0.023032
		0.0220003
		0.0165377
		0.0128222
		0.0100398
		0.0116521
		0.0145353
		0.00949179
		0.00953093
		0.00996747
		0.00968594
		0.00723396
		0.00951601
		0.00681889
		0.00868165
		0.0130066
		0.00718745
		0.00600783
		0.00288269
		0.0125253
		0.0115992
		0.00166936
		0.00787434
		0.0124074
		0.0106747
		0.00948673
		0.0162784
		0.0119587
		0.0117725
		0.014536
		0.0069162
		0.00717545
		0.0145858
		0.0143308
		0.00791019
		0.00881672
		0.0109307
		0.0125501
		0.0104963
		0.0194685
		0.00931206
		0.0171767
		0.00415746
		0.00684931
		0.0100556
		0.0135817
		0.0123411
		0.0148127
		0.0146079
		0.00823655
		0.0162635
		0.0156165
		0.0181115
		0.00836978
		0.0214546
		0.0143852
		0.0165587
		0.0176054
		0.0127011
		0.0187145
		0.015298
		0.0189062
		0.0205411
		0.0178369
		0.0199928
		0.0246261
		0.021107
		0.0227626
		0.0211541
		0.0160951
		0.0217963
		0.0216211
		0.0245624
		0.0186678
		0.0201022
		0.0214569
		0.0196277
		0.0196886
		0.0236776
		0.0171514
		0.0213643
		0.0190516
		0.0221029
		0.0188812
		0.0203133
		0.0201565
		0.0226339
		0.0196927
		0.0143356
		0.0180883
		0.0183309
		0.0225872
		0.0280037
		0.0216852
		0.0173016
		0.020484
		0.0248027
		0.0268487
		0.0212128
		0.0251319
		0.0196032
		0.0246817
		0.0216892
		0.0234162
		0.0245408
		0.02289
		0.0191452
		0.0230574
		0.0250168
		0.0148017
		0.0250617
		0.0206273
		0.0205645
		0.0279246
		0.017351
		0.0209142
		0.0149011
		0.0215147
		0.0143895
		0.0237334
		0.016842
		0.0149455
		0.0226752
		0.014712
		0.0170137
		0.0134493
		0.0145475
		0.00760293
		0.0111126
		0.0131971
		0.00990918
		0.0159173
		0.0160591
		0.0151383
		0.0114698
		0.0147595
		0.0169014
		0.013278
		0.0162212
		0.00934783
		0.01237
		0.0109368
		0.0150505
		0.0136539
		0.0151143
		0.0129426
		0.0153968
		0.0159383
		0.00878596
		0.0155362
		0.0134237
		0.0116044
		0.0103287
		0.00862821
		0.011306
		0.0113526
		0.0089572
		0.0048657
		0.0148494
		0.0104928
		0.0122214
		0.0124279
		0.0112268
		0.00944616
		0.00794134
		0.0131069
		0.00676613
		0.0107181
		0.00771649
		0.0113693
		0.0087615
		0.0126914
		0.0141136
		0.00816979
		0.0124086
		0.0167825
		0.016812
		0.0167228
		0.0117478
		0.0157789
		0.0165457
		0.0188874
		0.0147076
		0.0203388
		0.02121
		0.0168457
		0.016408
		0.0181949
		0.0176282
		0.0154201
		0.018542
		0.0203728
		0.0178509
		0.0210994
		0.0183052
		0.0155452
		0.0253715
		0.0198388
		0.014962
		0.016601
		0.0176089
		0.0130334
		0.0142818
		0.0195111
		0.0180408
		0.0201128
		0.0177204
		0.019982
		0.0196922
		0.0159047
		0.0159843
		0.0190546
		0.0232713
		0.0226734
		0.0195853
		0.0230316
		0.0164482
		0.0213585
		0.0217823
		0.0247367
		0.024511
		0.0261493
		0.0276905
		0.0288142
		0.0245023
		0.0246387
		0.0285638
		0.0183458
		0.0234957
		0.0262548
		0.0225638
		0.0259239
		0.0268255
		0.0244765
		0.0291818
		0.0285946
		0.027643
		0.0276448
		0.0306715
		0.0278965
		0.0308203
		0.0264388
		0.0248554
		0.0252129
		0.031321
		0.0253437
		0.0282725
		0.0289163
		0.0285068
		0.0313571
		0.0304547
		0.0232786
		0.0274935
		0.0300283
		0.0264671
		0.0281757
		0.0247736
		0.0237623
		0.020605
		0.018655
		0.0250985
		0.0292839
		0.0288519
		0.0180418
		0.0236225
		0.0283912
		0.0258898
		0.0271064
		0.0225654
		0.0235851
		0.0273067
		0.0264198
		0.0269518
		0.0316857
		0.0258519
		0.0270785
		0.0276756
		0.0240777
		0.0282716
		0.0323248
		0.0271862
		0.0248171
		0.026718
		0.0247371
		0.0241334
		0.0307694
		0.0266879
		0.0230316
		0.0215513
		0.0242304
		0.0170303
		0.02553
		0.0193896
		0.02503
		0.0241039
		0.0193838
		0.0287612
		0.0167964
		0.0169944
		0.0174721
		0.0261005
		0.0257142
		0.0208555
		0.0226407
		0.0206622
		0.0215344
		0.0259078
		0.021143
		0.0230895
		0.0228743
		0.0186872
		0.0245599
		0.020688
		0.0236728
		0.0217076
		0.0264499
		0.0243143
		0.0222285
		0.0247016
		0.025826
		0.0238499
		0.0306487
		0.026288
		0.0291005
		0.0185242
		0.0268088
		0.0225876
		0.0261181
		0.0233242
		0.0247311
		0.0266954
		0.0243258
		0.0259137
		0.0254527
		0.0264764
		0.0253518
		0.0310341
		0.0287596
		0.0307581
		0.02935
		0.0260228
		0.0286644
		0.0340032
		0.031387
		0.0310228
		0.0318355
		0.0315042
		0.0316569
		0.0311771
		0.03037
		0.0337888
		0.0310206
		0.0367718
		0.0256707
		0.0290962
		0.0224944
		0.0309943
		0.0282609
		0.0235976
		0.0302437
		0.0281266
		0.0259456
		0.0199133
		0.0198256
		0.0264882
		0.0255265
		0.0219544
		0.0252597
		0.0212342
		0.0288433
		0.0218159
		0.0180986
		0.0116126
		0.0201043
		0.0175391
		0.0147322
		0.0168896
		0.0116299
		0.0133742
		0.0177427
		0.0128115
		0.0178371
		0.0164282
		0.00954496
		0.0141814
		0.0223299
		0.01658
		0.0129694
		0.0139589
		0.0145704
		0.01346
		0.0153073
		0.0199644
		0.0135907
		0.0194144
		0.0148211
		0.0189646
		0.0211166
		0.0244916
		0.0201726
		0.0167268
		0.0208034
		0.0218023
		0.0203928
		0.0250387
		0.021998
		0.0234131
		0.0216545
		0.0264864
		0.025903
		0.0241195
		0.0201454
		0.023395
		0.0255077
		0.0220686
		0.0281059
		0.0285118
		0.0296236
		0.0320492
		0.0258961
		0.0261182
		0.025654
		0.0281765
		0.0254104
		0.0301237
		0.0245518
		0.0288685
		0.024355
		0.0302242
		0.0303318
		0.0303389
		0.0305162
		0.0231261
		0.0288158
		0.0332937
		0.0273932
		0.0270682
		0.0320892
		0.0321555
		0.0289875
		0.0331108
		0.0226068
		0.0299925
		0.0297495
		0.025475
		0.024017
		0.0277346
		0.0330363
		0.0288015
		0.0290115
		0.0330838
		0.0286398
		0.0257413
		0.0279563
		0.0238036
		0.0296651
		0.0292103
		0.0274201
		0.0282243
		0.0240889
		0.027962
		0.0213609
		0.0285406
		0.0243699
		0.0227476
		0.0186272
		0.0222062
		0.0186996
		0.0223308
		0.0216225
		0.0207983
		0.0264462
		0.0212155
		0.0217651
		0.0265055
		0.0243444
		0.0216918
		0.015443
		0.0277087
		0.0189941
		0.0257554
		0.0199403
		0.0255536
		0.0285812
		0.0220042
		0.0261539
		0.0229931
		0.0276019
		0.0252183
		0.0280042
		0.0213033
		0.0279373
		0.0305633
		0.024631
		0.0283947
		0.0298751
		0.0244074
		0.030452
		0.0231329
		0.0274506
		0.0256584
		0.0221603
		0.0257798
		0.0227862
		0.0258639
		0.0251329
		0.0293424
		0.021689
		0.0279202
		0.0222105
		0.022831
		0.0218741
		0.0182298
		0.0225425
		0.0189043
		0.0210173
		0.0156353
		0.0205511
		0.0246696
		0.020486
		0.0236324
		0.0191291
		0.0201478
		0.0228148
		0.0185946
		0.0239362
		0.0234201
		0.0250757
		0.0179105
		0.0230833
		0.0206575
		0.0216137
		0.0194917
		0.0183206
		0.0119414
		0.0173342
		0.0154006
		0.017562
		0.0199289
		0.0120053
		0.0145743
		0.0105617
		0.015127
		0.0136621
		0.0138216
		0.00623948
		0.00709803
		0.0118395
		0.00669235
		0.00407919
		0.00409232
		0.0096424
		0.00435771
		0.00823683
		0.00740041
		0.00444658
		0.00616219
		0.00415246
		0.00738874
		0.0115879
		0.00605316
		0.000366918
		0.00227013
		0.00694348
		0.0053226
		-0.000793802
		0.00197054
		0.00496495
		0.000651728
		0.00140081
		0.00144222
		0.00751213
		0.00835901
		0.00564834
		0.00619794
		0.00667131
		0.00793571
		0.0075803
		0.00984944
		0.000666528
		0.00741023
		0.00476055
		0.0129134
		0.00726022
		0.0151148
		0.0114981
		0.00712945
		0.0130011
		0.0119023
		0.0178579
		0.013623
		0.0139614
		0.0168685
		0.0210653
		0.0196823
		0.0196437
		0.0158372
		0.0213546
		0.0209299
		0.0155609
		0.0171708
		0.0210345
		0.0206708
		0.0213692
		0.0260898
		0.0213648
		0.0202665
		0.0211691
		0.0296309
		0.0296014
		0.0278504
		0.0275471
		0.0274137
		0.0242025
		0.0316816
		0.0297556
		0.0228729
		0.0310961
		0.0283922
		0.0304241
		0.0277032
		0.0286827
		0.0299443
		0.0291577
		0.0286287
		0.0253542
		0.0234678
		0.0288784
		0.0250921
		0.0269299
		0.0211424
		0.017764
		0.0237595
		0.0206786
		0.0233946
		0.0222125
		0.0230233
		0.0178706
		0.0218075
		0.0170141
		0.0198827
		0.0252857
		0.0203595
		0.0243922
		0.0234567
		0.0286848
		0.020156
		0.0267009
		0.0196711
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 22.918651 %	 max error: 1429.255588 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007945 max data: 0.036772

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.006368 
	   

>>>> Computational cost: 300.270725 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  3.2481e-04 (3.92e+04%); (bound active) 
	Vm1    : 1.0727e-02  +-  1.2826e-03 (      12%); 
	h1     : 1.9474e+00  +-  4.8178e-01 (    24.7%); 
	Km1    : 3.8010e-02  +-  1.3318e-02 (      35%); 
	d1     : 3.1130e-02  +-  3.7908e-03 (    12.2%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -2.068276e-01	 5.992640e-01	 -6.470757e-03	 1.779696e-01
	 -2.068276e-01	 1.000000e+00	 -2.552233e-01	 -8.479998e-02	 9.145173e-01
	 5.992640e-01	 -2.552233e-01	 1.000000e+00	 -2.389500e-01	 2.185521e-02
	 -6.470757e-03	 -8.479998e-02	 -2.389500e-01	 1.000000e+00	 -2.077867e-01
	 1.779696e-01	 9.145173e-01	 2.185521e-02	 -2.077867e-01	 1.000000e+00
