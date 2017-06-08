   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-041231
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-041231\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000004;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.003293;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=6.847697;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.007039;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.016918;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.164e-04  1.759e-04  2.023e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0667	  0.0039	  0.0057	  0.0639	  0.5703	  0.0229	
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
		-0.00121024
		0.000882409
		0.000647267
		0.000111203
		-0.00573026
		-0.00370162
		-0.00334243
		0.00433211
		0.00142703
		-0.00514528
		-0.00244306
		0.00526889
		0.00244916
		0.000283965
		0.0013796
		0.00749093
		0.00165993
		-0.000788879
		0.00501712
		0.00831593
		0.00267759
		0.0104765
		0.00588684
		0.00794969
		0.00951123
		0.00395078
		0.0087859
		0.00986493
		0.00858028
		0.00781247
		0.00426127
		0.00783731
		0.00310895
		0.0106338
		0.00351897
		0.00961757
		0.00551991
		0.00441263
		0.00677561
		0.00671954
		0.00730789
		0.0087606
		0.00639427
		0.00902889
		0.00440869
		0.00974878
		0.00567382
		0.00569965
		0.0112262
		0.00965302
		0.00456745
		0.00959462
		0.0112479
		0.00924045
		0.0110782
		0.00702681
		0.00732481
		0.0056668
		0.00487436
		0.00843123
		0.0113062
		0.0120421
		0.0142334
		0.0167334
		0.0161014
		0.0167041
		0.0142027
		0.0160767
		0.0200751
		0.0142098
		0.0189049
		0.0160348
		0.0150943
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 61.691799 %	 max error: 768.717799 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.006190 max data: 0.020075

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000549 
	   

>>>> Computational cost: 229.758273 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  4.8088e-03 (5.81e+05%); (bound active) 
	Vm1    : 6.9762e-03  +-  1.4696e-02 (     211%); 
	h1     : 5.0000e+00  +-  6.3477e+01 (1.27e+03%); (bound active) 
	Km1    : 5.5083e-02  +-  2.0653e-01 (     375%); 
	d1     : 1.6783e-02  +-  4.7740e-02 (     284%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 9.456431e-01	 8.046573e-01	 8.834709e-01	 9.677077e-01
	 9.456431e-01	 1.000000e+00	 8.645421e-01	 9.269724e-01	 9.568278e-01
	 8.046573e-01	 8.645421e-01	 1.000000e+00	 9.852327e-01	 7.365610e-01
	 8.834709e-01	 9.269724e-01	 9.852327e-01	 1.000000e+00	 8.209800e-01
	 9.677077e-01	 9.568278e-01	 7.365610e-01	 8.209800e-01	 1.000000e+00
