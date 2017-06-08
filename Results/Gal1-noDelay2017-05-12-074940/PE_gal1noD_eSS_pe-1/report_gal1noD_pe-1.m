   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-074940
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-074940\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000011;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.003752;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=5.501169;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.006413;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.005823;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.961e-03  1.595e-03  1.834e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.0000	  0.0000	  0.0000	  0.0000	  0.5510	
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
		4.11596e-05
		-0.00160708
		0.000508844
		0.00125403
		-0.00234876
		-0.00110882
		-0.00368972
		0.00272059
		0.000759136
		0.000897358
		0.0010859
		-0.000786916
		-0.000723085
		-0.00186988
		0.000432745
		0.000197101
		0.000684056
		-0.00154006
		0.000541327
		0.00148024
		0.00225084
		-0.000586812
		0.000796164
		0.000684377
		0.000209568
		0.00107856
		0.000914454
		-0.000936491
		4.35609e-05
		-0.00190837
		0.000516761
		-0.0021079
		-0.000365273
		-0.00235527
		-0.000561487
		0.000304212
		0.000754824
		0.00107856
		0.00108507
		0.000215316
		0.00344668
		-0.00136283
		0.000950639
		-0.00285419
		7.98469e-05
		-0.000624755
		-0.00188985
		-0.000148341
		0.00109738
		-0.00110399
		-0.00154791
		0.000563599
		0.00119514
		-0.000771713
		0.00248376
		-5.26494e-05
		-0.000806077
		-0.000923345
		-0.00133921
		-0.0025844
		0.00117203
		0.00142206
		-0.000835642
		0.00023286
		-0.000705907
		0.00125753
		0.000941905
		2.87862e-05
		1.39128e-05
		0.00279527
		0.00176952
		0.00396921
		0.00390001
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 283.558054 %	 max error: 10457.070693 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.003870 max data: 0.003969

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000135 
	   

>>>> Computational cost: 300.130324 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  1.4947e-04 (1.81e+04%); (bound active) 
	Vm1    : 1.8816e-02  +-  1.0407e+06 (5.53e+09%); 
	h1     : 4.1115e-01  +-  4.3695e+08 (1.06e+11%); 
	Km1    : 3.6008e-01  +-  0.0000e+00 (       0%); 
	d1     : 2.3727e-02  +-  2.4243e-01 (1.02e+03%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.195891e-02	 6.300496e-03	 -6.283206e-03	 3.792340e-01
	 -1.195891e-02	 1.000000e+00	 -1.136387e+00	 -2.033671e+00	 -1.592913e-02
	 6.300496e-03	 -1.136387e+00	 1.000000e+00	 1.087742e+00	 8.339642e-03
	 -6.283206e-03	 -2.033671e+00	 1.087742e+00	 -1.000000e+00	 -8.589854e-03
	 3.792340e-01	 -1.592913e-02	 8.339642e-03	 -8.589854e-03	 1.000000e+00
