   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 07-May-2018
Problem folder:	 Results\InduciblePromoter2018-05-07-143452
Results folder in problem folder:	 Results\InduciblePromoter2018-05-07-143452\PE_IndProm1_eSS_pe-1 


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
	log_var:	(1x9 double)
	maxeval:	100000
	maxtime:	1000
	ndiverse:	'auto'
nl2sol_settings.
	display:	2
	grad:	[]
	iterfun:	[]
	maxfeval:	300
	maxiter:	300
	objrtol:	1e-06
	tolafun:	1e-06
	tolrfun:	1e-06

		>Bounds on the unknowns:

		v_guess(1)=0.247500;  v_min(1)=0.000039; v_max(1)=0.495000;
		v_guess(2)=0.247500;  v_min(2)=0.038800; v_max(2)=0.495000;
		v_guess(3)=2.700000;  v_min(3)=0.500000; v_max(3)=4.900000;
		v_guess(4)=5.500000;  v_min(4)=2.000000; v_max(4)=7.000000;
		v_guess(5)=0.348800;  v_min(5)=0.007700; v_max(5)=0.230000;
		v_guess(6)=3.453300;  v_min(6)=0.100000; v_max(6)=3.000000;
		v_guess(7)=0.500000;  v_min(7)=0.000050; v_max(7)=0.244900;
		v_guess(8)=0.502900;  v_min(8)=0.012000; v_max(8)=0.021700;
		v_guess(9)=50.000000;  v_min(9)=0.000001; v_max(9)=100.000000;



-----------------------------------------------
 Initial value problem related active settings
-----------------------------------------------
ivpsolver: cvodes
RelTol: 1e-08
AbsTol: 1e-08
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-08
ivp_AbsTol: 1e-08
sensmex: cvodesg_IndProm1
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 4


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.01642     0.29156     1.71763     5.14394     0.23000     6.63777     0.00575     0.02170    28.00000  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  1.229e+02  ]

-->Final process time for each experiment: 
		Experiment 1: 	 419.400000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 29: 	 6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		sustained interpolation is being used.
			Control values:
			Input 1:	  5.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence = Cit_AU

-->Number of sampling times for each experiment:
		Experiment 1: 	 29

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[  63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1888.83
		2436.96
		2967.4
		3579.55
		4158.46
		4719.13
		5309.84
		5944.96
		6551.85
		7222.78
		8005.73
		8761.57
		9579.1
		10514.9
		11365.6
		12194.3
		13091
		13788.8
		14393.9
		14955.4
		15518.3
		15789.1
		16126.5
		16607
		16541.4
		16416
		16359.1
		16357.7
		16116.2
		];


-->Noise type:homo_var

		Error data 1: 
		inputs.exps.error_data{1}=[
		94.2109
		100.105
		185.938
		193.095
		201.742
		256.636
		219.406
		206.532
		283.913
		263.101
		299.017
		308.947
		282.496
		332.334
		355.926
		392.432
		496.795
		515.829
		581.611
		611.33
		690.514
		677.863
		748.815
		770.967
		736.981
		628.086
		581.122
		574.886
		586.918
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 4.807273 %	 max error: 10.009954 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 1613.223043 max data: 16607.008035

--------------------------------------------------------------------------	   

>>>> Best objective function: 53.381322 
	   

>>>> Computational cost: 149.589359 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1   : 2.5385e-03  +-  0.0000e+00 (       0%); 
	Vm1      : 7.8061e-02  +-  0.0000e+00 (       0%); 
	h1       : 4.4054e+00  +-  6.8009e+06 (1.54e+08%); 
	Km1      : 6.7667e+00  +-  2.6438e+06 (3.91e+07%); 
	d1       : 7.7000e-03  +-  6.1845e-01 (8.03e+03%); (bound active) 
	alpha2   : 6.6655e-01  +-  8.4825e+01 (1.27e+04%); 
	d2       : 5.4872e-03  +-  3.3197e-01 (6.05e+03%); 
	Kf       : 2.1700e-02  +-  1.0843e+01 (   5e+04%); (bound active) 
	sc_molec : 1.0000e+02  +-  5.9955e+04 (   6e+04%); (bound active) 


>>> Correlation matrix for the global unknowns:

	 -1.000000e+00	 3.590636e+00	 -4.789858e-02	 -2.151574e-01	 -1.166116e-03	 3.140802e-04	 1.367449e-03	 2.801863e-04	 -2.728861e-04
	 3.590636e+00	 -1.000000e+00	 1.975804e+00	 1.011970e+00	 5.909816e-02	 -4.646692e-02	 -6.142869e-02	 -4.524787e-02	 4.526864e-02
	 -4.789858e-02	 1.975804e+00	 1.000000e+00	 -8.451533e-01	 1.869313e-02	 -1.138392e-02	 -2.026830e-02	 -1.138763e-02	 1.126403e-02
	 -2.151574e-01	 1.011970e+00	 -8.451533e-01	 1.000000e+00	 -1.131373e-02	 4.262471e-03	 1.293106e-02	 4.476682e-03	 -4.317568e-03
	 -1.166116e-03	 5.909816e-02	 1.869313e-02	 -1.131373e-02	 1.000000e+00	 -9.825651e-01	 -9.992429e-01	 -9.654588e-01	 9.685396e-01
	 3.140802e-04	 -4.646692e-02	 -1.138392e-02	 4.262471e-03	 -9.825651e-01	 1.000000e+00	 9.746655e-01	 9.944383e-01	 -9.960824e-01
	 1.367449e-03	 -6.142869e-02	 -2.026830e-02	 1.293106e-02	 -9.992429e-01	 9.746655e-01	 1.000000e+00	 9.550846e-01	 -9.584790e-01
	 2.801863e-04	 -4.524787e-02	 -1.138763e-02	 4.476682e-03	 -9.654588e-01	 9.944383e-01	 9.550846e-01	 1.000000e+00	 -9.998516e-01
	 -2.728861e-04	 4.526864e-02	 1.126403e-02	 -4.317568e-03	 9.685396e-01	 -9.960824e-01	 -9.584790e-01	 -9.998516e-01	 1.000000e+00
