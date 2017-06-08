   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-205454
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-205454\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000005;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.060541;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.219559;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.004990;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.026618;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.691e-04  1.375e-04  1.581e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.9120	  2.0000	  1.8740	  2.0000	  1.6499	  0.2157	
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
		-0.00159867
		0.00183987
		0.000936423
		-0.000923917
		0.00233266
		0.0034647
		-0.000876024
		0.00340847
		-0.00222915
		-0.00115118
		0.00261501
		0.00515605
		0.00386701
		0.00570116
		0.00123019
		0.00380921
		0.010583
		0.0067924
		0.00724659
		0.00608655
		0.00799527
		0.00908472
		0.00606702
		0.00961758
		0.0115632
		0.0136956
		0.0175273
		0.0101349
		0.015969
		0.0124904
		0.0130674
		0.0196814
		0.013164
		0.0197464
		0.0210519
		0.0181225
		0.0221404
		0.0219275
		0.0225786
		0.0229959
		0.0205488
		0.0244581
		0.0206693
		0.0193923
		0.0283258
		0.0248231
		0.0242593
		0.0191479
		0.022346
		0.0215206
		0.0247798
		0.0284643
		0.0315062
		0.0336339
		0.0264853
		0.0347117
		0.0302382
		0.031051
		0.0273669
		0.0287196
		0.0331475
		0.0239869
		0.02816
		0.0277613
		0.0295773
		0.0307757
		0.0306898
		0.02964
		0.0301963
		0.0315051
		0.0285508
		0.0274561
		0.0297416
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 31.651783 %	 max error: 235.207646 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.006520 max data: 0.034712

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000519 
	   

>>>> Computational cost: 245.514374 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  1.9581e+00 (2.36e+08%); (bound active) 
	Vm1    : 1.1443e-02  +-  2.2464e+00 (1.96e+04%); 
	h1     : 1.1795e+00  +-  2.2299e+02 (1.89e+04%); 
	Km1    : 3.6800e-01  +-  1.0136e+02 (2.75e+04%); (bound active) 
	d1     : 2.8163e-02  +-  1.4333e-01 (     509%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.996067e-01	 9.979035e-01	 9.998267e-01	 9.251759e-01
	 -9.996067e-01	 1.000000e+00	 -9.993008e-01	 -9.989420e-01	 -9.142820e-01
	 9.979035e-01	 -9.993008e-01	 1.000000e+00	 9.966739e-01	 8.997818e-01
	 9.998267e-01	 -9.989420e-01	 9.966739e-01	 1.000000e+00	 9.317972e-01
	 9.251759e-01	 -9.142820e-01	 8.997818e-01	 9.317972e-01	 1.000000e+00
