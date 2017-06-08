   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-100746
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-100746\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000043;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.049674;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=4.816090;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.062093;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.254704;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.671e-04  1.358e-04  1.562e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0674	  0.0000	  0.0000	  0.0000	  0.0000	  0.5316	
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
		-0.0015
		0.00401596
		-0.000375175
		-0.00387524
		-0.00326992
		-0.000509341
		0.00324491
		0.0010266
		-0.00093949
		0.000248224
		0.000827725
		0.00120535
		0.0018607
		0.00284726
		0.00239684
		0.00551633
		0.0036925
		0.00299785
		0.00967984
		0.00631879
		0.00535574
		0.0081999
		0.00516258
		0.00871313
		0.0114999
		0.00629622
		0.00665486
		0.00606903
		0.00637885
		0.0056897
		0.00593796
		0.00476682
		0.00824943
		0.0065214
		0.00589154
		0.00552896
		0.00806789
		0.00826474
		0.00304686
		0.00574019
		0.00238611
		0.00732821
		0.00467394
		0.00652996
		0.00186857
		0.00263146
		0.00383684
		0.00621394
		0.00366985
		-0.000216465
		0.00100618
		0.00163771
		0.00160849
		0.00429274
		0.00284985
		0.00432831
		0.00273222
		0.00252926
		0.00377837
		-0.000636373
		0.0027962
		0.0018095
		0.00145768
		0.00170539
		0.00323957
		0.00383819
		0.00481728
		0.00215683
		-0.0015318
		0.00896236
		0.0037452
		0.00557461
		0.00613193
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 85.625362 %	 max error: 1698.450288 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.005020 max data: 0.011500

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000281 
	   

>>>> Computational cost: 276.449372 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Estimated global parameters: 

	alpha1 : 8.2800e-07 (bound active)
	Vm1    : 2.6751e-02  
	h1     : 6.0890e-01  
	Km1    : 1.9111e-01  
	d1     : 3.7316e-02  
