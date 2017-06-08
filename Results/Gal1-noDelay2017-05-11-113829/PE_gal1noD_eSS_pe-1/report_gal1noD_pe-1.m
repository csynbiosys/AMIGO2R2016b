   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-113829
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-113829\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000016;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.002439;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.522840;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.157341;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.005250;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.113e-03  2.531e-03  2.911e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0015	  1.4458	  1.8941	  2.0000	  1.9985	  2.0000	
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
		0.00242643
		-0.0047768
		1.65086e-05
		0.00313556
		-0.00552776
		0.00104346
		-9.13362e-05
		-0.00108132
		0.000677451
		0.00241448
		0.00269409
		0.0032703
		-0.00227761
		-0.00299417
		0.000579719
		-0.00151135
		0.00162599
		0.00106479
		-0.00150937
		0.00225605
		0.004267
		-0.000108051
		0.00260708
		0.0101688
		0.0087106
		0.00387485
		0.00540797
		0.00255588
		0.00845481
		0.00723147
		0.0111429
		0.00764978
		0.0091716
		0.011631
		0.0109716
		0.0134328
		0.00937559
		0.0198346
		0.0105664
		0.00987503
		0.0180554
		0.0136364
		0.0171887
		0.0157513
		0.0127122
		0.0156695
		0.0206824
		0.0190415
		0.0232255
		0.0204264
		0.0195822
		0.0222256
		0.0202631
		0.0220833
		0.0231075
		0.0296385
		0.0206461
		0.0327639
		0.0217653
		0.0241833
		0.028113
		0.0248047
		0.0247444
		0.0320027
		0.0237534
		0.0260378
		0.0286815
		0.0290737
		0.033745
		0.0328896
		0.0281329
		0.0270061
		0.0299977
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 106.833185 %	 max error: 2939.930119 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007891 max data: 0.033745

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000616 
	   

>>>> Computational cost: 296.261499 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.9205e-07  +-  3.2524e+01 (3.65e+09%); 
	Vm1    : 9.4458e-03  +-  8.9558e+01 (9.48e+05%); 
	h1     : 3.0946e-01  +-  3.5988e+03 (1.16e+06%); 
	Km1    : 3.6800e-01  +-  5.4967e+03 (1.49e+06%); (bound active) 
	d1     : 1.5577e-02  +-  2.7867e-01 (1.79e+03%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.999284e-01	 9.999820e-01	 -9.985403e-01	 -9.042865e-01
	 -9.999284e-01	 1.000000e+00	 -9.999821e-01	 9.991152e-01	 9.093017e-01
	 9.999820e-01	 -9.999821e-01	 1.000000e+00	 -9.988461e-01	 -9.068099e-01
	 -9.985403e-01	 9.991152e-01	 -9.988461e-01	 1.000000e+00	 9.258785e-01
	 -9.042865e-01	 9.093017e-01	 -9.068099e-01	 9.258785e-01	 1.000000e+00
