   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-050409
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-050409\PE_gal1noD_eSS_pe-1 


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
		v_guess(2)=0.001423;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.327640;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.008749;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.237912;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.545e-05  2.069e-05  2.379e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.0835	  0.0000	  2.0000	  1.6908	  0.0000	
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
		0.00112009
		-0.000558411
		0.000417836
		0.000804577
		0.000596345
		-0.00417223
		0.00319519
		-0.000579094
		-0.00295621
		0.00483637
		-0.0010035
		0.000638994
		0.00154709
		-0.00188613
		0.00161971
		-0.000213823
		0.000839796
		-0.00109667
		0.00339064
		0.00265283
		-0.00157036
		0.00199629
		0.00294599
		0.000249884
		0.000242735
		0.00116572
		0.00743507
		0.00541
		0.00550074
		0.00312383
		0.0023646
		0.00630864
		0.00529229
		0.00435356
		0.00907545
		0.0103796
		0.00759729
		0.00509512
		0.00831212
		0.0058716
		0.00992151
		0.00831243
		0.00648503
		0.00748752
		0.00807385
		0.00818449
		0.00786551
		0.0119994
		0.010041
		0.0140675
		0.0127861
		0.00896158
		0.00927247
		0.0125194
		0.0155141
		0.0183216
		0.0185116
		0.0173452
		0.0136954
		0.0162789
		0.0192902
		0.0183999
		0.0205285
		0.0232357
		0.0193176
		0.0182066
		0.0187729
		0.0194027
		0.01967
		0.0224893
		0.0212717
		0.0157756
		0.0192748
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 76.951482 %	 max error: 1244.774728 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.004822 max data: 0.023236

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000316 
	   

>>>> Computational cost: 258.790059 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-05  +-  2.8705e-03 (3.47e+03%); (bound active) 
	Vm1    : 2.8975e-02  +-  2.1721e+00 ( 7.5e+03%); 
	h1     : 2.4328e-01  +-  1.9156e+01 (7.87e+03%); 
	Km1    : 3.6800e-01  +-  2.3687e+02 (6.44e+04%); (bound active) 
	d1     : 5.0454e-02  +-  4.9498e-02 (    98.1%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -4.707682e-02	 5.311044e-02	 -4.045716e-02	 -1.111512e-01
	 -4.707682e-02	 1.000000e+00	 -9.998972e-01	 9.999408e-01	 -6.441399e-01
	 5.311044e-02	 -9.998972e-01	 1.000000e+00	 -9.998974e-01	 6.520429e-01
	 -4.045716e-02	 9.999408e-01	 -9.998974e-01	 1.000000e+00	 -6.515086e-01
	 -1.111512e-01	 -6.441399e-01	 6.520429e-01	 -6.515086e-01	 1.000000e+00
