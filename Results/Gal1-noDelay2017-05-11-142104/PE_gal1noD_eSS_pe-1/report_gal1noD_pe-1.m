   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-142104
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-142104\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000001;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.010538;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=8.354980;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.006378;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.048560;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.609e-05  2.122e-05  2.440e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.0000	  2.0000	  0.0233	  1.9915	  1.9513	
			Control switching times: 	  0.0000	 60.0000	120.0000	180.0000	240.0000	300.0000	360.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 73

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		-0.00225093
		0.0010831
		-0.00146795
		-0.00346488
		-0.00305259
		0.00102586
		0.000163041
		-0.00417965
		0.00513645
		-0.00169004
		-0.000234803
		-0.00146747
		-0.0017631
		-0.00164177
		-6.04867e-05
		-0.00145034
		0.00251706
		0.00100635
		0.0023169
		0.00292878
		-0.00165636
		-0.00199229
		0.0019475
		-0.000734183
		-0.00582914
		-0.00410624
		-0.000510239
		0.00165547
		0.0105156
		-0.00438628
		-0.00179094
		0.000764241
		0.00380439
		0.00141212
		0.00403515
		0.00410104
		0.00380831
		-0.00136189
		0.0048954
		0.00757813
		0.00726174
		0.00488189
		0.00767292
		0.0100851
		0.0115589
		0.00415741
		0.00575313
		0.0101268
		0.0113035
		0.0164557
		0.0143188
		0.0127561
		0.0118605
		0.0137863
		0.013287
		0.00977846
		0.0124059
		0.0102255
		0.0163589
		0.0183433
		0.00986386
		0.0236293
		0.0196306
		0.0186244
		0.0142071
		0.015638
		0.012058
		0.0181979
		0.0175153
		0.0166818
		0.018251
		0.0247471
		0.0213649
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 62.383212 %	 max error: 416.867065 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010240 max data: 0.024747

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000686 
	   

>>>> Computational cost: 287.166641 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  1.7650e-03 (2.13e+05%); (bound active) 
	Vm1    : 1.3022e-02  +-  8.1614e-01 (6.27e+03%); 
	h1     : 2.2362e+00  +-  5.5790e+05 (2.49e+07%); 
	Km1    : 1.7936e-02  +-  1.1617e+03 (6.48e+06%); 
	d1     : 4.5577e-02  +-  2.2934e-01 (     503%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 3.443686e-01	 -3.608703e-01	 -3.608686e-01	 -5.373156e-01
	 3.443686e-01	 1.000000e+00	 -9.997357e-01	 -9.997358e-01	 -9.377693e-01
	 -3.608703e-01	 -9.997357e-01	 1.000000e+00	 1.000000e+00	 9.452469e-01
	 -3.608686e-01	 -9.997358e-01	 1.000000e+00	 1.000000e+00	 9.452429e-01
	 -5.373156e-01	 -9.377693e-01	 9.452469e-01	 9.452429e-01	 1.000000e+00
