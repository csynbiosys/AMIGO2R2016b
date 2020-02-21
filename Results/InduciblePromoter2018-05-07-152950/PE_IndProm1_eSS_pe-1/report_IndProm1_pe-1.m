   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 07-May-2018
Problem folder:	 Results\InduciblePromoter2018-05-07-152950
Results folder in problem folder:	 Results\InduciblePromoter2018-05-07-152950\PE_IndProm1_eSS_pe-1 


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
		 Observable 1 --> mean error: 4.308198 %	 max error: 9.826847 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 1583.713209 max data: 16607.008035

--------------------------------------------------------------------------	   

>>>> Best objective function: 44.983462 
	   

>>>> Computational cost: 140.010898 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1   : 2.5411e-03  +-  2.7548e+04 (1.08e+09%); 
	Vm1      : 5.3803e-02  +-  1.1701e+05 (2.17e+08%); 
	h1       : 1.9030e+00  +-  2.1571e+07 (1.13e+09%); 
	Km1      : 6.7690e+00  +-  1.2902e+07 (1.91e+08%); 
	d1       : 7.7000e-03  +-  1.4918e+00 (1.94e+04%); (bound active) 
	alpha2   : 1.0000e-01  +-  2.3538e+00 (2.35e+03%); (bound active) 
	d2       : 6.8418e-03  +-  1.1882e+00 (1.74e+04%); 
	Kf       : 1.7082e-02  +-  2.8571e-01 (1.67e+03%); 
	sc_molec : 1.2088e-03  +-  1.6875e-01 ( 1.4e+04%); (bound active) 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.675929e-02	 5.796379e-01	 -5.219136e-01	 -6.006629e-04	 -7.936227e-03	 1.541229e-03	 -4.451087e-02	 -9.246870e-03
	 -9.675929e-02	 1.000000e+00	 6.244056e-01	 -2.476108e-01	 7.637277e-03	 -1.561781e-02	 -6.684994e-03	 -3.669772e-02	 -4.444216e-04
	 5.796379e-01	 6.244056e-01	 1.000000e+00	 -8.614112e-01	 1.288483e-03	 -1.539212e-02	 3.258331e-04	 -7.330368e-02	 -1.320496e-02
	 -5.219136e-01	 -2.476108e-01	 -8.614112e-01	 1.000000e+00	 4.404244e-03	 8.295597e-03	 -5.843960e-03	 7.037148e-02	 1.764525e-02
	 -6.006629e-04	 7.637277e-03	 1.288483e-03	 4.404244e-03	 1.000000e+00	 -9.936348e-01	 -9.998905e-01	 4.560714e-01	 9.872116e-01
	 -7.936227e-03	 -1.561781e-02	 -1.539212e-02	 8.295597e-03	 -9.936348e-01	 1.000000e+00	 9.920523e-01	 -3.763523e-01	 -9.663027e-01
	 1.541229e-03	 -6.684994e-03	 3.258331e-04	 -5.843960e-03	 -9.998905e-01	 9.920523e-01	 1.000000e+00	 -4.688277e-01	 -9.894311e-01
	 -4.451087e-02	 -3.669772e-02	 -7.330368e-02	 7.037148e-02	 4.560714e-01	 -3.763523e-01	 -4.688277e-01	 1.000000e+00	 5.916678e-01
	 -9.246870e-03	 -4.444216e-04	 -1.320496e-02	 1.764525e-02	 9.872116e-01	 -9.663027e-01	 -9.894311e-01	 5.916678e-01	 1.000000e+00
