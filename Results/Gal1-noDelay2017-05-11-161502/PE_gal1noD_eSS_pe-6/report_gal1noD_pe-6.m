   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-161502
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-161502\PE_gal1noD_eSS_pe-6 


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
		v_guess(2)=0.022446;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.098061;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.021455;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.226741;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[7.544e-06  6.134e-06  7.054e-07  ]

-->Final process time for each experiment: 
		Experiment 1: 	 2160.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 433: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  1.805e+03  1.810e+03  1.815e+03  1.820e+03  1.825e+03  1.830e+03  1.835e+03  1.840e+03  1.845e+03  1.850e+03  1.855e+03  1.860e+03  1.865e+03  1.870e+03  1.875e+03  1.880e+03  1.885e+03  1.890e+03  1.895e+03  1.900e+03  1.905e+03  1.910e+03  1.915e+03  1.920e+03  1.925e+03  1.930e+03  1.935e+03  1.940e+03  1.945e+03  1.950e+03  1.955e+03  1.960e+03  1.965e+03  1.970e+03  1.975e+03  1.980e+03  1.985e+03  1.990e+03  1.995e+03  2.000e+03  2.005e+03  2.010e+03  2.015e+03  2.020e+03  2.025e+03  2.030e+03  2.035e+03  2.040e+03  2.045e+03  2.050e+03  2.055e+03  2.060e+03  2.065e+03  2.070e+03  2.075e+03  2.080e+03  2.085e+03  2.090e+03  2.095e+03  2.100e+03  2.105e+03  2.110e+03  2.115e+03  2.120e+03  2.125e+03  2.130e+03  2.135e+03  2.140e+03  2.145e+03  2.150e+03  2.155e+03  2.160e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.9118	  1.8138	  1.9130	  1.9172	  0.0010	  1.9657	  0.4813	  1.6229	  0.0001	  1.6225	  0.4495	  1.9338	  0.5976	  0.0926	  0.2271	  0.0000	  0.0000	  1.9342	  1.7284	  1.4874	  0.0047	  1.9720	  1.3747	  0.0002	  0.7117	  1.1921	  0.7185	  0.1554	  1.9288	  0.0027	  0.0057	  0.7002	  1.5766	  1.8885	  0.0046	  1.9743	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000	780.0000	840.0000	900.0000	960.0000	1020.0000	1080.0000	1140.0000	1200.0000	1260.0000	1320.0000	1380.0000	1440.0000	1500.0000	1560.0000	1620.0000	1680.0000	1740.0000	1800.0000	1860.0000	1920.0000	1980.0000	2040.0000	2100.0000	2160.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 433

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  1505.000  1510.000  1515.000  1520.000  1525.000  1530.000  1535.000  1540.000  1545.000  1550.000  1555.000  1560.000  1565.000  1570.000  1575.000  1580.000  1585.000  1590.000  1595.000  1600.000  1605.000  1610.000  1615.000  1620.000  1625.000  1630.000  1635.000  1640.000  1645.000  1650.000  1655.000  1660.000  1665.000  1670.000  1675.000  1680.000  1685.000  1690.000  1695.000  1700.000  1705.000  1710.000  1715.000  1720.000  1725.000  1730.000  1735.000  1740.000  1745.000  1750.000  1755.000  1760.000  1765.000  1770.000  1775.000  1780.000  1785.000  1790.000  1795.000  1800.000  1805.000  1810.000  1815.000  1820.000  1825.000  1830.000  1835.000  1840.000  1845.000  1850.000  1855.000  1860.000  1865.000  1870.000  1875.000  1880.000  1885.000  1890.000  1895.000  1900.000  1905.000  1910.000  1915.000  1920.000  1925.000  1930.000  1935.000  1940.000  1945.000  1950.000  1955.000  1960.000  1965.000  1970.000  1975.000  1980.000  1985.000  1990.000  1995.000  2000.000  2005.000  2010.000  2015.000  2020.000  2025.000  2030.000  2035.000  2040.000  2045.000  2050.000  2055.000  2060.000  2065.000  2070.000  2075.000  2080.000  2085.000  2090.000  2095.000  2100.000  2105.000  2110.000  2115.000  2120.000  2125.000  2130.000  2135.000  2140.000  2145.000  2150.000  2155.000  2160.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		0.00161477
		0.00430595
		-0.00110311
		-0.00165501
		-1.25867e-05
		0.00099917
		0.00386412
		0.00115105
		-0.000367889
		-0.00104683
		0.00476712
		0.00554379
		0.00752647
		0.0029952
		0.00630923
		0.00528577
		0.0100235
		0.00829537
		0.0044162
		0.0122632
		0.00989825
		0.00597044
		0.0137679
		0.00877778
		0.0168329
		0.0134221
		0.011217
		0.00576061
		0.0142532
		0.0180292
		0.0154205
		0.0169302
		0.0235605
		0.0134371
		0.0201853
		0.0202019
		0.0259644
		0.0176738
		0.0241104
		0.0236379
		0.0214373
		0.0245103
		0.0242025
		0.0251579
		0.0208187
		0.023089
		0.028358
		0.0323315
		0.0250249
		0.0253869
		0.0249389
		0.0304092
		0.0289409
		0.0257881
		0.0302717
		0.02811
		0.0341809
		0.0252894
		0.0330443
		0.0244426
		0.0254069
		0.0231172
		0.0192259
		0.0236018
		0.0221301
		0.0138654
		0.0241525
		0.0233355
		0.023637
		0.021242
		0.0226963
		0.0220952
		0.0266585
		0.0163155
		0.0204781
		0.0178851
		0.0189833
		0.0207797
		0.0228417
		0.0241256
		0.0182059
		0.0227826
		0.0260363
		0.0179748
		0.0196997
		0.0234261
		0.0238967
		0.0264639
		0.0218705
		0.0213046
		0.0270929
		0.0175219
		0.0216873
		0.0236953
		0.0275487
		0.0219465
		0.029565
		0.0274209
		0.0281233
		0.0278222
		0.0325679
		0.0273209
		0.0263339
		0.0245397
		0.0236363
		0.0278428
		0.0248069
		0.0253355
		0.0220193
		0.0272026
		0.0246325
		0.0191179
		0.0233459
		0.0205412
		0.0237959
		0.0210711
		0.0155928
		0.0232811
		0.021275
		0.0198413
		0.023061
		0.0217497
		0.0196957
		0.0219185
		0.0221538
		0.0173493
		0.0200832
		0.0203696
		0.0220792
		0.023607
		0.0224866
		0.0216299
		0.0246805
		0.0233622
		0.028656
		0.0218807
		0.0287786
		0.0241095
		0.0205651
		0.0239476
		0.0259603
		0.0267286
		0.0245185
		0.0214552
		0.0255272
		0.0243874
		0.0265867
		0.0242298
		0.0279725
		0.0225892
		0.0277535
		0.0226762
		0.0297452
		0.0352328
		0.0355891
		0.0281366
		0.0247169
		0.0295408
		0.0227507
		0.0276931
		0.0327159
		0.0324699
		0.027603
		0.0324022
		0.0256541
		0.028828
		0.0321918
		0.0335692
		0.0317279
		0.0278775
		0.0307723
		0.0314396
		0.0279931
		0.0290838
		0.0306878
		0.0297191
		0.0336526
		0.0298189
		0.031666
		0.0322303
		0.0310527
		0.0336324
		0.0297765
		0.0269603
		0.0326457
		0.0301591
		0.0317051
		0.025041
		0.0285117
		0.0243975
		0.0318783
		0.0277982
		0.0252755
		0.0239794
		0.024812
		0.0240485
		0.0251201
		0.0276601
		0.024134
		0.0194451
		0.0222647
		0.0250564
		0.0194829
		0.0180405
		0.019355
		0.0141123
		0.0147742
		0.0174105
		0.0163676
		0.0157439
		0.0115066
		0.0171121
		0.0135782
		0.014913
		0.0114142
		0.0222583
		0.0176278
		0.0146146
		0.0165123
		0.0118848
		0.0147305
		0.0150653
		0.0101793
		0.015523
		0.0140811
		0.016765
		0.0189995
		0.0166792
		0.0177594
		0.0166511
		0.0190723
		0.0170522
		0.0207115
		0.0200233
		0.0211221
		0.0164771
		0.0197418
		0.0208537
		0.0212252
		0.0233696
		0.021214
		0.0253039
		0.0274244
		0.0277259
		0.0244262
		0.0284502
		0.0194924
		0.026851
		0.029684
		0.0220576
		0.0269688
		0.0247187
		0.0228406
		0.0229894
		0.0289765
		0.0231578
		0.0220489
		0.0222386
		0.0265678
		0.0213875
		0.0204789
		0.0258474
		0.0215349
		0.0210694
		0.0237997
		0.0179357
		0.0218193
		0.0185345
		0.0213521
		0.0232257
		0.0213294
		0.0214365
		0.0231078
		0.0179764
		0.0242131
		0.0271572
		0.0295901
		0.0261567
		0.0218439
		0.0249778
		0.024927
		0.0184858
		0.025312
		0.0251646
		0.0208889
		0.0229256
		0.0207024
		0.0238594
		0.0238633
		0.022957
		0.0239964
		0.0247379
		0.0162319
		0.0195244
		0.0229185
		0.0184413
		0.0162398
		0.0244344
		0.0129614
		0.0183243
		0.0203413
		0.0249868
		0.0187329
		0.0196463
		0.0165009
		0.018786
		0.0238706
		0.0195817
		0.0184422
		0.0224393
		0.0205087
		0.0281032
		0.0210631
		0.0245408
		0.0229555
		0.0239935
		0.0240444
		0.0267757
		0.026184
		0.0312375
		0.024495
		0.03012
		0.0250019
		0.0227566
		0.0311816
		0.0280683
		0.0277234
		0.0248941
		0.0268837
		0.0310177
		0.0276412
		0.0299988
		0.0290529
		0.0260898
		0.0304293
		0.0274016
		0.0290437
		0.0272515
		0.0287428
		0.0338566
		0.0279606
		0.0258767
		0.0302557
		0.0221602
		0.0320006
		0.0346825
		0.0269779
		0.0265044
		0.0299399
		0.0283975
		0.0247924
		0.0311506
		0.026291
		0.0330794
		0.033408
		0.0291957
		0.0280628
		0.0287915
		0.0263814
		0.0231398
		0.0253077
		0.020648
		0.023523
		0.0294893
		0.0251609
		0.0243981
		0.0260534
		0.0223461
		0.0236027
		0.0289374
		0.014882
		0.0190251
		0.0181341
		0.0161008
		0.0151533
		0.0201369
		0.018206
		0.0153311
		0.0144674
		0.0172504
		0.0123302
		0.0130368
		0.015165
		0.0116451
		0.014199
		0.0130643
		0.013265
		0.0137649
		0.0212478
		0.0187604
		0.0184222
		0.019986
		0.0182336
		0.0249307
		0.0178353
		0.0153045
		0.0180731
		0.0204447
		0.0186294
		0.0201726
		0.0221697
		0.0221608
		0.0173196
		0.0245063
		0.020437
		0.017618
		0.0204395
		0.020805
		0.0264546
		0.0201925
		0.0274318
		0.0258493
		0.0239367
		0.0250307
		0.0248409
		0.0260634
		0.0294077
		0.0263933
		0.0259233
		0.0212682
		0.0258894
		0.0254397
		0.0224106
		0.0240778
		0.0198695
		0.0194889
		0.0228409
		0.0200114
		0.0224837
		0.0185702
		0.0265001
		0.016776
		0.0245015
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 18.982960 %	 max error: 2082.438586 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009319 max data: 0.035589

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.003555 
	   

>>>> Computational cost: 300.161524 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  7.5455e-04 (9.11e+04%); (bound active) 
	Vm1    : 1.1195e-02  +-  1.7036e-03 (    15.2%); 
	h1     : 1.7304e+00  +-  5.9607e-01 (    34.4%); 
	Km1    : 2.2622e-02  +-  1.4928e-02 (      66%); 
	d1     : 3.2903e-02  +-  5.8596e-03 (    17.8%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -5.079391e-02	 4.514271e-01	 2.169294e-01	 4.387195e-01
	 -5.079391e-02	 1.000000e+00	 1.228872e-01	 -3.978034e-01	 8.693406e-01
	 4.514271e-01	 1.228872e-01	 1.000000e+00	 -1.791277e-01	 3.558889e-01
	 2.169294e-01	 -3.978034e-01	 -1.791277e-01	 1.000000e+00	 -3.196544e-01
	 4.387195e-01	 8.693406e-01	 3.558889e-01	 -3.196544e-01	 1.000000e+00
