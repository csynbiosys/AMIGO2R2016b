   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 17-Nov-2017
Problem folder:	 Results\Gal1-noDelay2017-11-17-212045
Results folder in problem folder:	 Results\Gal1-noDelay2017-11-17-212045\PE_gal1noD_eSS_pe-5 


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

		v_guess(1)=0.041400;  v_min(1)=0.004140; v_max(1)=0.414000;
		v_guess(2)=1.890000;  v_min(2)=0.189000; v_max(2)=5.000000;
		v_guess(3)=0.036800;  v_min(3)=0.003680; v_max(3)=0.368000;
		v_guess(4)=0.030000;  v_min(4)=0.003000; v_max(4)=0.300000;



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

--> Number of states: 4


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.00003     0.04140     1.89000     0.03680     0.03000     0.01000     0.01000     0.00200     0.00230  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.380e+00  1.150e+00  1.000e+00  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1500.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 301: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0192	
			Control switching times: 	  0.0000	1500.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 301

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.12205
		0.939379
		1.04629
		0.780105
		0.91214
		1.08664
		0.940195
		1.02855
		0.946675
		1.04298
		1.09129
		1.14075
		1.03165
		0.86337
		1.0149
		0.890024
		0.980208
		0.894359
		0.90433
		0.975958
		0.886212
		0.916328
		1.03357
		0.994893
		0.932206
		0.997897
		0.827557
		1.02873
		0.853982
		0.886675
		0.935503
		0.981554
		0.909923
		0.852653
		0.933387
		0.990874
		0.76832
		1.01198
		0.768486
		0.897
		0.983999
		0.934483
		0.779196
		0.899599
		0.786699
		0.814181
		0.577168
		0.683192
		0.90108
		0.721909
		0.801902
		0.900661
		0.761219
		0.590003
		0.666967
		0.767774
		0.674191
		0.631208
		0.745959
		0.858303
		0.812369
		0.730639
		0.842147
		0.78382
		0.684338
		0.584989
		0.654784
		0.714662
		0.476296
		0.70096
		0.890337
		0.579912
		0.700141
		0.686975
		0.627657
		0.753843
		0.641543
		0.485348
		0.584942
		0.557881
		0.711631
		0.539028
		0.661098
		0.656334
		0.432131
		0.51171
		0.574283
		0.503998
		0.393776
		0.63977
		0.522533
		0.585351
		0.732928
		0.634272
		0.7431
		0.629462
		0.595118
		0.60441
		0.62151
		0.477899
		0.56713
		0.405523
		0.53003
		0.384945
		0.601188
		0.465877
		0.432066
		0.620672
		0.555182
		0.515489
		0.403511
		0.552311
		0.499302
		0.422628
		0.402423
		0.432111
		0.425626
		0.48033
		0.452628
		0.519502
		0.387828
		0.450977
		0.565641
		0.475755
		0.490219
		0.548584
		0.501455
		0.553838
		0.2872
		0.351335
		0.563796
		0.576203
		0.429201
		0.436794
		0.540966
		0.423335
		0.224768
		0.387432
		0.268132
		0.328294
		0.476929
		0.460558
		0.457284
		0.296835
		0.310639
		0.451346
		0.332692
		0.351865
		0.475317
		0.51327
		0.577237
		0.35097
		0.372145
		0.357046
		0.384138
		0.561083
		0.289929
		0.389795
		0.285545
		0.525169
		0.579503
		0.344675
		0.336207
		0.372861
		0.496769
		0.643404
		0.247577
		0.312578
		0.532824
		0.460301
		0.406629
		0.32865
		0.282789
		0.515062
		0.299377
		0.206684
		0.318129
		0.360423
		0.29749
		0.18207
		0.237234
		0.522995
		0.445306
		0.393371
		0.399372
		0.216014
		0.422511
		0.382093
		0.382282
		0.207994
		0.440849
		0.305811
		0.409287
		0.396905
		0.293599
		0.351865
		0.355688
		0.372419
		0.366716
		0.135484
		0.243244
		0.406713
		0.530478
		0.252188
		0.201002
		0.344602
		0.101106
		0.189775
		0.222766
		0.199824
		0.210052
		0.103999
		0.388983
		0.342787
		0.367154
		0.287098
		0.332599
		0.366911
		0.430956
		0.24369
		0.458263
		0.274981
		0.20331
		0.273941
		0.440308
		0.524778
		0.478989
		0.214629
		0.286008
		0.280335
		0.26811
		0.18114
		0.253907
		0.268322
		0.263493
		0.3667
		0.142686
		0.405024
		0.372733
		0.363492
		0.327179
		0.326827
		0.285658
		0.321342
		0.121243
		0.141477
		0.273344
		0.380806
		0.339216
		0.234248
		0.227227
		0.412036
		0.263014
		0.340305
		0.454874
		0.37579
		0.334894
		0.142726
		0.284821
		0.227509
		0.0628445
		0.303868
		0.312598
		0.271336
		0.208045
		0.188003
		0.184823
		0.344997
		0.263075
		0.373186
		0.185435
		0.154332
		0.373805
		0.239665
		0.12833
		0.272419
		0.391423
		0.241223
		0.32275
		0.524734
		0.334725
		0.282352
		0.0735339
		0.323331
		0.253876
		0.32981
		0.238924
		0.149091
		0.411122
		0.00972574
		0.224328
		0.0277427
		0.0217181
		0.164471
		0.0622695
		0.271369
		0.426846
		0.221166
		0.247755
		0.141373
		0.248254
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 38.249873 %	 max error: 2499.587241 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.273283 max data: 1.140746

--------------------------------------------------------------------------	   

>>>> Best objective function: 2.958648 
	   

>>>> Computational cost: 300.145924 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Vm1    : 2.4270e-01  +-  1.0574e+06 (4.36e+08%); 
	h1     : 1.2781e+00  +-  0.0000e+00 (       0%); 
	Km1    : 1.9544e-01  +-  1.5240e+06 ( 7.8e+08%); 
	d1     : 4.0019e-02  +-  3.5103e-02 (    87.7%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -2.280703e+01	 1.319102e+00	 6.072602e-03
	 -2.280703e+01	 -1.000000e+00	 -1.044620e+01	 1.722169e-02
	 1.319102e+00	 -1.044620e+01	 1.000000e+00	 2.142385e-03
	 6.072602e-03	 1.722169e-02	 2.142385e-03	 1.000000e+00
