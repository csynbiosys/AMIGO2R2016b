   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-130305
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-130305\PE_gal1noD_eSS_pe-1 


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
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.9136	  2.0000	  1.8090	  2.0000	  1.2966	  1.9167	
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
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 44.928036 %	 max error: 783.457945 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009529 max data: 0.034083

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000739 
	   

>>>> Computational cost: 300.177124 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2818e-07  +-  9.1350e+01 ( 1.1e+10%); (bound active) 
	Vm1    : 2.2514e-02  +-  1.0934e+02 (4.86e+05%); 
	h1     : 6.2493e-01  +-  2.2618e+03 (3.62e+05%); 
	Km1    : 3.6800e-01  +-  3.6561e+03 (9.94e+05%); (bound active) 
	d1     : 4.9081e-02  +-  2.7696e-01 (     564%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.999612e-01	 9.995021e-01	 9.999520e-01	 -6.062402e-01
	 -9.999612e-01	 1.000000e+00	 -9.997403e-01	 -9.998270e-01	 5.998634e-01
	 9.995021e-01	 -9.997403e-01	 1.000000e+00	 9.991470e-01	 -5.824033e-01
	 9.999520e-01	 -9.998270e-01	 9.991470e-01	 1.000000e+00	 -6.131673e-01
	 -6.062402e-01	 5.998634e-01	 -5.824033e-01	 -6.131673e-01	 1.000000e+00
