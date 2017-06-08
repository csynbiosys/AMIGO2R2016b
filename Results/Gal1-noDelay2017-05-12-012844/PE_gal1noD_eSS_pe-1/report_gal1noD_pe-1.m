   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-012844
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-012844\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000004;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.008269;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.257112;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.044651;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.003071;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.427e-03  1.160e-03  1.334e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.9987	  1.9941	  0.3801	  0.2509	  1.0247	  1.4240	
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
		0.00375551
		0.00391078
		0.000792072
		0.00632376
		0.00320805
		0.00300758
		0.00146637
		-0.000362143
		0.00123411
		0.00234486
		0.00445058
		-0.00300547
		0.00873016
		0.00347779
		0.00618747
		0.00483251
		0.00137946
		0.00405074
		0.00743374
		0.00360201
		0.0121208
		0.0121155
		0.00692264
		0.0127501
		0.0110449
		0.00850388
		0.0137128
		0.0145535
		0.0174416
		0.0159644
		0.0181492
		0.0130078
		0.02076
		0.0135866
		0.0228603
		0.0199424
		0.0190288
		0.0142593
		0.0237785
		0.0231838
		0.0207209
		0.0225291
		0.0247194
		0.0201211
		0.0272729
		0.0248346
		0.0236609
		0.0312526
		0.0193066
		0.0292228
		0.0330799
		0.0269861
		0.0235354
		0.0266762
		0.0267043
		0.0257065
		0.031698
		0.027851
		0.0264214
		0.0297749
		0.0266105
		0.031847
		0.0221951
		0.0338234
		0.0291049
		0.0287113
		0.0281569
		0.0242105
		0.0326324
		0.0240838
		0.0330627
		0.0326146
		0.0342646
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 33.985141 %	 max error: 337.441725 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.006707 max data: 0.034265

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000750 
	   

>>>> Computational cost: 252.893221 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  1.7606e+01 (2.13e+09%); (bound active) 
	Vm1    : 6.7691e-03  +-  1.7602e+01 ( 2.6e+05%); 
	h1     : 5.0000e+00  +-  3.0317e+03 (6.06e+04%); (bound active) 
	Km1    : 2.2201e-01  +-  1.9457e+02 (8.76e+04%); 
	d1     : 1.6846e-02  +-  3.1135e-02 (     185%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.000000e+00	 9.999618e-01	 9.999996e-01	 8.094555e-01
	 -1.000000e+00	 1.000000e+00	 -9.999610e-01	 -9.999996e-01	 -8.093291e-01
	 9.999618e-01	 -9.999610e-01	 1.000000e+00	 9.999659e-01	 8.123690e-01
	 9.999996e-01	 -9.999996e-01	 9.999659e-01	 1.000000e+00	 8.092637e-01
	 8.094555e-01	 -8.093291e-01	 8.123690e-01	 8.092637e-01	 1.000000e+00
