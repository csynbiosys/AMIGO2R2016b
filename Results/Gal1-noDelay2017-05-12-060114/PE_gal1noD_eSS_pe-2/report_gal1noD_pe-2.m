   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-060114
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-060114\PE_gal1noD_eSS_pe-2 


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

		v_guess(1)=0.000020;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.001135;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=3.083633;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.263492;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.045156;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[4.374e-04  3.556e-04  4.089e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 720.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 145: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.1799	  0.2076	  0.1609	  1.9534	  0.1130	  0.0786	  1.9271	  1.2706	  2.0000	  1.2819	  0.1668	  0.0716	
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
		-0.00518916
		0.00342878
		-0.00315027
		-0.000248657
		-0.00467548
		0.00197747
		0.00347256
		0.00314084
		-0.00165087
		-0.00562056
		0.00206788
		0.00217419
		-0.00216819
		0.00176267
		0.00964146
		0.00399051
		0.00812454
		0.00906359
		0.00584936
		0.0129684
		0.0101462
		0.0107191
		0.0120232
		0.00777144
		0.0132174
		0.0137935
		0.0192194
		0.0115364
		0.0128817
		0.0187638
		0.0175417
		0.0166076
		0.0171552
		0.019536
		0.0157081
		0.0164287
		0.0200774
		0.0166436
		0.0251257
		0.0224695
		0.0225798
		0.0279789
		0.0267295
		0.0238869
		0.0234564
		0.0274185
		0.0219066
		0.0230623
		0.0190294
		0.0284109
		0.0262741
		0.0259296
		0.0270072
		0.0240272
		0.0293624
		0.0311289
		0.0320861
		0.030629
		0.0230024
		0.0333021
		0.0339851
		0.025399
		0.0274117
		0.0273923
		0.0249848
		0.0296702
		0.0238347
		0.0241119
		0.0250899
		0.02407
		0.0279285
		0.0275625
		0.0268294
		0.0343502
		0.0255296
		0.0304561
		0.0322992
		0.0192194
		0.0276439
		0.0322209
		0.0272685
		0.0259783
		0.0321446
		0.0323442
		0.0252859
		0.0275525
		0.0262426
		0.031789
		0.0235996
		0.0226859
		0.0305431
		0.0320807
		0.0274863
		0.0337437
		0.035751
		0.0281539
		0.0291956
		0.0333627
		0.0306173
		0.034727
		0.0284958
		0.0287771
		0.0295873
		0.0306618
		0.0330531
		0.0282193
		0.0255001
		0.0288666
		0.0348373
		0.0320437
		0.0349658
		0.0318629
		0.030673
		0.0281169
		0.0340917
		0.031998
		0.0255748
		0.0306157
		0.0304266
		0.027276
		0.0338171
		0.0297127
		0.0275179
		0.0335419
		0.0316812
		0.0310499
		0.0344257
		0.0329925
		0.0272104
		0.0335326
		0.0249141
		0.0330458
		0.0282217
		0.0321745
		0.0308793
		0.0296764
		0.0315732
		0.0334504
		0.0327446
		0.0262066
		0.0317868
		0.0309031
		0.0328657
		0.032983
		0.0282919
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 21.139708 %	 max error: 273.075680 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009103 max data: 0.035751

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.001455 
	   

>>>> Computational cost: 300.145924 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  1.7089e+00 (2.06e+06%); (bound active) 
	Vm1    : 1.2398e-02  +-  1.7138e+00 (1.38e+04%); 
	h1     : 1.6226e+00  +-  2.6473e+01 (1.63e+03%); 
	Km1    : 2.9307e-02  +-  3.4262e+00 (1.17e+04%); 
	d1     : 3.6611e-02  +-  2.1427e-02 (    58.5%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.999928e-01	 9.932818e-01	 9.998108e-01	 -4.909213e-01
	 -9.999928e-01	 1.000000e+00	 -9.936171e-01	 -9.998563e-01	 4.942181e-01
	 9.932818e-01	 -9.936171e-01	 1.000000e+00	 9.952554e-01	 -5.639624e-01
	 9.998108e-01	 -9.998563e-01	 9.952554e-01	 1.000000e+00	 -5.029516e-01
	 -4.909213e-01	 4.942181e-01	 -5.639624e-01	 -5.029516e-01	 1.000000e+00
