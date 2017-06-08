   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-130305
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-130305\PE_gal1noD_eSS_pe-3 


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
		v_guess(2)=0.005685;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.532503;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.287044;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.037037;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[5.055e-05  4.110e-05  4.727e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1080.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 217: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.9136	  2.0000	  1.8090	  2.0000	  1.2966	  1.9167	  2.0000	  0.3683	  0.0000	  0.6295	  0.9709	  0.5667	  0.2315	  0.9596	  0.9878	  0.9479	  1.4200	  0.3069	
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
		-0.00502369
		-0.00199678
		-0.00602252
		0.000729458
		-0.00308581
		0.00268591
		-0.00869317
		-0.00144767
		0.0011015
		0.00362008
		0.000304715
		0.006328
		0.00339839
		0.00111658
		0.00575629
		0.00183674
		0.00988845
		0.00561165
		0.0149596
		0.00608847
		0.0124746
		0.00884388
		0.00371887
		0.0120709
		0.0151371
		0.00919338
		0.0160178
		0.0186793
		0.0198492
		0.0127939
		0.0200476
		0.0122355
		0.023652
		0.0214531
		0.019501
		0.0219028
		0.0250885
		0.0212243
		0.0251943
		0.0228858
		0.0225202
		0.0210191
		0.025529
		0.0212644
		0.0258742
		0.0209576
		0.0268995
		0.0258467
		0.0267881
		0.0274211
		0.0325237
		0.0257564
		0.0248368
		0.0233616
		0.0287923
		0.0260478
		0.030413
		0.0271023
		0.0275084
		0.0322699
		0.0255328
		0.0231313
		0.0290277
		0.0272445
		0.0308719
		0.0271285
		0.028949
		0.0282911
		0.0272965
		0.0292406
		0.031323
		0.0276954
		0.0340833
		0.0308369
		0.0278714
		0.0309711
		0.0295563
		0.030812
		0.030054
		0.0291887
		0.0382068
		0.0335774
		0.0337807
		0.0301534
		0.0318151
		0.028752
		0.03732
		0.025786
		0.03401
		0.0282979
		0.0334464
		0.0327955
		0.0270086
		0.0291832
		0.0358828
		0.031163
		0.0357516
		0.0294421
		0.036926
		0.0331244
		0.0323826
		0.0291628
		0.0356432
		0.0300992
		0.0314583
		0.0292294
		0.0321171
		0.0308939
		0.0263985
		0.0260743
		0.0253256
		0.0249594
		0.0212591
		0.0189853
		0.0222584
		0.0224574
		0.0292638
		0.0264321
		0.023626
		0.0190115
		0.0238373
		0.0182644
		0.0245474
		0.0238502
		0.0226109
		0.0222969
		0.0210413
		0.0241606
		0.0235755
		0.0276197
		0.0171075
		0.0215567
		0.0310165
		0.024559
		0.0246868
		0.0278315
		0.0238616
		0.029046
		0.02758
		0.0205043
		0.0162057
		0.0198076
		0.0255054
		0.0278329
		0.0264881
		0.0284253
		0.0229726
		0.0267567
		0.0258826
		0.0319391
		0.0251928
		0.0221714
		0.0269597
		0.0286676
		0.0322565
		0.0262314
		0.0294852
		0.0306559
		0.0254532
		0.0301747
		0.0332763
		0.0352579
		0.027271
		0.0347107
		0.0313821
		0.031288
		0.0304043
		0.0292023
		0.0306657
		0.0321758
		0.0232193
		0.0280244
		0.0353674
		0.0316647
		0.035006
		0.0328216
		0.0284638
		0.0296587
		0.0323352
		0.026219
		0.0289535
		0.030268
		0.0287565
		0.0306184
		0.0352837
		0.0264385
		0.033043
		0.0289528
		0.0289221
		0.0367767
		0.0331256
		0.0363872
		0.0330307
		0.0366313
		0.028215
		0.0335381
		0.0321094
		0.029597
		0.0306341
		0.03191
		0.0304908
		0.0281921
		0.0337076
		0.0290939
		0.0332632
		0.0349731
		0.0355149
		0.0314146
		0.0313625
		0.0321727
		0.0321649
		0.038343
		0.0313892
		0.0333827
		0.0296582
		0.0336137
		0.0324788
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 20.622844 %	 max error: 720.468987 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009650 max data: 0.038343

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.002145 
	   

>>>> Computational cost: 300.130324 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  3.1166e-03 (3.76e+05%); (bound active) 
	Vm1    : 1.1416e-02  +-  4.6825e-03 (      41%); 
	h1     : 5.0000e+00  +-  6.3386e+09 (1.27e+11%); (bound active) 
	Km1    : 3.6800e-03  +-  1.9322e+07 (5.25e+11%); (bound active) 
	d1     : 3.3410e-02  +-  9.7505e-03 (    29.2%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -7.504518e-01	 -8.174862e-01	 -8.180227e-01	 -1.457833e-01
	 -7.504518e-01	 1.000000e+00	 7.961483e-01	 7.959694e-01	 7.604349e-01
	 -8.174862e-01	 7.961483e-01	 1.000000e+00	 9.999821e-01	 4.212612e-01
	 -8.180227e-01	 7.959694e-01	 9.999821e-01	 1.000000e+00	 4.201871e-01
	 -1.457833e-01	 7.604349e-01	 4.212612e-01	 4.201871e-01	 1.000000e+00
