   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 07-May-2018
Problem folder:	 Results\InduciblePromoter2018-05-07-154400
Results folder in problem folder:	 Results\InduciblePromoter2018-05-07-154400\PE_IndProm1_eSS_pe-1 


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
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]

-->Final process time for each experiment: 
		Experiment 1: 	 419.400000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 20: 	 6.360e+01  8.880e+01  1.146e+02  1.398e+02  1.656e+02  1.908e+02  2.160e+02  2.418e+02  2.670e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

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
		Experiment 1: 	 20

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[  63.600    88.800   114.600   139.800   165.600   190.800   216.000   241.800   267.000   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1888.83
		2967.4
		4158.46
		5309.84
		6551.85
		8005.73
		9579.1
		11365.6
		13091
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
		185.938
		201.742
		219.406
		283.913
		299.017
		282.496
		355.926
		496.795
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
		 Observable 1 --> mean error: 4.631684 %	 max error: 8.672459 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 1397.669911 max data: 16607.008035

--------------------------------------------------------------------------	   

>>>> Best objective function: 32.059308 
	   

>>>> Computational cost: 147.686147 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1   : 8.6253e-04  +-  3.3845e+04 (3.92e+09%); 
	Vm1      : 9.1665e-02  +-  2.3861e+05 ( 2.6e+08%); 
	h1       : 4.1108e+00  +-  9.2315e+06 (2.25e+08%); 
	Km1      : 6.6047e+00  +-  5.0841e+06 ( 7.7e+07%); 
	d1       : 7.8076e-03  +-  5.2332e+00 ( 6.7e+04%); 
	alpha2   : 1.0000e-01  +-  3.3767e-01 (     338%); (bound active) 
	d2       : 7.5166e-03  +-  4.8422e+00 (6.44e+04%); 
	Kf       : 1.6712e-02  +-  3.4692e+00 (2.08e+04%); 
	sc_molec : 1.1336e-03  +-  1.0460e+00 (9.23e+04%); (bound active) 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 9.970871e-01	 6.337440e-01	 1.203724e+00	 1.794571e-02	 7.880329e-02	 -1.826783e-02	 2.272282e-02	 1.986178e-02
	 9.970871e-01	 1.000000e+00	 1.114652e+00	 8.145164e-01	 2.310295e-02	 7.507227e-02	 -2.340447e-02	 2.779831e-02	 2.497143e-02
	 6.337440e-01	 1.114652e+00	 1.000000e+00	 8.005576e-01	 2.431730e-02	 7.239841e-02	 -2.461247e-02	 2.904710e-02	 2.618563e-02
	 1.203724e+00	 8.145164e-01	 8.005576e-01	 1.000000e+00	 1.648010e-02	 7.276707e-02	 -1.677257e-02	 2.077499e-02	 1.820979e-02
	 1.794571e-02	 2.310295e-02	 2.431730e-02	 1.648010e-02	 1.000000e+00	 1.992711e-01	 -9.999880e-01	 9.957694e-01	 9.994249e-01
	 7.880329e-02	 7.507227e-02	 7.239841e-02	 7.276707e-02	 1.992711e-01	 1.000000e+00	 -2.034854e-01	 2.674004e-01	 2.261381e-01
	 -1.826783e-02	 -2.340447e-02	 -2.461247e-02	 -1.677257e-02	 -9.999880e-01	 -2.034854e-01	 1.000000e+00	 -9.961971e-01	 -9.995772e-01
	 2.272282e-02	 2.779831e-02	 2.904710e-02	 2.077499e-02	 9.957694e-01	 2.674004e-01	 -9.961971e-01	 1.000000e+00	 9.983038e-01
	 1.986178e-02	 2.497143e-02	 2.618563e-02	 1.820979e-02	 9.994249e-01	 2.261381e-01	 -9.995772e-01	 9.983038e-01	 1.000000e+00
