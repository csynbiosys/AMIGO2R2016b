   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-012610
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-012610\PE_gal1noD_eSS_pe-3 


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
		v_guess(2)=0.010643;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.013442;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.207793;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.003335;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[7.326e-04  5.956e-04  6.850e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1080.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 217: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.4927	  0.5835	  0.3817	  0.6814	  0.4647	  0.8954	  0.4588	  0.3557	  0.0027	  0.5462	  0.4723	  0.3958	  0.9318	  0.5165	  0.7599	  0.0000	  0.5147	  0.6724	
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
		0.00111462
		-0.00407858
		0.000162994
		0.000320911
		0.00316705
		-0.00185221
		0.00093541
		0.00127453
		0.00160603
		-0.00117118
		-0.000443444
		-0.000774991
		0.000564596
		0.00553013
		0.0018831
		0.00110172
		0.012923
		0.00295614
		0.00432817
		0.00377514
		0.00869168
		0.00877247
		0.0135781
		0.00950091
		0.0135197
		0.0167996
		0.00883916
		0.0122973
		0.0150425
		0.0162763
		0.0216642
		0.0203027
		0.0221003
		0.017367
		0.0220424
		0.0161951
		0.0209593
		0.0179108
		0.0221443
		0.0266781
		0.0262417
		0.0274906
		0.0242757
		0.0271319
		0.0214145
		0.0216367
		0.0273068
		0.0245156
		0.0295397
		0.0235429
		0.0220371
		0.0275405
		0.0268195
		0.0284276
		0.0216599
		0.0269734
		0.0253267
		0.0313185
		0.0277978
		0.0270206
		0.029839
		0.0298012
		0.0274875
		0.0274597
		0.0312356
		0.0302912
		0.0269402
		0.0311789
		0.0278196
		0.0297638
		0.0234978
		0.0287308
		0.0300535
		0.0268817
		0.0264659
		0.0285664
		0.0253071
		0.0304771
		0.026208
		0.0251182
		0.0292152
		0.0298546
		0.0232263
		0.0298052
		0.0327801
		0.0359576
		0.0341983
		0.0318943
		0.0270613
		0.0333212
		0.0321352
		0.0367248
		0.0233041
		0.0302526
		0.0313379
		0.0340581
		0.0321281
		0.0274345
		0.0365523
		0.0292509
		0.0350862
		0.0312877
		0.0289581
		0.0325496
		0.0277081
		0.0351959
		0.0274813
		0.0323699
		0.0245583
		0.0319782
		0.0230478
		0.0288503
		0.0235139
		0.0287922
		0.0292547
		0.0239288
		0.0216956
		0.0253677
		0.0211052
		0.0198621
		0.023024
		0.0192666
		0.022455
		0.0221681
		0.0175301
		0.0267159
		0.0213424
		0.0224226
		0.0284275
		0.0210656
		0.020644
		0.0254853
		0.024853
		0.0267908
		0.0233073
		0.0263928
		0.0209751
		0.0273351
		0.0260577
		0.0231459
		0.0299113
		0.0272172
		0.0269882
		0.0280374
		0.0262623
		0.0269699
		0.0250296
		0.0246989
		0.0208511
		0.0275386
		0.031955
		0.0332823
		0.0243468
		0.0243801
		0.029396
		0.0314221
		0.0249511
		0.0298165
		0.0342304
		0.0257584
		0.0297429
		0.0309556
		0.0301079
		0.0318516
		0.0295939
		0.0284973
		0.0273906
		0.0252552
		0.0289226
		0.0287821
		0.0318674
		0.0318511
		0.0375057
		0.0320724
		0.0249404
		0.0312515
		0.0253601
		0.0303854
		0.0269506
		0.0303148
		0.0274226
		0.024617
		0.0365847
		0.0319475
		0.0306701
		0.0325747
		0.0291716
		0.0303536
		0.0307474
		0.0343461
		0.0311469
		0.0265738
		0.0296799
		0.0301902
		0.025301
		0.0353938
		0.0221247
		0.0239222
		0.0276319
		0.024674
		0.0213686
		0.0219614
		0.0235392
		0.0245677
		0.0240368
		0.0230714
		0.026986
		0.0184993
		0.018197
		0.0169775
		0.023268
		0.0178865
		0.0216473
		0.0259075
		0.0294075
		0.0250048
		0.0202188
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 24.639646 %	 max error: 614.519959 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009381 max data: 0.037506

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.002116 
	   

>>>> Computational cost: 300.223924 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  2.2081e-03 (2.67e+03%); (bound active) 
	Vm1    : 9.5555e-03  +-  2.7658e-03 (    28.9%); 
	h1     : 4.4638e+00  +-  5.8932e+06 (1.32e+08%); 
	Km1    : 5.7650e-03  +-  5.8305e+03 (1.01e+08%); 
	d1     : 2.8616e-02  +-  6.7804e-03 (    23.7%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -6.169803e-01	 5.384807e-01	 -5.384799e-01	 4.552871e-01
	 -6.169803e-01	 1.000000e+00	 -6.383937e-01	 6.383932e-01	 3.886691e-01
	 5.384807e-01	 -6.383937e-01	 1.000000e+00	 -1.000000e+00	 9.979399e-02
	 -5.384799e-01	 6.383932e-01	 -1.000000e+00	 1.000000e+00	 -9.979387e-02
	 4.552871e-01	 3.886691e-01	 9.979399e-02	 -9.979387e-02	 1.000000e+00
