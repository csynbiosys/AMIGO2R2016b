   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-190534
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-190534\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000006;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.063163;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.342488;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.011934;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.004220;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.399e-03  1.137e-03  1.308e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.9210	  1.7085	  0.0008	  0.0464	  0.0000	  0.0134	
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
		-0.00123501
		-0.000906248
		-0.000937357
		0.00284333
		0.00234825
		-4.38419e-05
		0.00310916
		0.00216383
		0.00465089
		-0.000810239
		0.00279208
		0.00282626
		0.000905098
		0.00774578
		0.00734318
		0.00358316
		0.00690854
		4.59272e-05
		0.00333016
		0.011638
		0.0126823
		0.011229
		0.010303
		0.0167273
		0.0185751
		0.0146385
		0.0169113
		0.0170182
		0.0172315
		0.0166967
		0.0149019
		0.0189511
		0.0237217
		0.0140796
		0.0192211
		0.0190161
		0.0193588
		0.017325
		0.0188128
		0.012495
		0.0192996
		0.0181374
		0.0173677
		0.0196631
		0.0139519
		0.0143299
		0.0125548
		0.0178313
		0.0145077
		0.0166079
		0.0156648
		0.0134077
		0.0102872
		0.015127
		0.01306
		0.0146591
		0.00798009
		0.0208203
		0.0169276
		0.0138556
		0.0137683
		0.0129201
		0.0175724
		0.0175489
		0.0151978
		0.0133398
		0.0174225
		0.0122
		0.0112136
		0.0110612
		0.014681
		0.00590085
		0.0141261
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 295.154841 %	 max error: 17336.543015 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007962 max data: 0.023722

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000600 
	   

>>>> Computational cost: 274.811362 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  1.0315e-02 (1.25e+04%); (bound active) 
	Vm1    : 1.2917e-02  +-  6.3932e-03 (    49.5%); 
	h1     : 1.5033e+00  +-  6.9033e+00 (     459%); 
	Km1    : 2.7902e-02  +-  1.1355e-01 (     407%); 
	d1     : 3.7279e-02  +-  3.4158e-02 (    91.6%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -5.426654e-01	 6.641676e-01	 9.409583e-01	 8.575388e-01
	 -5.426654e-01	 1.000000e+00	 -4.718546e-01	 -6.425986e-01	 -3.980958e-02
	 6.641676e-01	 -4.718546e-01	 1.000000e+00	 8.439421e-01	 5.291486e-01
	 9.409583e-01	 -6.425986e-01	 8.439421e-01	 1.000000e+00	 7.293825e-01
	 8.575388e-01	 -3.980958e-02	 5.291486e-01	 7.293825e-01	 1.000000e+00
