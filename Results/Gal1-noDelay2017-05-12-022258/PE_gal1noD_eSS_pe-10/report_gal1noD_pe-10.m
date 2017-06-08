   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-022258
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-022258\PE_gal1noD_eSS_pe-10 


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

		v_guess(1)=0.000032;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.003957;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.970096;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.049369;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.017957;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.803e-03  1.466e-03  1.686e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 3600.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 721: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  2.885e+03  2.890e+03  2.895e+03  2.900e+03  2.905e+03  2.910e+03  2.915e+03  2.920e+03  2.925e+03  2.930e+03  2.935e+03  2.940e+03  2.945e+03  2.950e+03  2.955e+03  2.960e+03  2.965e+03  2.970e+03  2.975e+03  2.980e+03  2.985e+03  2.990e+03  2.995e+03  3.000e+03  3.005e+03  3.010e+03  3.015e+03  3.020e+03  3.025e+03  3.030e+03  3.035e+03  3.040e+03  3.045e+03  3.050e+03  3.055e+03  3.060e+03  3.065e+03  3.070e+03  3.075e+03  3.080e+03  3.085e+03  3.090e+03  3.095e+03  3.100e+03  3.105e+03  3.110e+03  3.115e+03  3.120e+03  3.125e+03  3.130e+03  3.135e+03  3.140e+03  3.145e+03  3.150e+03  3.155e+03  3.160e+03  3.165e+03  3.170e+03  3.175e+03  3.180e+03  3.185e+03  3.190e+03  3.195e+03  3.200e+03  3.205e+03  3.210e+03  3.215e+03  3.220e+03  3.225e+03  3.230e+03  3.235e+03  3.240e+03  3.245e+03  3.250e+03  3.255e+03  3.260e+03  3.265e+03  3.270e+03  3.275e+03  3.280e+03  3.285e+03  3.290e+03  3.295e+03  3.300e+03  3.305e+03  3.310e+03  3.315e+03  3.320e+03  3.325e+03  3.330e+03  3.335e+03  3.340e+03  3.345e+03  3.350e+03  3.355e+03  3.360e+03  3.365e+03  3.370e+03  3.375e+03  3.380e+03  3.385e+03  3.390e+03  3.395e+03  3.400e+03  3.405e+03  3.410e+03  3.415e+03  3.420e+03  3.425e+03  3.430e+03  3.435e+03  3.440e+03  3.445e+03  3.450e+03  3.455e+03  3.460e+03  3.465e+03  3.470e+03  3.475e+03  3.480e+03  3.485e+03  3.490e+03  3.495e+03  3.500e+03  3.505e+03  3.510e+03  3.515e+03  3.520e+03  3.525e+03  3.530e+03  3.535e+03  3.540e+03  3.545e+03  3.550e+03  3.555e+03  3.560e+03  3.565e+03  3.570e+03  3.575e+03  3.580e+03  3.585e+03  3.590e+03  3.595e+03  3.600e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.9612	  1.7646	  1.3110	  1.7332	  0.0000	  1.9915	  2.0000	  0.0000	  0.0243	  0.0131	  0.0085	  0.0000	  1.5189	  1.8621	  1.3611	  0.4912	  1.6158	  2.0000	  0.0000	  0.0043	  1.7792	  0.0000	  0.0200	  1.4173	  0.0440	  0.0003	  0.0190	  0.0094	  0.0379	  0.7414	  1.0215	  0.0000	  0.1008	  0.0000	  0.0000	  0.0011	  0.0000	  0.0118	  1.9917	  1.2283	  0.0000	  0.1645	  0.0000	  0.1673	  0.3449	  0.1365	  0.0001	  0.2431	  0.0002	  0.0000	  0.4154	  0.0049	  0.0125	  1.9388	  2.0000	  1.9463	  1.9895	  0.5985	  2.0000	
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
		0.0011321
		-0.00494175
		-0.00170223
		0.00407239
		-0.000536344
		-0.00289764
		-0.00592471
		-0.00162603
		0.00601163
		0.000713136
		0.00348112
		0.000594486
		-0.00608488
		-0.00401652
		0.00509995
		0.0048303
		0.000733887
		0.0028816
		-0.00101793
		-0.00239765
		-0.00169443
		0.00251145
		0.00211684
		-0.00158066
		0.00345707
		0.00576789
		0.00425663
		0.00897234
		0.0109509
		0.00422294
		0.0046748
		0.00964617
		0.00946124
		0.010507
		0.00745746
		0.0133312
		0.0101632
		0.0117386
		0.016731
		0.0106578
		0.0172448
		0.0134959
		0.01721
		0.0221996
		0.0205799
		0.0183605
		0.0188999
		0.0230305
		0.0220454
		0.0240134
		0.0197038
		0.0261494
		0.0183631
		0.0265107
		0.0245007
		0.02387
		0.023163
		0.0223259
		0.0162018
		0.0280196
		0.0270291
		0.0301361
		0.0229699
		0.0269705
		0.0254931
		0.0279553
		0.0202639
		0.0204249
		0.0256208
		0.0365521
		0.0235452
		0.0229437
		0.0248396
		0.021689
		0.0216351
		0.0249787
		0.0166134
		0.0271386
		0.025521
		0.0245569
		0.0228458
		0.0221508
		0.027176
		0.0201614
		0.016679
		0.0220045
		0.022013
		0.0220974
		0.020607
		0.0183249
		0.0266627
		0.0228776
		0.0247306
		0.0214585
		0.0216171
		0.0200901
		0.0245259
		0.0274324
		0.0292086
		0.0247571
		0.0230246
		0.0211573
		0.0259678
		0.0230062
		0.0265292
		0.0179178
		0.0245356
		0.023485
		0.0238799
		0.0260502
		0.0183752
		0.0253375
		0.0186859
		0.0174968
		0.0209628
		0.0155531
		0.017347
		0.0194793
		0.0186802
		0.0120138
		0.0186476
		0.0193447
		0.0142072
		0.019369
		0.0180838
		0.0122132
		0.0110886
		0.0196858
		0.0193635
		0.0110624
		0.0156793
		0.0116422
		0.0139225
		0.0160635
		0.0106953
		0.00348515
		0.012869
		0.011807
		0.00987931
		0.0116228
		0.00949163
		0.012814
		0.00692102
		0.0098664
		0.0117049
		0.00617758
		0.00817914
		0.00417262
		0.0102437
		0.00696824
		0.00833036
		0.014945
		0.00820896
		0.00604677
		0.00262637
		0.00761487
		0.00761786
		0.00451902
		0.00565151
		0.00574871
		0.00890485
		0.00878491
		0.00825967
		0.00575658
		0.00746176
		0.0069415
		0.00941352
		0.00680821
		0.00389533
		0.0072819
		0.00729021
		0.00626473
		0.0112085
		0.0064377
		0.0101513
		0.0142547
		0.011845
		0.0117308
		0.0144254
		0.00875651
		0.0203216
		0.0122179
		0.0125298
		0.0181376
		0.0145417
		0.0148774
		0.0198253
		0.0165878
		0.0234031
		0.0304186
		0.0229488
		0.0260922
		0.0206332
		0.0190109
		0.0243727
		0.0207559
		0.0253219
		0.0231462
		0.0212755
		0.0285935
		0.0235023
		0.0228493
		0.0250805
		0.0306454
		0.0277097
		0.0329485
		0.0267099
		0.0308
		0.0296448
		0.0208632
		0.0221309
		0.0320312
		0.0272428
		0.030003
		0.0300616
		0.0249963
		0.0340247
		0.0287346
		0.0260562
		0.0292923
		0.0313337
		0.0308936
		0.0333501
		0.0325648
		0.0298211
		0.031061
		0.0301063
		0.0301433
		0.0315542
		0.0281849
		0.0264384
		0.036546
		0.0285807
		0.0329166
		0.0299141
		0.0325968
		0.027108
		0.0298685
		0.0280751
		0.0296522
		0.024315
		0.0305391
		0.0282627
		0.0292916
		0.0277188
		0.0284931
		0.0183626
		0.0247763
		0.0233337
		0.02253
		0.0190706
		0.0185347
		0.0108065
		0.0171428
		0.0173143
		0.0160926
		0.0216578
		0.0172667
		0.0124701
		0.0147763
		0.0119294
		0.0119356
		0.0154742
		0.0139513
		0.0144592
		0.0122873
		0.019109
		0.0180002
		0.020317
		0.0182037
		0.0141839
		0.0155085
		0.0158726
		0.00722725
		0.0222635
		0.0132653
		0.0124765
		0.0137923
		0.012889
		0.0159685
		0.0179782
		0.010605
		0.0208312
		0.0159398
		0.0130548
		0.0125601
		0.0102476
		0.0157902
		0.0112435
		0.0100561
		0.0106317
		0.00834852
		0.0136446
		0.0126273
		0.0118501
		0.00378834
		0.0107168
		0.008353
		0.0126221
		0.0123662
		0.0105774
		0.0134946
		0.0188721
		0.0141717
		0.0144468
		0.01896
		0.0151683
		0.0109608
		0.0176986
		0.0175361
		0.0150523
		0.0163099
		0.0136899
		0.0167235
		0.0130815
		0.0162691
		0.0149088
		0.0200591
		0.0144924
		0.0168267
		0.0160276
		0.0117157
		0.0175912
		0.016966
		0.016817
		0.0209348
		0.018131
		0.0185511
		0.0162545
		0.014758
		0.0166484
		0.0150361
		0.0114471
		0.0144677
		0.0115556
		0.0100743
		0.0145624
		0.00864149
		0.0131616
		0.0119704
		0.0141248
		0.00387286
		0.0153782
		0.0109145
		0.00812424
		0.0129293
		0.00646813
		0.00525715
		0.00694415
		0.00823999
		0.00908124
		0.0123515
		0.00518383
		0.007314
		0.00985963
		0.00527998
		0.00771688
		0.0103351
		0.0135032
		0.00870096
		0.00765002
		0.0100393
		0.00899542
		0.010971
		0.00502131
		0.00941571
		0.00972658
		0.0103718
		0.0113557
		0.00610786
		0.0143911
		0.013888
		0.0130054
		0.00858416
		0.0119941
		0.013016
		0.016671
		0.017545
		0.0158966
		0.015239
		0.0187421
		0.0167658
		0.019373
		0.0222041
		0.0181856
		0.0165184
		0.0201667
		0.0266815
		0.0231694
		0.0233654
		0.0236827
		0.0182126
		0.0229828
		0.0166484
		0.0195452
		0.0192271
		0.0194241
		0.0195938
		0.018273
		0.0251421
		0.0197888
		0.0146123
		0.0228153
		0.0206964
		0.018442
		0.0218346
		0.0177333
		0.0213351
		0.0242081
		0.0209992
		0.0154715
		0.0194356
		0.0165563
		0.0168924
		0.0173682
		0.024483
		0.0227293
		0.0222445
		0.0149519
		0.0191856
		0.0184397
		0.0161339
		0.0205253
		0.0135646
		0.0126184
		0.017734
		0.0173568
		0.00947828
		0.00952698
		0.0118428
		0.0133971
		0.00843037
		0.00691824
		0.0137155
		0.0157203
		0.0111073
		0.0111116
		0.0128401
		0.0164955
		0.00746179
		0.0143078
		0.00527198
		0.00842599
		0.00699939
		0.00762129
		0.0081969
		0.0102235
		0.00272327
		0.00398586
		0.00243107
		0.00616647
		0.0041015
		0.00304934
		-0.000175199
		0.00395006
		0.00582543
		0.00501412
		0.00227066
		0.000648362
		0.00158697
		0.0108168
		0.000562753
		0.00649572
		0.00652553
		-0.00117531
		2.03776e-05
		-0.00154339
		0.00330798
		0.00371746
		0.00306682
		0.00131003
		0.000224517
		-0.00134361
		0.00206174
		0.0011549
		0.00708548
		0.00412306
		0.00669848
		-0.00227566
		0.00873489
		0.00953859
		0.00692179
		0.00341202
		0.0128171
		0.00273026
		0.0106454
		0.00990002
		0.0102348
		0.00657154
		0.0159219
		0.00526475
		0.0148788
		0.00930598
		0.00913371
		0.0132451
		0.0105676
		0.0205501
		0.0180644
		0.0160059
		0.0164457
		0.0171525
		0.0204116
		0.01821
		0.0170624
		0.0163017
		0.0216845
		0.0198777
		0.0203347
		0.0178744
		0.0107267
		0.0201627
		0.0160191
		0.01794
		0.012621
		0.00958322
		0.0124176
		0.0225698
		0.0140699
		0.0160967
		0.0170205
		0.0186172
		0.0179656
		0.0173418
		0.0174841
		0.0157477
		0.0187918
		0.0132879
		0.0134609
		0.0137972
		0.0198895
		0.0181566
		0.0144717
		0.0135148
		0.0127728
		0.0162518
		0.0161218
		0.0182541
		0.0140806
		0.0169379
		0.0147715
		0.0196881
		0.0159602
		0.0151958
		0.0130167
		0.0115433
		0.0225934
		0.0204317
		0.0157904
		0.0167439
		0.0207477
		0.0227272
		0.0239842
		0.0168384
		0.0173573
		0.020285
		0.0224491
		0.0170555
		0.0230176
		0.0180545
		0.0170407
		0.0207893
		0.0204278
		0.0234835
		0.0223859
		0.0255572
		0.0236009
		0.0250939
		0.0230748
		0.027831
		0.027912
		0.0256784
		0.0271748
		0.0252102
		0.0267969
		0.0226567
		0.0277878
		0.023164
		0.0222362
		0.0220755
		0.0190531
		0.0267358
		0.0222468
		0.0208941
		0.0189086
		0.0223918
		0.0240614
		0.0182078
		0.0153213
		0.0205409
		0.0235175
		0.0201478
		0.0212834
		0.0174734
		0.0151907
		0.0157681
		0.0171585
		0.0233842
		0.025109
		0.0177177
		0.0179988
		0.0148365
		0.0083773
		0.0182035
		0.018103
		0.0228584
		0.0207298
		0.0182671
		0.0186227
		0.0143205
		0.0199454
		0.0158186
		0.016243
		0.00968633
		0.00860999
		0.0129698
		0.0124959
		0.00981118
		0.0115125
		0.0179377
		0.0125402
		0.00665367
		0.0124928
		0.0115763
		0.0119172
		0.00641029
		0.0101153
		0.0148242
		0.0183024
		0.0138015
		0.00902412
		0.0124993
		0.0127395
		0.0118206
		0.00811418
		0.0214517
		0.0176489
		0.0165501
		0.0179442
		0.0102979
		0.0193132
		0.0105994
		0.0112455
		0.0120064
		0.0124904
		0.0138219
		0.0171952
		0.00773303
		0.0119139
		0.013407
		0.0110462
		0.00843779
		0.011639
		0.00485233
		0.00642786
		0.0137377
		0.00505024
		0.00340051
		0.00953931
		0.0135404
		0.00983692
		0.00939219
		0.0101378
		0.0115843
		0.0110842
		0.0115924
		0.0166782
		0.0157301
		0.0185975
		0.0169128
		0.0154432
		0.0180788
		0.0203628
		0.0199476
		0.0197813
		0.0162112
		0.0249166
		0.0196835
		0.0228075
		0.0186935
		0.0181676
		0.0241503
		0.0240022
		0.0186449
		0.0159612
		0.0291656
		0.0293762
		0.0189108
		0.0285188
		0.0235846
		0.0292504
		0.0285492
		0.0254192
		0.0239735
		0.0241708
		0.0307964
		0.0277839
		0.0277105
		0.0323009
		0.0288072
		0.0263971
		0.0216012
		0.0292516
		0.0236316
		0.0257382
		0.0306852
		0.0268448
		0.0287147
		0.0284471
		0.0324214
		0.0325585
		0.0355352
		0.0285672
		0.0298376
		0.0313703
		0.0286231
		0.0282972
		0.0327372
		0.0267713
		0.0271574
		0.0335086
		0.0318051
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 47.877715 %	 max error: 12602.829476 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010242 max data: 0.036552

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.006965 
	   

>>>> Computational cost: 300.301925 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  2.8671e-04 (3.46e+04%); (bound active) 
	Vm1    : 1.0725e-02  +-  1.2032e-03 (    11.2%); 
	h1     : 1.9240e+00  +-  3.6806e-01 (    19.1%); 
	Km1    : 3.5390e-02  +-  4.8410e-03 (    13.7%); 
	d1     : 3.1261e-02  +-  3.8250e-03 (    12.2%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 2.812943e-04	 1.875923e-01	 5.048295e-01	 3.109971e-01
	 2.812943e-04	 1.000000e+00	 1.900952e-01	 -1.336281e-01	 9.411290e-01
	 1.875923e-01	 1.900952e-01	 1.000000e+00	 -4.075807e-01	 2.798774e-01
	 5.048295e-01	 -1.336281e-01	 -4.075807e-01	 1.000000e+00	 -3.775413e-02
	 3.109971e-01	 9.411290e-01	 2.798774e-01	 -3.775413e-02	 1.000000e+00
