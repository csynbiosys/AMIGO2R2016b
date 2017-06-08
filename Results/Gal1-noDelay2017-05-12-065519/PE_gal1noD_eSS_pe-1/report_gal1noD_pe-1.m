   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-065519
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-065519\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000006;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.046136;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.334324;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.065979;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.142850;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[4.431e-05  3.602e-05  4.143e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.1964	  1.0073	  0.5081	  0.0000	  1.1011	  0.0000	
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
		0.00352103
		0.000275509
		8.13048e-05
		-0.00146576
		0.00128211
		0.000355188
		-0.00145722
		0.00115603
		0.00287531
		0.00327397
		0.00398354
		0.00116966
		0.00619057
		0.00593137
		0.00296177
		0.00406232
		0.00190361
		0.00841826
		0.00873035
		0.00789119
		0.00807301
		0.0127071
		0.0143661
		0.0104243
		0.0105554
		0.0126186
		0.0117549
		0.0132982
		0.0127121
		0.00884654
		0.0156123
		0.0157861
		0.0218153
		0.0219127
		0.021064
		0.0166854
		0.0147917
		0.0226771
		0.023986
		0.0234442
		0.0240449
		0.0243349
		0.020815
		0.0225917
		0.0213483
		0.0255855
		0.0221172
		0.0195184
		0.0222087
		0.0242004
		0.0222208
		0.0198444
		0.0204896
		0.0167079
		0.0222666
		0.0197335
		0.0157385
		0.0171275
		0.0233339
		0.01951
		0.01687
		0.0205309
		0.0148668
		0.0195381
		0.017657
		0.0194092
		0.0231508
		0.0218165
		0.0228818
		0.0204923
		0.0148372
		0.0211829
		0.0156087
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 26.959052 %	 max error: 202.822666 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.006824 max data: 0.025586

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000422 
	   

>>>> Computational cost: 244.266366 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  4.8587e-03 (5.87e+05%); (bound active) 
	Vm1    : 1.5822e-02  +-  1.9452e-02 (     123%); 
	h1     : 5.0000e+00  +-  2.3599e+02 (4.72e+03%); (bound active) 
	Km1    : 1.6056e-01  +-  1.5488e+00 (     965%); 
	d1     : 4.5181e-02  +-  7.5236e-02 (     167%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 4.912390e-01	 6.820948e-01	 6.848675e-01	 7.266069e-01
	 4.912390e-01	 1.000000e+00	 6.758755e-01	 7.036133e-01	 9.451979e-01
	 6.820948e-01	 6.758755e-01	 1.000000e+00	 9.991621e-01	 8.353285e-01
	 6.848675e-01	 7.036133e-01	 9.991621e-01	 1.000000e+00	 8.545879e-01
	 7.266069e-01	 9.451979e-01	 8.353285e-01	 8.545879e-01	 1.000000e+00
