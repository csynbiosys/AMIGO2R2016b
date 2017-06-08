   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-215008
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-215008\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000003;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.003223;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.051720;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.033180;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.150357;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.930e-05  1.569e-05  1.804e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  1.3754	  0.6344	  0.9191	  0.0153	  1.8340	
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
		0.00135929
		0.000413479
		0.000885238
		0.00440042
		0.00113418
		0.000552371
		0.000247436
		0.00333985
		-0.00152516
		-0.00160905
		0.00603076
		-0.000954978
		0.00166354
		-0.00258058
		0.000151035
		-0.000909152
		2.28517e-05
		-0.00650041
		0.000296626
		0.0041609
		0.00323976
		0.00111718
		0.00529804
		0.00431586
		0.0054011
		0.00410717
		-0.00196545
		0.00705711
		0.00802789
		0.0117499
		0.00773255
		0.00626306
		0.00610444
		0.0103155
		0.00585082
		0.011023
		0.0109285
		0.00841058
		0.011809
		0.0173223
		0.0158013
		0.0211082
		0.0165237
		0.0198565
		0.0240217
		0.0150388
		0.0225132
		0.0208303
		0.0175024
		0.0155507
		0.0206759
		0.0237799
		0.0243874
		0.0218083
		0.0254221
		0.0231325
		0.0205931
		0.0216724
		0.022441
		0.0224048
		0.0251852
		0.0217018
		0.0201653
		0.0219882
		0.0198657
		0.0230655
		0.0218763
		0.0264578
		0.0239218
		0.0167637
		0.0190033
		0.0230444
		0.0250426
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 56.415511 %	 max error: 915.340873 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.006919 max data: 0.026458

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000560 
	   

>>>> Computational cost: 300.067923 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.4111e-07  +-  2.8425e-03 (3.38e+05%); 
	Vm1    : 1.0217e-02  +-  1.0682e-02 (     105%); 
	h1     : 4.6028e+00  +-  4.0904e+06 (8.89e+07%); 
	Km1    : 1.8881e-02  +-  3.5476e+03 (1.88e+07%); 
	d1     : 3.0463e-02  +-  4.0504e-02 (     133%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -8.565580e-01	 3.461344e-01	 -3.461317e-01	 -2.920768e-01
	 -8.565580e-01	 1.000000e+00	 -4.158632e-02	 4.158273e-02	 6.725615e-01
	 3.461344e-01	 -4.158632e-02	 1.000000e+00	 -1.000000e+00	 6.953170e-01
	 -3.461317e-01	 4.158273e-02	 -1.000000e+00	 1.000000e+00	 -6.953197e-01
	 -2.920768e-01	 6.725615e-01	 6.953170e-01	 -6.953197e-01	 1.000000e+00
