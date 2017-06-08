   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-161502
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-161502\PE_gal1noD_eSS_pe-2 


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
		Experiment 1: 	 720.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 145: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.9118	  1.8138	  1.9130	  1.9172	  0.0010	  1.9657	  0.4813	  1.6229	  0.0001	  1.6225	  0.4495	  1.9338	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000	420.0000	480.0000	540.0000	600.0000	660.0000	720.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 145

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000  ]


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
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 37.330163 %	 max error: 2157.943953 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009481 max data: 0.034181

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.001242 
	   

>>>> Computational cost: 300.099124 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  2.4275e-03 (2.93e+05%); (bound active) 
	Vm1    : 1.2171e-02  +-  8.6821e-03 (    71.3%); 
	h1     : 1.5384e+00  +-  1.6521e+01 (1.07e+03%); 
	Km1    : 1.0930e-01  +-  1.4598e+00 (1.34e+03%); 
	d1     : 3.5093e-02  +-  1.6763e-02 (    47.8%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -8.882219e-04	 5.569664e-02	 1.094648e-01	 5.202026e-01
	 -8.882219e-04	 1.000000e+00	 -9.363908e-01	 -9.183990e-01	 8.109562e-01
	 5.569664e-02	 -9.363908e-01	 1.000000e+00	 9.935201e-01	 -6.501515e-01
	 1.094648e-01	 -9.183990e-01	 9.935201e-01	 1.000000e+00	 -6.141838e-01
	 5.202026e-01	 8.109562e-01	 -6.501515e-01	 -6.141838e-01	 1.000000e+00
