   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 10-Nov-2016
Problem folder:	 Results/Gal1-noDelay
Results folder in problem folder:	 Results/Gal1-noDelay/PE_gal1noD_eSS_pe-1 


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
	maxeval:	10000
	maxtime:	60
	ndiverse:	'auto'

		  default options are used. 


		>Bounds on the unknowns:

		v_guess(1)=0.002000;  v_min(1)=0.000000; v_max(1)=10.000000;
		v_guess(2)=0.100000;  v_min(2)=0.000000; v_max(2)=10.000000;
		v_guess(3)=2.000000;  v_min(3)=0.000000; v_max(3)=10.000000;
		v_guess(4)=3.100000;  v_min(4)=0.000000; v_max(4)=10.000000;
		v_guess(5)=0.020000;  v_min(5)=0.000000; v_max(5)=10.000000;
		v_guess(6)=1.000000;  v_min(6)=0.000000; v_max(6)=10.000000;
		v_guess(7)=1.000000;  v_min(7)=0.000000; v_max(7)=10.000000;
		v_guess(8)=1.000000;  v_min(8)=0.000000; v_max(8)=10.000000;
		v_guess(9)=1.000000;  v_min(9)=0.000000; v_max(9)=10.000000;



-----------------------------------------------
 Initial value problem related active settings
-----------------------------------------------
ivpsolver: cvodes
RelTol: 1e-08
AbsTol: 1e-08
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-08
ivp_AbsTol: 1e-08
sensmex: cvodesg_gal1noD
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 3


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.00176     0.08009     2.22549     3.35948     0.01006     1.00000     1.00000     1.00000     1.00000  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.570e+00  7.848e-01  7.848e-01  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1200.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 241: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		pulse-down interpolation is being used.
			Control values:
 			Input 1:	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	  2.0000	  0.0000	
			Control switching times: 	  0.0000	 23.1965	 56.4209	 69.4284	113.7166	131.9997	168.9325	197.8737	235.3596	266.8895	285.9407	324.3818	343.8907	386.2082	399.6986	441.0975	465.8405	504.7338	536.2665	558.1853	579.6588	624.7548	659.0268	688.6398	698.1188	743.5754	767.5610	789.6599	818.1289	853.7218	896.6752	911.6192	958.1879	984.5683	1018.4426	1036.4601	1073.6752	1096.3492	1134.7001	1163.5107	1200.0000


-->Number of observables:
	Experiment 1: 3

-->Observables:
		Experiment 1:
			mRNA=gal1_mrna            
			FoldedProtein=gal1_foldedP
			Fluorescence=gal1_fluo    

-->Number of sampling times for each experiment:
		Experiment 1: 	 241

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		2.0831  1.0415  1.0415
		2.0831  1.04155  1.04155
		2.0831  1.04155  1.04155
		2.08309  1.04155  1.04155
		2.08309  1.04155  1.04155
		2.04878  1.029  1.03564
		1.95684  0.982928  0.992031
		1.86941  0.938991  0.947659
		1.78628  0.897212  0.905442
		1.70722  0.857483  0.865311
		1.63204  0.819704  0.827148
		1.56055  0.783779  0.790856
		1.56006  0.778712  0.776579
		1.58572  0.791603  0.789065
		1.59918  0.80166  0.801041
		1.5293  0.768074  0.774921
		1.46285  0.734681  0.741272
		1.39966  0.702926  0.70918
		1.33957  0.67273  0.678672
		1.28243  0.644015  0.649671
		1.22809  0.616708  0.622088
		1.17642  0.590742  0.595857
		1.12729  0.56605  0.570914
		1.10504  0.550415  0.550054
		1.15303  0.574161  0.569443
		1.19866  0.597092  0.592573
		1.24205  0.618897  0.614603
		1.22657  0.615929  0.620357
		1.17497  0.590014  0.595117
		1.12591  0.565357  0.570215
		1.07925  0.54191  0.546528
		1.03488  0.519613  0.524005
		0.992686  0.49841  0.502587
		0.952564  0.478248  0.48222
		0.934794  0.465065  0.46473
		0.991131  0.492805  0.487271
		1.0447  0.519727  0.514424
		1.09565  0.545328  0.540286
		1.14409  0.569673  0.564877
		1.19016  0.592823  0.588262
		1.19358  0.599293  0.602323
		1.1436  0.574249  0.579184
		1.09607  0.550366  0.555073
		1.05088  0.527654  0.532127
		1.0079  0.506057  0.510312
		0.967034  0.485519  0.489565
		0.92817  0.465989  0.469837
		0.891214  0.447418  0.451076
		0.943112  0.468674  0.463037
		0.999041  0.49678  0.491243
		1.05223  0.523507  0.518244
		1.1028  0.548922  0.543916
		1.15089  0.57309  0.568328
		1.19663  0.596072  0.591544
		1.18132  0.593195  0.597487
		1.13195  0.568392  0.573276
		1.08499  0.544796  0.549445
		1.04034  0.522358  0.526777
		1.07424  0.534572  0.529753
		1.12374  0.559443  0.554542
		1.1708  0.583096  0.578438
		1.21556  0.605588  0.601157
		1.25812  0.626976  0.622762
		1.2986  0.647315  0.643308
		1.33708  0.666655  0.662845
		1.36185  0.682533  0.68093
		1.30361  0.654661  0.660361
		1.24824  0.626833  0.632321
		1.19558  0.600369  0.605581
		1.16668  0.581539  0.582213
		1.21164  0.603616  0.599203
		1.25439  0.625101  0.620865
		1.29505  0.645532  0.641509
		1.33371  0.664961  0.661133
		1.37048  0.683436  0.679796
		1.40544  0.701005  0.697544
		1.43868  0.717711  0.71442
		1.47029  0.733598  0.730469
		1.42893  0.717633  0.723602
		1.36741  0.686718  0.692807
		1.31468  0.658037  0.663186
		1.35238  0.67434  0.670701
		1.38822  0.692355  0.6888
		1.42232  0.709487  0.706114
		1.45473  0.725778  0.722569
		1.48556  0.741269  0.738217
		1.51487  0.756001  0.753099
		1.54275  0.770009  0.76725
		1.56926  0.78333  0.780706
		1.521  0.763898  0.770381
		1.45495  0.730713  0.737249
		1.39215  0.699152  0.705371
		1.33243  0.669141  0.675047
		1.27564  0.640602  0.646223
		1.29984  0.647942  0.644245
		1.33827  0.667251  0.663447
		1.37481  0.685615  0.681997
		1.40956  0.703077  0.699637
		1.4426  0.719682  0.71641
		1.47402  0.735472  0.732362
		1.5039  0.750488  0.74753
		1.52721  0.76419  0.761898
		1.46087  0.733685  0.740155
		1.39777  0.701979  0.708235
		1.33778  0.671828  0.677765
		1.28072  0.643157  0.648805
		1.22647  0.615893  0.621264
		1.17488  0.589967  0.595074
		1.19617  0.595844  0.591775
		1.23968  0.617707  0.6134
		1.28106  0.638501  0.634406
		1.32041  0.658275  0.65438
		1.3233  0.664422  0.66739
		1.26696  0.636239  0.6418
		1.21338  0.609314  0.614625
		1.16243  0.58371  0.588753
		1.12052  0.560263  0.564264
		1.16774  0.581556  0.576969
		1.21265  0.604124  0.599675
		1.25535  0.625584  0.621358
		1.29596  0.645992  0.641972
		1.33458  0.665398  0.661573
		1.3713  0.683851  0.680214
		1.40622  0.701398  0.697941
		1.43942  0.718085  0.714798
		1.4663  0.733456  0.730782
		1.40294  0.704575  0.710747
		1.34269  0.674297  0.68027
		1.2854  0.645505  0.651174
		1.23091  0.618126  0.623519
		1.1791  0.592089  0.597219
		1.12983  0.567331  0.572208
		1.10158  0.548987  0.549935
		1.14973  0.572506  0.567783
		1.19552  0.595518  0.590982
		1.23907  0.6174  0.613091
		1.28048  0.638209  0.63411
		1.31985  0.657997  0.654097
		1.33136  0.668291  0.669854
		1.27462  0.640092  0.64568
		1.25644  0.626248  0.624753
		1.297  0.646512  0.642514
		1.33557  0.665893  0.662071
		1.37224  0.684323  0.680694
		1.40711  0.701848  0.698396
		1.44028  0.718514  0.71523
		1.47181  0.734361  0.731239
		1.5018  0.749431  0.746462
		1.53032  0.763762  0.760938
		1.53028  0.768293  0.771106
		1.46378  0.735151  0.741708
		1.40055  0.703373  0.709644
		1.34041  0.673154  0.679102
		1.28323  0.644418  0.650077
		1.27511  0.635552  0.633043
		1.31475  0.655433  0.651518
		1.35245  0.674376  0.670641
		1.38829  0.692389  0.688842
		1.41586  0.708625  0.706039
		1.35497  0.680471  0.686409
		1.29708  0.651376  0.657114
		1.24202  0.623708  0.629158
		1.18967  0.597398  0.602583
		1.13988  0.572379  0.577309
		1.12812  0.561764  0.559639
		1.17497  0.585191  0.58057
		1.21953  0.60758  0.603168
		1.26189  0.628871  0.624678
		1.30218  0.649117  0.645128
		1.34049  0.668369  0.664576
		1.37692  0.686677  0.683069
		1.38718  0.696289  0.697824
		1.32771  0.666768  0.672626
		1.27115  0.638346  0.643952
		1.21736  0.611317  0.616641
		1.16622  0.585615  0.59068
		1.11758  0.561174  0.565989
		1.07133  0.537932  0.542509
		1.02735  0.51583  0.520183
		0.985527  0.494813  0.498953
		1.00853  0.501557  0.496756
		1.06125  0.528042  0.522826
		1.11138  0.553235  0.548275
		1.09524  0.549941  0.55399
		1.05009  0.527257  0.531724
		1.00715  0.505679  0.509928
		0.966317  0.485159  0.489201
		0.927489  0.465647  0.469492
		0.890566  0.447092  0.450749
		0.855456  0.429448  0.432924
		0.822068  0.41267  0.415975
		0.790318  0.396715  0.399858
		0.794599  0.394173  0.390501
		0.857814  0.42581  0.419572
		0.917928  0.456018  0.450069
		0.975092  0.484745  0.479086
		1.02945  0.512062  0.50668
		1.07287  0.536676  0.532727
		1.02882  0.516568  0.520849
		0.986922  0.495514  0.499663
		0.947082  0.475493  0.479436
		0.909197  0.456455  0.460206
		0.873172  0.438351  0.441918
		0.838914  0.421135  0.424527
		0.836003  0.415065  0.412352
		0.897187  0.445596  0.439565
		0.955369  0.474834  0.469075
		1.0107  0.502637  0.497161
		0.996544  0.500345  0.503984
		0.956233  0.480092  0.484081
		0.917899  0.460828  0.464621
		0.881446  0.442509  0.446118
		0.846782  0.42509  0.428523
		0.81382  0.408525  0.411789
		0.782475  0.392773  0.395877
		0.777933  0.386009  0.383817
		0.841966  0.417846  0.41154
		0.902858  0.448445  0.442419
		0.960761  0.477543  0.471812
		1.01582  0.505214  0.499763
		0.999367  0.501764  0.505475
		0.958917  0.481441  0.485444
		0.920451  0.46211  0.465917
		0.883873  0.443729  0.44735
		0.84909  0.426249  0.429694
		0.816014  0.409628  0.412904
		0.784562  0.393822  0.396936
		0.7604  0.379506  0.381826
		0.825294  0.409467  0.403137
		0.887003  0.440478  0.434369
		0.945685  0.469967  0.464159
		1.00149  0.498009  0.492484
		1.05455  0.524675  0.519422
		1.07663  0.540351  0.541075
		1.03239  0.518364  0.522718
		0.990322  0.497222  0.501388
		0.950315  0.477118  0.481077
		0.912272  0.458  0.461767
		0.876095  0.43982  0.443402
		0.841694  0.422533  0.425938
		0.80898  0.406093  0.409332
		];


-->Noise type:homo_var

		Error data 1: 
		inputs.exps.error_data{1}=[
		0.20831  0.10415  0.10415
		0.20831  0.104155  0.104155
		0.20831  0.104155  0.104155
		0.208309  0.104155  0.104155
		0.208309  0.104155  0.104155
		0.204878  0.1029  0.103564
		0.195684  0.0982928  0.0992031
		0.186941  0.0938991  0.0947659
		0.178628  0.0897212  0.0905442
		0.170722  0.0857483  0.0865311
		0.163204  0.0819704  0.0827148
		0.156055  0.0783779  0.0790856
		0.156006  0.0778712  0.0776579
		0.158572  0.0791603  0.0789065
		0.159918  0.080166  0.0801041
		0.15293  0.0768074  0.0774921
		0.146285  0.0734681  0.0741272
		0.139966  0.0702926  0.070918
		0.133957  0.067273  0.0678672
		0.128243  0.0644015  0.0649671
		0.122809  0.0616708  0.0622088
		0.117642  0.0590742  0.0595857
		0.112729  0.056605  0.0570914
		0.110504  0.0550415  0.0550054
		0.115303  0.0574161  0.0569443
		0.119866  0.0597092  0.0592573
		0.124205  0.0618897  0.0614603
		0.122657  0.0615929  0.0620357
		0.117497  0.0590014  0.0595117
		0.112591  0.0565357  0.0570215
		0.107925  0.054191  0.0546528
		0.103488  0.0519613  0.0524005
		0.0992686  0.049841  0.0502587
		0.0952564  0.0478248  0.048222
		0.0934794  0.0465065  0.046473
		0.0991131  0.0492805  0.0487271
		0.10447  0.0519727  0.0514424
		0.109565  0.0545328  0.0540286
		0.114409  0.0569673  0.0564877
		0.119016  0.0592823  0.0588262
		0.119358  0.0599293  0.0602323
		0.11436  0.0574249  0.0579184
		0.109607  0.0550366  0.0555073
		0.105088  0.0527654  0.0532127
		0.10079  0.0506057  0.0510312
		0.0967034  0.0485519  0.0489565
		0.092817  0.0465989  0.0469837
		0.0891214  0.0447418  0.0451076
		0.0943112  0.0468674  0.0463037
		0.0999041  0.049678  0.0491243
		0.105223  0.0523507  0.0518244
		0.11028  0.0548922  0.0543916
		0.115089  0.057309  0.0568328
		0.119663  0.0596072  0.0591544
		0.118132  0.0593195  0.0597487
		0.113195  0.0568392  0.0573276
		0.108499  0.0544796  0.0549445
		0.104034  0.0522358  0.0526777
		0.107424  0.0534572  0.0529753
		0.112374  0.0559443  0.0554542
		0.11708  0.0583096  0.0578438
		0.121556  0.0605588  0.0601157
		0.125812  0.0626976  0.0622762
		0.12986  0.0647315  0.0643308
		0.133708  0.0666655  0.0662845
		0.136185  0.0682533  0.068093
		0.130361  0.0654661  0.0660361
		0.124824  0.0626833  0.0632321
		0.119558  0.0600369  0.0605581
		0.116668  0.0581539  0.0582213
		0.121164  0.0603616  0.0599203
		0.125439  0.0625101  0.0620865
		0.129505  0.0645532  0.0641509
		0.133371  0.0664961  0.0661133
		0.137048  0.0683436  0.0679796
		0.140544  0.0701005  0.0697544
		0.143868  0.0717711  0.071442
		0.147029  0.0733598  0.0730469
		0.142893  0.0717633  0.0723602
		0.136741  0.0686718  0.0692807
		0.131468  0.0658037  0.0663186
		0.135238  0.067434  0.0670701
		0.138822  0.0692355  0.06888
		0.142232  0.0709487  0.0706114
		0.145473  0.0725778  0.0722569
		0.148556  0.0741269  0.0738217
		0.151487  0.0756001  0.0753099
		0.154275  0.0770009  0.076725
		0.156926  0.078333  0.0780706
		0.1521  0.0763898  0.0770381
		0.145495  0.0730713  0.0737249
		0.139215  0.0699152  0.0705371
		0.133243  0.0669141  0.0675047
		0.127564  0.0640602  0.0646223
		0.129984  0.0647942  0.0644245
		0.133827  0.0667251  0.0663447
		0.137481  0.0685615  0.0681997
		0.140956  0.0703077  0.0699637
		0.14426  0.0719682  0.071641
		0.147402  0.0735472  0.0732362
		0.15039  0.0750488  0.074753
		0.152721  0.076419  0.0761898
		0.146087  0.0733685  0.0740155
		0.139777  0.0701979  0.0708235
		0.133778  0.0671828  0.0677765
		0.128072  0.0643157  0.0648805
		0.122647  0.0615893  0.0621264
		0.117488  0.0589967  0.0595074
		0.119617  0.0595844  0.0591775
		0.123968  0.0617707  0.06134
		0.128106  0.0638501  0.0634406
		0.132041  0.0658275  0.065438
		0.13233  0.0664422  0.066739
		0.126696  0.0636239  0.06418
		0.121338  0.0609314  0.0614625
		0.116243  0.058371  0.0588753
		0.112052  0.0560263  0.0564264
		0.116774  0.0581556  0.0576969
		0.121265  0.0604124  0.0599675
		0.125535  0.0625584  0.0621358
		0.129596  0.0645992  0.0641972
		0.133458  0.0665398  0.0661573
		0.13713  0.0683851  0.0680214
		0.140622  0.0701398  0.0697941
		0.143942  0.0718085  0.0714798
		0.14663  0.0733456  0.0730782
		0.140294  0.0704575  0.0710747
		0.134269  0.0674297  0.068027
		0.12854  0.0645505  0.0651174
		0.123091  0.0618126  0.0623519
		0.11791  0.0592089  0.0597219
		0.112983  0.0567331  0.0572208
		0.110158  0.0548987  0.0549935
		0.114973  0.0572506  0.0567783
		0.119552  0.0595518  0.0590982
		0.123907  0.06174  0.0613091
		0.128048  0.0638209  0.063411
		0.131985  0.0657997  0.0654097
		0.133136  0.0668291  0.0669854
		0.127462  0.0640092  0.064568
		0.125644  0.0626248  0.0624753
		0.1297  0.0646512  0.0642514
		0.133557  0.0665893  0.0662071
		0.137224  0.0684323  0.0680694
		0.140711  0.0701848  0.0698396
		0.144028  0.0718514  0.071523
		0.147181  0.0734361  0.0731239
		0.15018  0.0749431  0.0746462
		0.153032  0.0763762  0.0760938
		0.153028  0.0768293  0.0771106
		0.146378  0.0735151  0.0741708
		0.140055  0.0703373  0.0709644
		0.134041  0.0673154  0.0679102
		0.128323  0.0644418  0.0650077
		0.127511  0.0635552  0.0633043
		0.131475  0.0655433  0.0651518
		0.135245  0.0674376  0.0670641
		0.138829  0.0692389  0.0688842
		0.141586  0.0708625  0.0706039
		0.135497  0.0680471  0.0686409
		0.129708  0.0651376  0.0657114
		0.124202  0.0623708  0.0629158
		0.118967  0.0597398  0.0602583
		0.113988  0.0572379  0.0577309
		0.112812  0.0561764  0.0559639
		0.117497  0.0585191  0.058057
		0.121953  0.060758  0.0603168
		0.126189  0.0628871  0.0624678
		0.130218  0.0649117  0.0645128
		0.134049  0.0668369  0.0664576
		0.137692  0.0686677  0.0683069
		0.138718  0.0696289  0.0697824
		0.132771  0.0666768  0.0672626
		0.127115  0.0638346  0.0643952
		0.121736  0.0611317  0.0616641
		0.116622  0.0585615  0.059068
		0.111758  0.0561174  0.0565989
		0.107133  0.0537932  0.0542509
		0.102735  0.051583  0.0520183
		0.0985527  0.0494813  0.0498953
		0.100853  0.0501557  0.0496756
		0.106125  0.0528042  0.0522826
		0.111138  0.0553235  0.0548275
		0.109524  0.0549941  0.055399
		0.105009  0.0527257  0.0531724
		0.100715  0.0505679  0.0509928
		0.0966317  0.0485159  0.0489201
		0.0927489  0.0465647  0.0469492
		0.0890566  0.0447092  0.0450749
		0.0855456  0.0429448  0.0432924
		0.0822068  0.041267  0.0415975
		0.0790318  0.0396715  0.0399858
		0.0794599  0.0394173  0.0390501
		0.0857814  0.042581  0.0419572
		0.0917928  0.0456018  0.0450069
		0.0975092  0.0484745  0.0479086
		0.102945  0.0512062  0.050668
		0.107287  0.0536676  0.0532727
		0.102882  0.0516568  0.0520849
		0.0986922  0.0495514  0.0499663
		0.0947082  0.0475493  0.0479436
		0.0909197  0.0456455  0.0460206
		0.0873172  0.0438351  0.0441918
		0.0838914  0.0421135  0.0424527
		0.0836003  0.0415065  0.0412352
		0.0897187  0.0445596  0.0439565
		0.0955369  0.0474834  0.0469075
		0.10107  0.0502637  0.0497161
		0.0996544  0.0500345  0.0503984
		0.0956233  0.0480092  0.0484081
		0.0917899  0.0460828  0.0464621
		0.0881446  0.0442509  0.0446118
		0.0846782  0.042509  0.0428523
		0.081382  0.0408525  0.0411789
		0.0782475  0.0392773  0.0395877
		0.0777933  0.0386009  0.0383817
		0.0841966  0.0417846  0.041154
		0.0902858  0.0448445  0.0442419
		0.0960761  0.0477543  0.0471812
		0.101582  0.0505214  0.0499763
		0.0999367  0.0501764  0.0505475
		0.0958917  0.0481441  0.0485444
		0.0920451  0.046211  0.0465917
		0.0883873  0.0443729  0.044735
		0.084909  0.0426249  0.0429694
		0.0816014  0.0409628  0.0412904
		0.0784562  0.0393822  0.0396936
		0.07604  0.0379506  0.0381826
		0.0825294  0.0409467  0.0403137
		0.0887003  0.0440478  0.0434369
		0.0945685  0.0469967  0.0464159
		0.100149  0.0498009  0.0492484
		0.105455  0.0524675  0.0519422
		0.107663  0.0540351  0.0541075
		0.103239  0.0518364  0.0522718
		0.0990322  0.0497222  0.0501388
		0.0950315  0.0477118  0.0481077
		0.0912272  0.0458  0.0461767
		0.0876095  0.043982  0.0443402
		0.0841694  0.0422533  0.0425938
		0.080898  0.0406093  0.0409332
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 4.151392 %	 max error: 24.655191 %
		 Observable 2 --> mean error: 3.469550 %	 max error: 24.651574 %
		 Observable 3 --> mean error: 3.479134 %	 max error: 24.651574 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.513592 max data: 2.083100
		 Observable 2 -->  max residual: 0.256746 max data: 1.041549
		 Observable 3 -->  max residual: 0.256746 max data: 1.041550

--------------------------------------------------------------------------	   

>>>> Best objective function: 224.170790 
	   

>>>> Computational cost: 56.380000 s
> 98.37% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 5.0649e-04  +-  6.1562e-04 (     122%); (bound active) 
	Vm1    : 3.5905e+00  +-  0.0000e+00 (       0%); 
	h1     : 5.1850e+00  +-  1.1024e+05 (2.13e+06%); 
	Km1    : 5.7025e+00  +-  0.0000e+00 (       0%); 
	d1     : 7.5656e-03  +-  7.0872e-04 (    9.37%); 
	alpha2 : 1.0039e+00  +-  3.7117e+00 (     370%); 
	d2     : 6.8196e-01  +-  1.0640e+01 (1.56e+03%); 
	Kf     : 1.2614e+00  +-  4.3106e+00 (     342%); 
	Kb     : 1.2610e+00  +-  4.3071e+00 (     342%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -7.405793e-03	 -1.473908e-02	 -1.049922e-02	 8.588955e-01	 -6.087618e-02	 -3.885601e-02	 -6.057443e-03	 -6.060192e-03
	 -7.405793e-03	 -1.000000e+00	 -1.654404e+00	 -1.706316e+00	 -6.483962e-03	 -1.581816e-04	 -7.339804e-04	 1.549062e-03	 1.545591e-03
	 -1.473908e-02	 -1.654404e+00	 1.000000e+00	 -5.046922e+00	 -6.125378e-03	 1.087148e-03	 -1.475896e-03	 5.440323e-03	 5.446300e-03
	 -1.049922e-02	 -1.706316e+00	 -5.046922e+00	 -1.000000e+00	 -1.501915e-02	 -1.429204e-03	 -1.027541e-03	 1.699460e-04	 1.539515e-04
	 8.588955e-01	 -6.483962e-03	 -6.125378e-03	 -1.501915e-02	 1.000000e+00	 -8.920883e-02	 -5.357286e-02	 -1.740919e-02	 -1.740983e-02
	 -6.087618e-02	 -1.581816e-04	 1.087148e-03	 -1.429204e-03	 -8.920883e-02	 1.000000e+00	 9.566421e-01	 -6.950824e-01	 -6.950827e-01
	 -3.885601e-02	 -7.339804e-04	 -1.475896e-03	 -1.027541e-03	 -5.357286e-02	 9.566421e-01	 1.000000e+00	 -8.743322e-01	 -8.743354e-01
	 -6.057443e-03	 1.549062e-03	 5.440323e-03	 1.699460e-04	 -1.740919e-02	 -6.950824e-01	 -8.743322e-01	 1.000000e+00	 9.999863e-01
	 -6.060192e-03	 1.545591e-03	 5.446300e-03	 1.539515e-04	 -1.740983e-02	 -6.950827e-01	 -8.743354e-01	 9.999863e-01	 1.000000e+00
