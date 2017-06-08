   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-132603
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-132603\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000008;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.072810;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.620472;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.005115;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.025292;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.320e-04  2.699e-04  3.104e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.9953	  1.9991	  2.0000	  1.9108	  1.1687	  0.6195	
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
		-0.00196791
		-0.000542891
		0.000638273
		0.00248862
		-0.0022517
		-0.00107741
		0.000198991
		7.11437e-07
		-0.00122235
		-0.000186194
		0.00205815
		-0.00177151
		0.00217393
		0.00952706
		0.0051779
		0.0104883
		0.0081697
		0.00830424
		0.0111411
		0.0126042
		0.0134311
		0.00359832
		0.01364
		0.0174117
		0.0134906
		0.0119675
		0.014505
		0.0117227
		0.0165972
		0.0181652
		0.0129772
		0.0168008
		0.0182202
		0.0177697
		0.0195049
		0.0244169
		0.0181278
		0.0234377
		0.0219419
		0.0240091
		0.0204913
		0.0208407
		0.0215506
		0.0272981
		0.0199153
		0.02744
		0.0227667
		0.021777
		0.0309855
		0.0221254
		0.0244322
		0.030712
		0.0321506
		0.0276096
		0.0276527
		0.0248047
		0.0342122
		0.0245084
		0.0306949
		0.0309145
		0.0350942
		0.0267744
		0.0293894
		0.0267979
		0.0330747
		0.0301991
		0.0323094
		0.0313702
		0.0315475
		0.0329786
		0.0349714
		0.0294734
		0.0304652
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 2047.409416 %	 max error: 145914.595768 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.006788 max data: 0.035094

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000624 
	   

>>>> Computational cost: 300.036723 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 1.8998e-06  +-  0.0000e+00 (       0%); 
	Vm1    : 1.0392e-02  +-  0.0000e+00 (       0%); 
	h1     : 4.9987e+00  +-  6.6708e+11 (1.33e+13%); 
	Km1    : 3.6851e-03  +-  2.5732e+09 (6.98e+13%); (bound active) 
	d1     : 2.9553e-02  +-  1.2246e-02 (    41.4%); 


>>> Correlation matrix for the global unknowns:

	 -1.000000e+00	 1.000000e+00	 2.586615e-03	 2.640474e-03	 1.135100e-03
	 1.000000e+00	 -1.000000e+00	 -2.586643e-03	 -2.640506e-03	 -1.134885e-03
	 2.586615e-03	 -2.586643e-03	 1.000000e+00	 9.991089e-01	 -4.281318e-01
	 2.640474e-03	 -2.640506e-03	 9.991089e-01	 1.000000e+00	 -4.452173e-01
	 1.135100e-03	 -1.134885e-03	 -4.281318e-01	 -4.452173e-01	 1.000000e+00
