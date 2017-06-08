   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-101907
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-101907\PE_gal1noD_eSS_pe-3 


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

		v_guess(1)=0.000007;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.021440;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.832845;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.012074;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.064803;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.054e-04  8.573e-05  9.859e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1080.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 217: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0039	  0.7458	  2.0000	  1.5669	  1.9916	  1.9407	  0.6355	  1.1705	  1.8097	  0.3429	  1.3975	  0.6476	  0.4684	  0.0697	  0.0823	  0.0000	  0.0700	  0.2971	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000	780.0000	840.0000	900.0000	960.0000	1020.0000	1080.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 217

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		-0.000990788
		0.00088365
		-0.005063
		0.00311157
		-0.000781208
		-0.0059855
		0.00257381
		-0.00330394
		-0.00243621
		0.0026537
		0.000313585
		-0.00192914
		-0.000450894
		-0.00136006
		0.000293685
		-0.00161967
		-0.000580353
		0.000621911
		-0.000978708
		-1.79242e-05
		-0.00144464
		0.00116404
		-0.00134757
		0.00866161
		0.0075959
		0.00800187
		0.00410526
		0.00186877
		0.00620718
		0.0132527
		0.00891835
		0.00166663
		0.0129165
		0.0157693
		0.00830318
		0.0103737
		0.012153
		0.0159482
		0.0137571
		0.0119635
		0.0096838
		0.0137547
		0.0111618
		0.013627
		0.0137847
		0.0221281
		0.0216029
		0.0209577
		0.0157067
		0.017682
		0.0247618
		0.0257292
		0.0161249
		0.0274255
		0.0288497
		0.0230286
		0.0239475
		0.0219943
		0.029532
		0.027124
		0.0285423
		0.0224306
		0.0215264
		0.0306429
		0.0234515
		0.0236759
		0.0269885
		0.0299789
		0.0290481
		0.0245176
		0.0308357
		0.0321308
		0.0320735
		0.0324899
		0.0310594
		0.0307764
		0.0288556
		0.027179
		0.0329421
		0.0277026
		0.0263941
		0.0254476
		0.0315037
		0.0328588
		0.0328414
		0.0330368
		0.0299568
		0.0283979
		0.0301316
		0.0310167
		0.0321687
		0.0251035
		0.0311934
		0.0301214
		0.0283886
		0.0382196
		0.0283872
		0.034546
		0.0293326
		0.0297657
		0.0300425
		0.030876
		0.0275315
		0.0273943
		0.0294591
		0.0288574
		0.0342692
		0.0332439
		0.0274627
		0.03369
		0.0375048
		0.0306276
		0.0318338
		0.0311458
		0.0265959
		0.0326981
		0.0346842
		0.0303343
		0.0349379
		0.0328515
		0.0370775
		0.0299786
		0.028617
		0.032127
		0.0388105
		0.0299955
		0.0357329
		0.0296351
		0.0341362
		0.032992
		0.0289017
		0.0322138
		0.0324997
		0.0303465
		0.0304507
		0.0322518
		0.0333917
		0.0342379
		0.0350576
		0.0329494
		0.0312019
		0.0320171
		0.0264437
		0.0359606
		0.025082
		0.0320368
		0.0303698
		0.034363
		0.0308665
		0.0356822
		0.0309278
		0.0316219
		0.035251
		0.0382063
		0.0312015
		0.0380531
		0.0272375
		0.037264
		0.0382436
		0.0369618
		0.0306385
		0.0268476
		0.0279617
		0.0336139
		0.0331396
		0.0307449
		0.0322632
		0.0294703
		0.0288302
		0.0319314
		0.0291744
		0.0357777
		0.0319499
		0.0297009
		0.0326434
		0.0248282
		0.032854
		0.0233708
		0.0277329
		0.0309989
		0.0278884
		0.0314375
		0.026539
		0.0266124
		0.0260669
		0.0239683
		0.0251664
		0.0298242
		0.0237183
		0.0253908
		0.0269234
		0.0258504
		0.0222796
		0.0290889
		0.0286067
		0.023565
		0.0260453
		0.0237295
		0.0264775
		0.0143944
		0.0220969
		0.0171891
		0.020604
		0.0205753
		0.0186643
		0.0243291
		0.0204898
		0.0190894
		0.0166383
		0.0170902
		0.0224004
		0.0194412
		0.0233248
		0.0205853
		0.021795
		0.0228084
		0.019334
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 49.475906 %	 max error: 5530.822467 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007233 max data: 0.038810

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.002123 
	   

>>>> Computational cost: 296.916703 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  1.6818e-03 (2.03e+03%); (bound active) 
	Vm1    : 8.9496e-03  +-  4.6355e-03 (    51.8%); 
	h1     : 5.0000e+00  +-  2.4390e+01 (     488%); (bound active) 
	Km1    : 5.8057e-02  +-  6.3692e-02 (     110%); 
	d1     : 2.6231e-02  +-  9.5320e-03 (    36.3%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.006574e-01	 -3.806564e-01	 -2.428305e-01	 -7.710737e-01
	 -9.006574e-01	 1.000000e+00	 3.802976e-01	 2.380020e-01	 9.702564e-01
	 -3.806564e-01	 3.802976e-01	 1.000000e+00	 9.859721e-01	 3.423421e-01
	 -2.428305e-01	 2.380020e-01	 9.859721e-01	 1.000000e+00	 2.075047e-01
	 -7.710737e-01	 9.702564e-01	 3.423421e-01	 2.075047e-01	 1.000000e+00
