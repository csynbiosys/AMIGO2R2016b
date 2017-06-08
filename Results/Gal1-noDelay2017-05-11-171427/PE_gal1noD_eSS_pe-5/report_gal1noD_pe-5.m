   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-171427
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-171427\PE_gal1noD_eSS_pe-5 


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

		v_guess(1)=0.000068;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.006192;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.848637;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.233600;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.165587;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[4.105e-04  3.338e-04  3.838e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1800.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 361: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0537	  0.0497	  0.0543	  1.9119	  0.0629	  0.0387	  0.0107	  1.6133	  1.3068	  0.7201	  0.0322	  0.9035	  0.0002	  0.0000	  0.7635	  0.0000	  0.5044	  1.3667	  0.2920	  1.9772	  1.2277	  1.4843	  1.8704	  0.0414	  0.0000	  0.7151	  1.0666	  0.3781	  1.6164	  1.6254	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000	780.0000	840.0000	900.0000	960.0000	1020.0000	1080.0000	1140.0000	1200.0000	1260.0000	1320.0000	1380.0000	1440.0000	1500.0000	1560.0000	1620.0000	1680.0000	1740.0000	1800.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 361

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  1505.000  1510.000  1515.000  1520.000  1525.000  1530.000  1535.000  1540.000  1545.000  1550.000  1555.000  1560.000  1565.000  1570.000  1575.000  1580.000  1585.000  1590.000  1595.000  1600.000  1605.000  1610.000  1615.000  1620.000  1625.000  1630.000  1635.000  1640.000  1645.000  1650.000  1655.000  1660.000  1665.000  1670.000  1675.000  1680.000  1685.000  1690.000  1695.000  1700.000  1705.000  1710.000  1715.000  1720.000  1725.000  1730.000  1735.000  1740.000  1745.000  1750.000  1755.000  1760.000  1765.000  1770.000  1775.000  1780.000  1785.000  1790.000  1795.000  1800.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		-0.00269462
		0.00583439
		0.00802304
		-0.00318873
		0.000102981
		0.00163375
		-0.00202951
		-0.000860889
		0.00411582
		0.0062252
		0.00341566
		0.00361718
		0.00193415
		0.00524063
		0.00467
		-0.00180983
		0.00457996
		0.00655999
		0.00494586
		0.00263217
		0.00849929
		0.00398261
		0.00675765
		0.0121743
		0.0152696
		0.0105856
		0.00572751
		0.00669608
		0.00540068
		0.0107933
		0.012062
		0.0127864
		0.0145732
		0.0115009
		0.0115712
		0.0125459
		0.0103568
		0.0146979
		0.015259
		0.019602
		0.00644747
		0.0168305
		0.0156775
		0.0177558
		0.0168244
		0.0124309
		0.0140272
		0.0173801
		0.019849
		0.0195473
		0.0168751
		0.0279304
		0.019556
		0.0174724
		0.0206778
		0.020235
		0.025855
		0.0216573
		0.0206924
		0.0208686
		0.0194823
		0.0200728
		0.0158991
		0.0242292
		0.0258342
		0.0216746
		0.0234997
		0.0217582
		0.0219067
		0.0234364
		0.0224406
		0.0192945
		0.0211969
		0.0199176
		0.018227
		0.0222288
		0.02521
		0.0233322
		0.0218253
		0.0186312
		0.0192801
		0.021295
		0.019361
		0.0216926
		0.0213793
		0.0147594
		0.0183848
		0.0210924
		0.0203632
		0.0226738
		0.0151829
		0.0178167
		0.0127182
		0.0201693
		0.0119317
		0.0168349
		0.0154302
		0.0132344
		0.0183263
		0.0120961
		0.0123112
		0.0106826
		0.0182251
		0.0237567
		0.0157583
		0.0157891
		0.020076
		0.0180595
		0.0227949
		0.0251288
		0.0246675
		0.0212743
		0.0213402
		0.0197924
		0.0224892
		0.0207599
		0.0228889
		0.0234498
		0.0238035
		0.0242275
		0.0228726
		0.0260836
		0.0316324
		0.0337217
		0.0272883
		0.0281763
		0.0281872
		0.025074
		0.0286914
		0.0224089
		0.0245938
		0.024101
		0.0314462
		0.0319275
		0.0220664
		0.0277991
		0.0303103
		0.0290121
		0.0282706
		0.0204127
		0.0214901
		0.0243036
		0.0268444
		0.0218006
		0.0198816
		0.0224816
		0.0266565
		0.0288377
		0.0288385
		0.0233377
		0.0153791
		0.0201747
		0.0272582
		0.0251352
		0.025547
		0.0239585
		0.0210669
		0.0227434
		0.0257361
		0.0215137
		0.0168064
		0.0204057
		0.0191797
		0.0226259
		0.0196688
		0.0251565
		0.0197302
		0.0207462
		0.0175416
		0.0124924
		0.018229
		0.0152643
		0.0130885
		0.0186028
		0.0160146
		0.0147063
		0.0216904
		0.00748684
		0.0114485
		0.0164525
		0.0131682
		0.00901561
		0.0149833
		0.00834897
		0.0154959
		0.00961488
		0.0123011
		0.00964849
		0.0100315
		0.016604
		0.0146574
		0.0139456
		0.0147813
		0.0152291
		0.0115709
		0.00991859
		0.0183755
		0.0161389
		0.0197787
		0.011691
		0.0102413
		0.0141462
		0.0090469
		0.0202763
		0.0166405
		0.0185602
		0.0163567
		0.0107406
		0.00952303
		0.0143208
		0.0193354
		0.0190614
		0.0203348
		0.0087102
		0.0225598
		0.015825
		0.0183748
		0.0198123
		0.022192
		0.0250218
		0.017158
		0.0226503
		0.0235231
		0.0228462
		0.0299407
		0.0229061
		0.0234405
		0.0192689
		0.0199075
		0.0262084
		0.0256259
		0.0239216
		0.0268589
		0.022909
		0.0237378
		0.0244591
		0.023244
		0.031058
		0.0272088
		0.0228607
		0.029081
		0.0281563
		0.0304697
		0.0276172
		0.0233062
		0.0230857
		0.0330329
		0.0290858
		0.0314892
		0.0320659
		0.0327752
		0.0351349
		0.0254994
		0.0340285
		0.0259941
		0.0344959
		0.0231871
		0.0215034
		0.0319002
		0.0350263
		0.0318644
		0.0339718
		0.0294798
		0.0294936
		0.0313668
		0.0317432
		0.0316867
		0.0306561
		0.0276422
		0.033171
		0.0297627
		0.028103
		0.0369388
		0.0291633
		0.0370593
		0.02778
		0.0301205
		0.0311404
		0.0304073
		0.0316849
		0.0305058
		0.0355971
		0.032215
		0.0321836
		0.0333277
		0.0304141
		0.0304407
		0.0349671
		0.0276114
		0.0300185
		0.0307857
		0.0285871
		0.0271489
		0.0239789
		0.0235135
		0.0307475
		0.026236
		0.0255625
		0.025851
		0.0220121
		0.0278406
		0.0242894
		0.0251423
		0.0227747
		0.0216247
		0.0182713
		0.0212367
		0.0220183
		0.0210592
		0.0210554
		0.0163635
		0.0230923
		0.0205455
		0.0198692
		0.0174202
		0.0215603
		0.0208002
		0.0130872
		0.0250191
		0.021017
		0.0207274
		0.01982
		0.0171961
		0.0225335
		0.0181046
		0.0249221
		0.0219094
		0.0225548
		0.020671
		0.0249368
		0.0245403
		0.0287808
		0.0239958
		0.0270697
		0.0294979
		0.0251746
		0.0221483
		0.0267317
		0.0238063
		0.0262028
		0.0190212
		0.0288995
		0.0257999
		0.0254178
		0.0295649
		0.0301228
		0.0300929
		0.0308846
		0.0286545
		0.0282296
		0.0247626
		0.0332029
		0.0320375
		0.0332694
		0.0291033
		0.0320643
		0.0267142
		0.0323769
		0.0271431
		0.0283684
		0.0309015
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 17.646126 %	 max error: 290.836870 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009254 max data: 0.037059

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.003664 
	   

>>>> Computational cost: 300.223925 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  5.5197e-04 (     667%); (bound active) 
	Vm1    : 9.5657e-03  +-  1.9795e-03 (    20.7%); 
	h1     : 2.0070e+00  +-  9.6514e-01 (    48.1%); 
	Km1    : 4.0754e-02  +-  4.9878e-03 (    12.2%); 
	d1     : 2.7806e-02  +-  5.7326e-03 (    20.6%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -2.070103e-01	 2.448737e-01	 4.786404e-01	 1.379708e-01
	 -2.070103e-01	 1.000000e+00	 -5.574864e-01	 -3.336797e-01	 9.359090e-01
	 2.448737e-01	 -5.574864e-01	 1.000000e+00	 6.560942e-01	 -4.829886e-01
	 4.786404e-01	 -3.336797e-01	 6.560942e-01	 1.000000e+00	 -2.150605e-01
	 1.379708e-01	 9.359090e-01	 -4.829886e-01	 -2.150605e-01	 1.000000e+00
