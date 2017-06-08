   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-173629
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-173629\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000001;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.019562;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.490649;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.097176;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.149732;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[7.793e-06  6.336e-06  7.286e-07  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.8913	  0.0593	  1.8551	  0.0402	  0.0494	  1.8308	
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
		0.00143224
		0.00124203
		-0.00191838
		-0.00254107
		-0.000367076
		0.00136008
		-0.00841746
		0.00293343
		0.00471369
		-0.00271544
		0.00509947
		-0.000314081
		0.00607559
		0.00877119
		0.00389795
		0.00522124
		0.0056305
		0.0102035
		0.00789344
		0.00190341
		0.00369401
		0.00861722
		0.011241
		0.0145223
		0.0122226
		0.0159615
		0.00866227
		0.0161996
		0.0161512
		0.0163894
		0.0199636
		0.0121785
		0.0138133
		0.016074
		0.021545
		0.0187846
		0.0185146
		0.0174029
		0.0213326
		0.0191028
		0.0191199
		0.0213739
		0.0203013
		0.0209034
		0.0216595
		0.0203211
		0.020728
		0.0196443
		0.0222166
		0.0231536
		0.022936
		0.0213009
		0.02071
		0.0215836
		0.0196805
		0.018202
		0.0225997
		0.0143098
		0.0196888
		0.017008
		0.0190796
		0.0211716
		0.021398
		0.0197476
		0.0164917
		0.0174118
		0.0210713
		0.0155493
		0.0248515
		0.0224382
		0.0220566
		0.0233403
		0.0225
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 47.403687 %	 max error: 1102.069880 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009187 max data: 0.024852

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000544 
	   

>>>> Computational cost: 230.819080 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  2.5644e-01 ( 3.1e+07%); (bound active) 
	Vm1    : 1.2528e-02  +-  2.5079e-01 (   2e+03%); 
	h1     : 5.0000e+00  +-  6.4874e+01 ( 1.3e+03%); (bound active) 
	Km1    : 4.2126e-02  +-  3.3714e-01 (     800%); 
	d1     : 3.9949e-02  +-  4.5478e-02 (     114%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.996391e-01	 9.885057e-01	 9.996503e-01	 8.225539e-01
	 -9.996391e-01	 1.000000e+00	 -9.893068e-01	 -9.997109e-01	 -8.079031e-01
	 9.885057e-01	 -9.893068e-01	 1.000000e+00	 9.874030e-01	 8.149321e-01
	 9.996503e-01	 -9.997109e-01	 9.874030e-01	 1.000000e+00	 8.105990e-01
	 8.225539e-01	 -8.079031e-01	 8.149321e-01	 8.105990e-01	 1.000000e+00
