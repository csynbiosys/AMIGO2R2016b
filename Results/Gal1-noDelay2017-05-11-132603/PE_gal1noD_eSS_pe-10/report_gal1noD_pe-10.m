   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-132603
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-132603\PE_gal1noD_eSS_pe-10 


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

		v_guess(1)=0.000008;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.072810;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.620472;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.005115;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.025292;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.320e-04  2.699e-04  3.104e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 3600.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 721: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  2.165e+03  2.170e+03  2.175e+03  2.180e+03  2.185e+03  2.190e+03  2.195e+03  2.200e+03  2.205e+03  2.210e+03  2.215e+03  2.220e+03  2.225e+03  2.230e+03  2.235e+03  2.240e+03  2.245e+03  2.250e+03  2.255e+03  2.260e+03  2.265e+03  2.270e+03  2.275e+03  2.280e+03  2.285e+03  2.290e+03  2.295e+03  2.300e+03  2.305e+03  2.310e+03  2.315e+03  2.320e+03  2.325e+03  2.330e+03  2.335e+03  2.340e+03  2.345e+03  2.350e+03  2.355e+03  2.360e+03  2.365e+03  2.370e+03  2.375e+03  2.380e+03  2.385e+03  2.390e+03  2.395e+03  2.400e+03  2.405e+03  2.410e+03  2.415e+03  2.420e+03  2.425e+03  2.430e+03  2.435e+03  2.440e+03  2.445e+03  2.450e+03  2.455e+03  2.460e+03  2.465e+03  2.470e+03  2.475e+03  2.480e+03  2.485e+03  2.490e+03  2.495e+03  2.500e+03  2.505e+03  2.510e+03  2.515e+03  2.520e+03  2.525e+03  2.530e+03  2.535e+03  2.540e+03  2.545e+03  2.550e+03  2.555e+03  2.560e+03  2.565e+03  2.570e+03  2.575e+03  2.580e+03  2.585e+03  2.590e+03  2.595e+03  2.600e+03  2.605e+03  2.610e+03  2.615e+03  2.620e+03  2.625e+03  2.630e+03  2.635e+03  2.640e+03  2.645e+03  2.650e+03  2.655e+03  2.660e+03  2.665e+03  2.670e+03  2.675e+03  2.680e+03  2.685e+03  2.690e+03  2.695e+03  2.700e+03  2.705e+03  2.710e+03  2.715e+03  2.720e+03  2.725e+03  2.730e+03  2.735e+03  2.740e+03  2.745e+03  2.750e+03  2.755e+03  2.760e+03  2.765e+03  2.770e+03  2.775e+03  2.780e+03  2.785e+03  2.790e+03  2.795e+03  2.800e+03  2.805e+03  2.810e+03  2.815e+03  2.820e+03  2.825e+03  2.830e+03  2.835e+03  2.840e+03  2.845e+03  2.850e+03  2.855e+03  2.860e+03  2.865e+03  2.870e+03  2.875e+03  2.880e+03  2.885e+03  2.890e+03  2.895e+03  2.900e+03  2.905e+03  2.910e+03  2.915e+03  2.920e+03  2.925e+03  2.930e+03  2.935e+03  2.940e+03  2.945e+03  2.950e+03  2.955e+03  2.960e+03  2.965e+03  2.970e+03  2.975e+03  2.980e+03  2.985e+03  2.990e+03  2.995e+03  3.000e+03  3.005e+03  3.010e+03  3.015e+03  3.020e+03  3.025e+03  3.030e+03  3.035e+03  3.040e+03  3.045e+03  3.050e+03  3.055e+03  3.060e+03  3.065e+03  3.070e+03  3.075e+03  3.080e+03  3.085e+03  3.090e+03  3.095e+03  3.100e+03  3.105e+03  3.110e+03  3.115e+03  3.120e+03  3.125e+03  3.130e+03  3.135e+03  3.140e+03  3.145e+03  3.150e+03  3.155e+03  3.160e+03  3.165e+03  3.170e+03  3.175e+03  3.180e+03  3.185e+03  3.190e+03  3.195e+03  3.200e+03  3.205e+03  3.210e+03  3.215e+03  3.220e+03  3.225e+03  3.230e+03  3.235e+03  3.240e+03  3.245e+03  3.250e+03  3.255e+03  3.260e+03  3.265e+03  3.270e+03  3.275e+03  3.280e+03  3.285e+03  3.290e+03  3.295e+03  3.300e+03  3.305e+03  3.310e+03  3.315e+03  3.320e+03  3.325e+03  3.330e+03  3.335e+03  3.340e+03  3.345e+03  3.350e+03  3.355e+03  3.360e+03  3.365e+03  3.370e+03  3.375e+03  3.380e+03  3.385e+03  3.390e+03  3.395e+03  3.400e+03  3.405e+03  3.410e+03  3.415e+03  3.420e+03  3.425e+03  3.430e+03  3.435e+03  3.440e+03  3.445e+03  3.450e+03  3.455e+03  3.460e+03  3.465e+03  3.470e+03  3.475e+03  3.480e+03  3.485e+03  3.490e+03  3.495e+03  3.500e+03  3.505e+03  3.510e+03  3.515e+03  3.520e+03  3.525e+03  3.530e+03  3.535e+03  3.540e+03  3.545e+03  3.550e+03  3.555e+03  3.560e+03  3.565e+03  3.570e+03  3.575e+03  3.580e+03  3.585e+03  3.590e+03  3.595e+03  3.600e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.9953	  1.9991	  2.0000	  1.9108	  1.1687	  0.6195	  0.0382	  0.0040	  1.5257	  1.9322	  0.0568	  1.9861	  1.9864	  0.0005	  0.0002	  1.5428	  2.0000	  0.0034	  0.0054	  0.4960	  2.0000	  0.2948	  1.4144	  0.1963	  0.0000	  2.0000	  2.0000	  0.0002	  1.9964	  0.0057	  1.9709	  1.2990	  0.0000	  0.0289	  0.0438	  0.0000	  0.0000	  0.0808	  2.0000	  1.9526	  1.5502	  0.5802	  0.0002	  2.0000	  1.9452	  0.1164	  0.3421	  1.0483	  0.0238	  2.0000	  0.3010	  1.9137	  0.0122	  0.0598	  0.4964	  0.0000	  0.0000	  0.9216	  2.0000	  0.0002	
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
		-0.00196791
		-0.000542891
		0.000638273
		0.00248862
		-0.0022517
		-0.00107741
		0.000198991
		7.11437e-07
		-0.00122235
		-0.000186194
		0.00205815
		-0.00177151
		0.00217393
		0.00952706
		0.0051779
		0.0104883
		0.0081697
		0.00830424
		0.0111411
		0.0126042
		0.0134311
		0.00359832
		0.01364
		0.0174117
		0.0134906
		0.0119675
		0.014505
		0.0117227
		0.0165972
		0.0181652
		0.0129772
		0.0168008
		0.0182202
		0.0177697
		0.0195049
		0.0244169
		0.0181278
		0.0234377
		0.0219419
		0.0240091
		0.0204913
		0.0208407
		0.0215506
		0.0272981
		0.0199153
		0.02744
		0.0227667
		0.021777
		0.0309855
		0.0221254
		0.0244322
		0.030712
		0.0321506
		0.0276096
		0.0276527
		0.0248047
		0.0342122
		0.0245084
		0.0306949
		0.0309145
		0.0350942
		0.0267744
		0.0293894
		0.0267979
		0.0330747
		0.0301991
		0.0323094
		0.0313702
		0.0315475
		0.0329786
		0.0349714
		0.0294734
		0.0304652
		0.0253971
		0.0294477
		0.0300049
		0.0309845
		0.030729
		0.0370175
		0.0319652
		0.0371622
		0.0305901
		0.0302187
		0.0245906
		0.0312929
		0.0258417
		0.0293481
		0.0245484
		0.0340455
		0.0313293
		0.0223123
		0.0254161
		0.0246867
		0.026223
		0.0267842
		0.023471
		0.0229206
		0.0209504
		0.0214058
		0.0225774
		0.0211127
		0.0263293
		0.0214018
		0.0187281
		0.0206444
		0.0184391
		0.0191566
		0.0196701
		0.0194931
		0.018784
		0.0197658
		0.0176366
		0.0182284
		0.0199281
		0.0172839
		0.0189247
		0.0226822
		0.0147987
		0.0186349
		0.0165961
		0.0180148
		0.0205716
		0.0277857
		0.015747
		0.0204928
		0.0208742
		0.0178017
		0.0198364
		0.0194947
		0.0251388
		0.0215268
		0.0278173
		0.0234323
		0.027942
		0.022597
		0.0228925
		0.0280375
		0.0274193
		0.0234951
		0.0226159
		0.0280055
		0.0234726
		0.0223055
		0.0185063
		0.0254054
		0.0249372
		0.0294112
		0.0252968
		0.0288312
		0.0313053
		0.0270994
		0.0287057
		0.0294886
		0.0288276
		0.0235002
		0.0256976
		0.0273391
		0.0249231
		0.0261113
		0.0259889
		0.0270998
		0.0267754
		0.0275308
		0.0289682
		0.0304638
		0.0280523
		0.0272148
		0.0225201
		0.0249037
		0.0184082
		0.0265718
		0.0196545
		0.0251091
		0.0279958
		0.0229855
		0.0202776
		0.0253369
		0.0183055
		0.0169209
		0.0190422
		0.0141912
		0.0138811
		0.0164647
		0.0139831
		0.010981
		0.0203378
		0.0210277
		0.0124243
		0.0124995
		0.0145848
		0.0163449
		0.0109896
		0.0170391
		0.0114841
		0.0165776
		0.0104775
		0.013283
		0.0182662
		0.0145942
		0.0184333
		0.0182064
		0.0179833
		0.0192181
		0.0218611
		0.0185841
		0.0171844
		0.0184628
		0.0210544
		0.0131799
		0.0203815
		0.0145548
		0.023007
		0.0251345
		0.0172266
		0.0195267
		0.0210081
		0.0189075
		0.0224568
		0.0236138
		0.0200467
		0.0150402
		0.0222384
		0.0211815
		0.0143828
		0.0185266
		0.0202415
		0.0207588
		0.0161092
		0.0155349
		0.0134468
		0.0123889
		0.0118172
		0.00846906
		0.0141709
		0.00991678
		0.0100048
		0.00912608
		0.0143716
		0.00961161
		0.0112492
		0.0218431
		0.0164485
		0.0181359
		0.0142185
		0.0141416
		0.0141522
		0.0187702
		0.0167159
		0.0157281
		0.0140374
		0.00997353
		0.0147573
		0.015454
		0.0174279
		0.0134164
		0.0162379
		0.0235588
		0.0215793
		0.0181643
		0.0221833
		0.0164971
		0.0315856
		0.020455
		0.02138
		0.0225518
		0.0228971
		0.0219562
		0.0247718
		0.0290176
		0.0231886
		0.0235921
		0.0252789
		0.0222639
		0.0260983
		0.0327521
		0.0250323
		0.0286217
		0.0235599
		0.027229
		0.0291823
		0.0285334
		0.0299059
		0.0320907
		0.0263359
		0.0267072
		0.0307177
		0.0362999
		0.0357405
		0.0286357
		0.0297844
		0.0243254
		0.0316239
		0.029065
		0.0302206
		0.0301392
		0.0275855
		0.0290685
		0.0242469
		0.0271166
		0.0286828
		0.034168
		0.0260728
		0.0286481
		0.0235709
		0.0228886
		0.0236415
		0.0257593
		0.0250745
		0.0196016
		0.0259395
		0.0188815
		0.0248794
		0.0252058
		0.0214574
		0.0159832
		0.0234755
		0.0206697
		0.0211087
		0.0195665
		0.0261541
		0.0231063
		0.0203641
		0.0205084
		0.0180033
		0.0269609
		0.0196125
		0.0228486
		0.0329127
		0.0202456
		0.0194368
		0.0291512
		0.0230405
		0.0262257
		0.0222282
		0.0237527
		0.0223473
		0.0193021
		0.0293358
		0.0204992
		0.0264685
		0.0266137
		0.0238307
		0.0160291
		0.0232265
		0.0207688
		0.0175458
		0.0206262
		0.00974948
		0.0181269
		0.0255503
		0.0254439
		0.0234126
		0.0210812
		0.0140182
		0.0198534
		0.0162938
		0.0234313
		0.018562
		0.0224804
		0.0157792
		0.0203297
		0.0176896
		0.0170756
		0.0133091
		0.0248334
		0.0161124
		0.014361
		0.0222617
		0.018605
		0.0139837
		0.018322
		0.0187787
		0.0151361
		0.0150526
		0.0171118
		0.0194991
		0.0115637
		0.0215162
		0.0217386
		0.0220208
		0.0173454
		0.0234338
		0.0194879
		0.0214314
		0.0213324
		0.020634
		0.0200416
		0.0227229
		0.0210452
		0.022565
		0.0279678
		0.0171083
		0.0183109
		0.0266611
		0.0256382
		0.0262359
		0.0273669
		0.0261453
		0.0222
		0.0197205
		0.0204038
		0.0190299
		0.0212668
		0.0165649
		0.0188575
		0.016634
		0.0190032
		0.020044
		0.0172869
		0.0184108
		0.0191701
		0.0103693
		0.0164653
		0.0198016
		0.0176139
		0.0151922
		0.0186057
		0.0127661
		0.0199386
		0.0149877
		0.0104756
		0.0161184
		0.0151892
		0.0192393
		0.0192578
		0.0197668
		0.0148956
		0.0180916
		0.0187724
		0.0130248
		0.0121179
		0.0127949
		0.0189293
		0.00813628
		0.0117391
		0.0106356
		0.0129044
		0.0130455
		0.0130229
		0.0121175
		0.00982161
		0.0136671
		0.00933602
		0.00706925
		0.0106363
		0.00822629
		0.0131816
		0.0112841
		0.0106081
		0.00641663
		0.0099809
		0.00670758
		0.00723286
		0.00835414
		0.00864165
		0.0123789
		0.0052988
		0.00583525
		0.0100033
		0.0084308
		0.014314
		0.00929696
		0.00964009
		0.00936605
		0.010846
		0.0129861
		0.0123424
		0.0123058
		0.0197097
		0.0131372
		0.0170693
		0.0147682
		0.0144422
		0.0141057
		0.0232177
		0.0164578
		0.0237825
		0.0187495
		0.0174901
		0.0222899
		0.0246665
		0.0210911
		0.0218003
		0.0242272
		0.0277965
		0.0242019
		0.0213081
		0.0279036
		0.0216812
		0.0208447
		0.0254875
		0.029777
		0.0215612
		0.0255902
		0.0296851
		0.0276234
		0.0335283
		0.0340247
		0.0348285
		0.0245111
		0.0292869
		0.0279882
		0.0286709
		0.0252773
		0.0316239
		0.0275722
		0.0300835
		0.0264977
		0.0269402
		0.034276
		0.0286746
		0.030361
		0.0305792
		0.0314183
		0.0282542
		0.0256849
		0.0299099
		0.0343429
		0.0252704
		0.024962
		0.0215736
		0.0284917
		0.019799
		0.0229769
		0.0216937
		0.0164567
		0.0250661
		0.0247758
		0.0261296
		0.0271393
		0.0210679
		0.0257794
		0.0255655
		0.021477
		0.0248602
		0.016992
		0.0237694
		0.0235375
		0.0226615
		0.0206356
		0.0227876
		0.0283472
		0.0290853
		0.0219984
		0.0269268
		0.0239954
		0.0219753
		0.0243664
		0.0217696
		0.0270133
		0.0287055
		0.0308252
		0.0296908
		0.0263392
		0.0245504
		0.0269696
		0.0256465
		0.031994
		0.0273169
		0.0274961
		0.0292585
		0.0238949
		0.0276292
		0.0294162
		0.030602
		0.0245759
		0.0230331
		0.0284823
		0.0309068
		0.0298929
		0.0285407
		0.0297137
		0.0347334
		0.0288785
		0.035691
		0.0355741
		0.0251872
		0.0305591
		0.0269369
		0.0295625
		0.0303121
		0.0302059
		0.0297416
		0.033813
		0.030624
		0.0286221
		0.0268667
		0.0298491
		0.02855
		0.0316792
		0.0323262
		0.0294215
		0.032578
		0.0274756
		0.0221745
		0.0266951
		0.0218864
		0.0273642
		0.0206129
		0.0265218
		0.0215153
		0.0220619
		0.0253759
		0.0270402
		0.0250903
		0.0284216
		0.0216916
		0.0241954
		0.0246365
		0.0231775
		0.0297059
		0.0272066
		0.0243959
		0.0229199
		0.0287582
		0.0269252
		0.0289933
		0.0257258
		0.0271999
		0.0280617
		0.0235807
		0.0305513
		0.0259826
		0.0282105
		0.0319494
		0.0290774
		0.0271213
		0.0262013
		0.0310132
		0.0305907
		0.0313972
		0.0285871
		0.0355223
		0.0257052
		0.027652
		0.0248345
		0.0273385
		0.0297292
		0.0297401
		0.0236208
		0.0246957
		0.0247042
		0.0234017
		0.0326335
		0.0191703
		0.0258629
		0.0208093
		0.0191785
		0.0171413
		0.0185955
		0.0246982
		0.0205457
		0.0186429
		0.0162681
		0.0227537
		0.0237184
		0.0209731
		0.0197448
		0.0212068
		0.0204435
		0.0211539
		0.0262768
		0.0192118
		0.0237548
		0.0265982
		0.0161922
		0.0256613
		0.0303472
		0.023477
		0.0237305
		0.0186354
		0.0187792
		0.0236195
		0.0174655
		0.0214901
		0.0175584
		0.0188587
		0.0227084
		0.0167777
		0.0141981
		0.0121786
		0.0167748
		0.0199328
		0.0168392
		0.0169272
		0.0134844
		0.0105543
		0.00851081
		0.00950583
		0.0150597
		0.0154582
		0.00799993
		0.00934279
		0.0119258
		0.0141644
		0.0180419
		0.0155656
		0.0084777
		0.0213349
		0.0147347
		0.0152728
		0.0137453
		0.0156242
		0.0177358
		0.0162255
		0.0121459
		0.013559
		0.00897826
		0.0167933
		0.0177328
		0.016174
		0.0182823
		0.0171687
		0.0221195
		0.0200249
		0.0173332
		0.0170824
		0.0258657
		0.0209185
		0.0216719
		0.0179493
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 221.807550 %	 max error: 148022.725179 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010352 max data: 0.037162

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.006887 
	   

>>>> Computational cost: 300.286325 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  3.6654e-04 (4.43e+04%); (bound active) 
	Vm1    : 1.0649e-02  +-  1.3187e-03 (    12.4%); 
	h1     : 2.0064e+00  +-  6.3413e-01 (    31.6%); 
	Km1    : 3.7031e-02  +-  4.5848e-03 (    12.4%); 
	d1     : 3.0719e-02  +-  3.9497e-03 (    12.9%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.084260e-01	 1.464250e-01	 4.684737e-01	 2.318440e-01
	 -1.084260e-01	 1.000000e+00	 -2.642045e-01	 -2.456428e-01	 9.355539e-01
	 1.464250e-01	 -2.642045e-01	 1.000000e+00	 1.487238e-01	 -1.730972e-01
	 4.684737e-01	 -2.456428e-01	 1.487238e-01	 1.000000e+00	 -1.391718e-01
	 2.318440e-01	 9.355539e-01	 -1.730972e-01	 -1.391718e-01	 1.000000e+00
