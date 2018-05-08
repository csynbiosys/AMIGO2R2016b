   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 07-May-2018
Problem folder:	 Results\InduciblePromoter2018-05-07-165038
Results folder in problem folder:	 Results\InduciblePromoter2018-05-07-165038\PE_IndProm1_eSS_pe-1 


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
		v_guess(5)=0.348800;  v_min(5)=0.100000; v_max(5)=0.230000;
		v_guess(6)=3.453300;  v_min(6)=0.100000; v_max(6)=3.000000;
		v_guess(7)=0.500000;  v_min(7)=0.005000; v_max(7)=0.244900;
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


-->Number of experiments: 10


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]
		Experiment 2: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]
		Experiment 3: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]
		Experiment 4: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]
		Experiment 5: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]
		Experiment 6: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]
		Experiment 7: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]
		Experiment 8: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]
		Experiment 9: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]
		Experiment 10: 
			exp_y0=[7.096e-01  2.443e+00  2.457e+00  4.915e-02  ]

-->Final process time for each experiment: 
		Experiment 1: 	 419.400000

-->Final process time for each experiment: 
		Experiment 2: 	 419.400000

-->Final process time for each experiment: 
		Experiment 3: 	 419.400000

-->Final process time for each experiment: 
		Experiment 4: 	 419.400000

-->Final process time for each experiment: 
		Experiment 5: 	 419.400000

-->Final process time for each experiment: 
		Experiment 6: 	 419.400000

-->Final process time for each experiment: 
		Experiment 7: 	 419.400000

-->Final process time for each experiment: 
		Experiment 8: 	 419.400000

-->Final process time for each experiment: 
		Experiment 9: 	 419.400000

-->Final process time for each experiment: 
		Experiment 10: 	 419.400000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 34: 	 0.000e+00  1.260e+01  2.520e+01  3.840e+01  5.100e+01  6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Sampling times for each experiment: 
		Experiment 2: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 34: 	 0.000e+00  1.260e+01  2.520e+01  3.840e+01  5.100e+01  6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Sampling times for each experiment: 
		Experiment 3: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 34: 	 0.000e+00  1.260e+01  2.520e+01  3.840e+01  5.100e+01  6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Sampling times for each experiment: 
		Experiment 4: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 34: 	 0.000e+00  1.260e+01  2.520e+01  3.840e+01  5.100e+01  6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Sampling times for each experiment: 
		Experiment 5: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 34: 	 0.000e+00  1.260e+01  2.520e+01  3.840e+01  5.100e+01  6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Sampling times for each experiment: 
		Experiment 6: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 34: 	 0.000e+00  1.260e+01  2.520e+01  3.840e+01  5.100e+01  6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Sampling times for each experiment: 
		Experiment 7: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 34: 	 0.000e+00  1.260e+01  2.520e+01  3.840e+01  5.100e+01  6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Sampling times for each experiment: 
		Experiment 8: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 34: 	 0.000e+00  1.260e+01  2.520e+01  3.840e+01  5.100e+01  6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Sampling times for each experiment: 
		Experiment 9: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 34: 	 0.000e+00  1.260e+01  2.520e+01  3.840e+01  5.100e+01  6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Sampling times for each experiment: 
		Experiment 10: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 34: 	 0.000e+00  1.260e+01  2.520e+01  3.840e+01  5.100e+01  6.360e+01  7.620e+01  8.880e+01  1.020e+02  1.146e+02  1.272e+02  1.398e+02  1.524e+02  1.656e+02  1.782e+02  1.908e+02  2.034e+02  2.160e+02  2.292e+02  2.418e+02  2.544e+02  2.670e+02  2.796e+02  2.928e+02  3.054e+02  3.180e+02  3.306e+02  3.432e+02  3.564e+02  3.690e+02  3.816e+02  3.942e+02  4.068e+02  4.194e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		sustained interpolation is being used.
			Control values:
			Input 1:	  7.5000


-->Input values/temporal elements for Experiment 2:
		sustained interpolation is being used.
			Control values:
			Input 1:	  1.0000


-->Input values/temporal elements for Experiment 3:
		sustained interpolation is being used.
			Control values:
			Input 1:	 40.0000


-->Input values/temporal elements for Experiment 4:
		sustained interpolation is being used.
			Control values:
			Input 1:	 10.0000


-->Input values/temporal elements for Experiment 5:
		sustained interpolation is being used.
			Control values:
			Input 1:	1000.0000


-->Input values/temporal elements for Experiment 6:
		sustained interpolation is being used.
			Control values:
			Input 1:	 15.0000


-->Input values/temporal elements for Experiment 7:
		sustained interpolation is being used.
			Control values:
			Input 1:	  5.0000


-->Input values/temporal elements for Experiment 8:
		sustained interpolation is being used.
			Control values:
			Input 1:	  0.0000


-->Input values/temporal elements for Experiment 9:
		sustained interpolation is being used.
			Control values:
			Input 1:	  0.5000


-->Input values/temporal elements for Experiment 10:
		sustained interpolation is being used.
			Control values:
			Input 1:	  2.5000


-->Number of observables:
	Experiment 1: 1
	Experiment 2: 1
	Experiment 3: 1
	Experiment 4: 1
	Experiment 5: 1
	Experiment 6: 1
	Experiment 7: 1
	Experiment 8: 1
	Experiment 9: 1
	Experiment 10: 1

-->Observables:
		Experiment 1:
			Fluorescence = Cit_AU
		Experiment 2:
			Fluorescence = Cit_AU
		Experiment 3:
			Fluorescence = Cit_AU
		Experiment 4:
			Fluorescence = Cit_AU
		Experiment 5:
			Fluorescence = Cit_AU
		Experiment 6:
			Fluorescence = Cit_AU
		Experiment 7:
			Fluorescence = Cit_AU
		Experiment 8:
			Fluorescence = Cit_AU
		Experiment 9:
			Fluorescence = Cit_AU
		Experiment 10:
			Fluorescence = Cit_AU

-->Number of sampling times for each experiment:
		Experiment 1: 	 34
		Experiment 2: 	 34
		Experiment 3: 	 34
		Experiment 4: 	 34
		Experiment 5: 	 34
		Experiment 6: 	 34
		Experiment 7: 	 34
		Experiment 8: 	 34
		Experiment 9: 	 34
		Experiment 10: 	 34

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000    12.600    25.200    38.400    51.000    63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]
		Experiment 2, 
			t_s=[   0.000    12.600    25.200    38.400    51.000    63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]
		Experiment 3, 
			t_s=[   0.000    12.600    25.200    38.400    51.000    63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]
		Experiment 4, 
			t_s=[   0.000    12.600    25.200    38.400    51.000    63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]
		Experiment 5, 
			t_s=[   0.000    12.600    25.200    38.400    51.000    63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]
		Experiment 6, 
			t_s=[   0.000    12.600    25.200    38.400    51.000    63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]
		Experiment 7, 
			t_s=[   0.000    12.600    25.200    38.400    51.000    63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]
		Experiment 8, 
			t_s=[   0.000    12.600    25.200    38.400    51.000    63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]
		Experiment 9, 
			t_s=[   0.000    12.600    25.200    38.400    51.000    63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]
		Experiment 10, 
			t_s=[   0.000    12.600    25.200    38.400    51.000    63.600    76.200    88.800   102.000   114.600   127.200   139.800   152.400   165.600   178.200   190.800   203.400   216.000   229.200   241.800   254.400   267.000   279.600   292.800   305.400   318.000   330.600   343.200   356.400   369.000   381.600   394.200   406.800   419.400  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1004.26
		815.179
		803.867
		1094.48
		1451.45
		2018.67
		2708.47
		3523.8
		4289.97
		5078.37
		5879.32
		6661.74
		7432.66
		8204.73
		9038.4
		9853.18
		10686.8
		11591.7
		12509.8
		13521
		14414.1
		15417.5
		16254
		16960.2
		17699
		18295.4
		18835
		19234.6
		19681.8
		19849.6
		20133.9
		20143.2
		20178.1
		20134.8
		];

		
Experiment 2: 
		inputs.exp_data{2}=[
		1036.36
		872.456
		853.714
		864.231
		955.793
		1081.12
		1141.76
		1280.92
		1381.5
		1428.6
		1498.72
		1563.72
		1639.89
		1706.69
		1792.51
		1923.3
		2037.96
		2142.86
		2270.5
		2359.52
		2477.73
		2602.55
		2687.89
		2744.33
		2797.04
		2846.07
		2883.37
		2915.2
		2966.83
		2973.64
		2999.87
		3004.19
		3039.43
		3025.26
		];

		
Experiment 3: 
		inputs.exp_data{3}=[
		1094.08
		1026.34
		1200.64
		1752.85
		2470.95
		3519.7
		4616.85
		5791.98
		6995.99
		8062.52
		9144.2
		10289.7
		11390.4
		12620.2
		13978.3
		15389.3
		16938.3
		18495
		20025
		21651.7
		23152.2
		24688.7
		25882.6
		26824.2
		27683.2
		28450
		28781.6
		29190.8
		29872.2
		29707.6
		29962.1
		29724.1
		29614.3
		29432.8
		];

		
Experiment 4: 
		inputs.exp_data{4}=[
		1075.66
		901.475
		989.358
		1323.66
		1890.72
		2597.94
		3456.71
		4410.72
		5345.03
		6288.08
		7113.22
		8116.89
		9079.86
		10078
		11281.8
		12464.4
		13701
		14988.8
		16283.2
		17617.1
		18909.1
		20102.3
		21167.5
		21982.8
		22713.6
		23325.1
		23804
		24133.7
		24593.6
		24642.9
		24813.5
		24623.7
		24535.9
		24381.7
		];

		
Experiment 5: 
		inputs.exp_data{5}=[
		1194.79
		1055.96
		1449.7
		2095.54
		3024.26
		4068
		5247.56
		6606.48
		7668.81
		8827.06
		9955.27
		10916.7
		11787.8
		12624.5
		13272.6
		13998.4
		14916.2
		15845.6
		16897.3
		18286.9
		19108.9
		20489.6
		21685.5
		23096
		24198.4
		25383.2
		26536.2
		27428.8
		28348.1
		29106
		29763.9
		30171.4
		30600.7
		30985.9
		];

		
Experiment 6: 
		inputs.exp_data{6}=[
		841.187
		838.766
		862.655
		1076.82
		1880.66
		2671.47
		3739.23
		4631.18
		5680.92
		6818.52
		7937.87
		8699.87
		9488.95
		10260.6
		10927.2
		11616.5
		12208.8
		13008.4
		13786.9
		14974.1
		15725.2
		16879.9
		18002.1
		19221.7
		20697.8
		21637.5
		22797.4
		23746.4
		24574.5
		25242.6
		25784.1
		25915.1
		26163.8
		26283.8
		];

		
Experiment 7: 
		inputs.exp_data{7}=[
		1119.17
		913.841
		914.101
		1088.51
		1393.59
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

		
Experiment 8: 
		inputs.exp_data{8}=[
		1337.57
		819.768
		701.6
		743.051
		769.278
		869.147
		982.946
		1041.03
		1121.23
		1161.72
		1204.71
		1251.47
		1248.11
		1283.9
		1323.11
		1366.36
		1394.39
		1416.49
		1451.54
		1469.36
		1524.73
		1608.21
		1620.38
		1631.41
		1671.8
		1694.26
		1718.74
		1728.45
		1728.09
		1743.2
		1727.67
		1743.88
		1746.42
		1747.07
		];

		
Experiment 9: 
		inputs.exp_data{9}=[
		951.036
		668.484
		641.17
		387.857
		746.586
		792.996
		927.445
		1020.03
		1041.77
		1195.95
		1278.19
		1391.84
		1347.1
		1454.21
		1513.15
		1511.62
		1535.34
		1552.23
		1580.83
		1632.17
		1681.47
		1785.27
		1866.73
		1922.88
		2058.12
		2125.51
		2209.35
		2233.15
		2281.42
		2298.78
		2294.75
		2299.62
		2310.52
		2305.09
		];

		
Experiment 10: 
		inputs.exp_data{10}=[
		955.09
		724.424
		727.249
		860.168
		827.846
		865.542
		1257.48
		1665.3
		1934.08
		2192.94
		2616.67
		2884.04
		3098.3
		3440.59
		3588.9
		3724.25
		3938.52
		4107.06
		4309.94
		4569.72
		4694.21
		5063.61
		5347.23
		5654.2
		5963.54
		6252.66
		6555.19
		6827.19
		7034.08
		7253.28
		7356.26
		7451.89
		7488.02
		7573.4
		];


-->Noise type:homo_var

		Error data 1: 
		inputs.exps.error_data{1}=[
		292.944
		156.495
		206.371
		172.041
		186.303
		216.442
		232.556
		288.38
		252.843
		283.049
		292.682
		278.274
		296.504
		299.712
		405.733
		595.644
		805.268
		1065.91
		1233.58
		1325.91
		1589.27
		1675.92
		1704.51
		1579.49
		1473.35
		1427.83
		1206.28
		1015.61
		1028.53
		920.232
		800.71
		713.502
		724.836
		740.413
		];


		Error data 2: 
		inputs.exps.error_data{2}=[
		170.228
		94.5123
		125.66
		81.8919
		103.274
		119.142
		147.992
		126.932
		197.106
		196.307
		228.573
		272.984
		259.392
		259.789
		273.716
		301.964
		322.859
		377.148
		423.978
		423.769
		449.033
		498.244
		543.719
		560.658
		597.191
		589.684
		611.223
		614.247
		635.594
		620.682
		581.36
		563.172
		567.002
		524.07
		];


		Error data 3: 
		inputs.exps.error_data{3}=[
		108.96
		94.8045
		84.8532
		130.743
		122.826
		202.08
		203.382
		138.54
		236.446
		210.97
		244.921
		251.128
		327.757
		382.918
		559.524
		538.148
		611.988
		608.026
		657.002
		668.002
		720.212
		676.834
		641.959
		698.171
		658.171
		591.76
		609.617
		545.726
		674.026
		522.961
		622.969
		511.883
		569.985
		632.345
		];


		Error data 4: 
		inputs.exps.error_data{4}=[
		111.905
		68.0406
		71.6527
		111.723
		93.5035
		164.525
		156.401
		259.119
		321.068
		366.019
		381.836
		463.565
		559.143
		680.626
		736.101
		840.575
		875.755
		1010.96
		1038.86
		1055.88
		1180.97
		1244.25
		1271.3
		1353.91
		1362.95
		1295.01
		1362.53
		1404.64
		1233.89
		1396.05
		1554.8
		1480.07
		1606.85
		1616.77
		];


		Error data 5: 
		inputs.exps.error_data{5}=[
		272.154
		71.1077
		163.88
		243.238
		186.176
		164.351
		353.843
		418.276
		286.798
		312.234
		292.282
		376.201
		556.712
		495.561
		538.106
		491.459
		397.063
		455.988
		319.082
		332.152
		332.843
		280.077
		205.433
		227.774
		323.316
		432.083
		570.884
		585.318
		710.174
		848.766
		896.741
		908.417
		1020
		1105.86
		];


		Error data 6: 
		inputs.exps.error_data{6}=[
		204.113
		238.628
		267.834
		172.187
		334.4
		314.249
		350.913
		374.375
		337.569
		294.646
		290.856
		387.923
		419.291
		439.918
		414.046
		415.524
		366.196
		334.484
		279.95
		254.447
		184.21
		144.8
		167.041
		140.544
		30.3109
		65.8717
		100.937
		98.3485
		227.514
		286.43
		428.257
		521.011
		534.254
		545.995
		];


		Error data 7: 
		inputs.exps.error_data{7}=[
		92.0361
		112.489
		53.4282
		76.2237
		71.2661
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


		Error data 8: 
		inputs.exps.error_data{8}=[
		1236.97
		227.54
		211.492
		341.542
		322.519
		277.236
		207.931
		206.773
		185.66
		188.852
		138.44
		104.254
		94.3358
		88.3827
		87.0402
		81.9626
		97.7328
		127.751
		140.951
		160.393
		152.281
		177.836
		160.377
		156.409
		128.657
		119.103
		95.1666
		103.222
		104.764
		95.9694
		81.6977
		80.6952
		79.5423
		76.5741
		];


		Error data 9: 
		inputs.exps.error_data{9}=[
		339.212
		301.676
		118.625
		161.595
		78.0065
		129.515
		91.5292
		82.1035
		75.7919
		87.8959
		41.4705
		25.6632
		92.167
		52.3288
		56.3342
		78.5829
		67.1713
		43.859
		27.7879
		4.23848
		26.1708
		44.4614
		10.044
		47.5068
		44.6957
		39.4818
		36.9214
		44.4982
		70.6546
		48.9852
		56.4873
		37.2256
		15.0746
		19.6602
		];


		Error data 10: 
		inputs.exps.error_data{10}=[
		437.128
		172.267
		284.902
		297.059
		248.953
		112.794
		134.592
		141.062
		114.096
		36.7985
		41.6172
		56.277
		66.9562
		108.054
		56.1835
		56.1819
		38.1412
		56.5535
		27.199
		29.6243
		108.047
		72.9308
		76.3194
		73.7428
		140.53
		120.958
		59.2978
		23.8553
		22.0807
		61.9996
		59.2512
		101.582
		131.208
		154.122
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 14.737455 %	 max error: 99.995106 %

		Experiment 2 : 
		 Observable 1 --> mean error: 20.329313 %	 max error: 99.995258 %

		Experiment 3 : 
		 Observable 1 --> mean error: 15.864386 %	 max error: 99.995508 %

		Experiment 4 : 
		 Observable 1 --> mean error: 16.804706 %	 max error: 99.995431 %

		Experiment 5 : 
		 Observable 1 --> mean error: 16.253379 %	 max error: 99.995886 %

		Experiment 6 : 
		 Observable 1 --> mean error: 15.020145 %	 max error: 99.994157 %

		Experiment 7 : 
		 Observable 1 --> mean error: 18.216283 %	 max error: 99.995608 %

		Experiment 8 : 
		 Observable 1 --> mean error: 23.927250 %	 max error: 99.996325 %

		Experiment 9 : 
		 Observable 1 --> mean error: 20.764471 %	 max error: 99.994832 %

		Experiment 10 : 
		 Observable 1 --> mean error: 14.702246 %	 max error: 99.994854 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 2043.688551 max data: 20178.140084

		Experiment 2 : 
		 Observable 1 -->  max residual: 1036.311769 max data: 3039.429928

		Experiment 3 : 
		 Observable 1 -->  max residual: 4515.906364 max data: 29962.125279

		Experiment 4 : 
		 Observable 1 -->  max residual: 4407.735767 max data: 24813.518296

		Experiment 5 : 
		 Observable 1 -->  max residual: 2432.398383 max data: 30985.899270

		Experiment 6 : 
		 Observable 1 -->  max residual: 2763.594209 max data: 26283.751966

		Experiment 7 : 
		 Observable 1 -->  max residual: 3364.603464 max data: 16607.008035

		Experiment 8 : 
		 Observable 1 -->  max residual: 1337.516381 max data: 1747.065684

		Experiment 9 : 
		 Observable 1 -->  max residual: 950.987059 max data: 2310.519943

		Experiment 10 : 
		 Observable 1 -->  max residual: 955.041322 max data: 7573.400060

--------------------------------------------------------------------------	   

>>>> Best objective function: 6605.053547 
	   

>>>> Computational cost: 751.924820 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1   : 4.1516e-02  +-  8.9449e-02 (     215%); 
	Vm1      : 4.9500e-01  +-  8.6711e-01 (     175%); (bound active) 
	h1       : 1.8104e+00  +-  2.4583e-02 (    1.36%); 
	Km1      : 5.3761e+00  +-  7.0313e-02 (    1.31%); 
	d1       : 1.0000e-01  +-  4.3948e-02 (    43.9%); (bound active) 
	alpha2   : 2.2322e-01  +-  9.0975e-01 (     408%); 
	d2       : 5.0000e-03  +-  6.6211e-04 (    13.2%); (bound active) 
	Kf       : 1.2000e-02  +-  4.5167e-03 (    37.6%); (bound active) 
	sc_molec : 4.7672e-03  +-  1.0352e-02 (     217%); (bound active) 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 9.984564e-01	 7.076719e-03	 -1.256309e-03	 -4.010145e-01	 -9.954596e-01	 2.931411e-02	 1.633212e-01	 -9.731739e-01
	 9.984564e-01	 1.000000e+00	 4.955754e-03	 5.307862e-03	 -4.414345e-01	 -9.960956e-01	 -2.073312e-02	 2.143481e-01	 -9.592287e-01
	 7.076719e-03	 4.955754e-03	 1.000000e+00	 -9.360060e-01	 -5.828724e-02	 -4.511260e-03	 -4.767436e-02	 6.833557e-02	 1.702879e-02
	 -1.256309e-03	 5.307862e-03	 -9.360060e-01	 1.000000e+00	 -4.779701e-03	 -4.567452e-03	 -4.139104e-02	 1.691506e-02	 -3.282554e-03
	 -4.010145e-01	 -4.414345e-01	 -5.828724e-02	 -4.779701e-03	 1.000000e+00	 4.703668e-01	 7.392087e-01	 -9.015844e-01	 2.310277e-01
	 -9.954596e-01	 -9.960956e-01	 -4.511260e-03	 -4.567452e-03	 4.703668e-01	 1.000000e+00	 3.141180e-02	 -2.264271e-01	 9.626577e-01
	 2.931411e-02	 -2.073312e-02	 -4.767436e-02	 -4.139104e-02	 7.392087e-01	 3.141180e-02	 1.000000e+00	 -9.465422e-01	 -2.168548e-01
	 1.633212e-01	 2.143481e-01	 6.833557e-02	 1.691506e-02	 -9.015844e-01	 -2.264271e-01	 -9.465422e-01	 1.000000e+00	 4.062076e-02
	 -9.731739e-01	 -9.592287e-01	 1.702879e-02	 -3.282554e-03	 2.310277e-01	 9.626577e-01	 -2.168548e-01	 4.062076e-02	 1.000000e+00
