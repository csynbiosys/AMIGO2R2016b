   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-171427
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-171427\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000068;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.006192;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.848637;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.233600;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.165587;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[4.105e-04  3.338e-04  3.838e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0537	  0.0497	  0.0543	  1.9119	  0.0629	  0.0387	
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
		-0.00269462
		0.00583439
		0.00802304
		-0.00318873
		0.000102981
		0.00163375
		-0.00202951
		-0.000860889
		0.00411582
		0.0062252
		0.00341566
		0.00361718
		0.00193415
		0.00524063
		0.00467
		-0.00180983
		0.00457996
		0.00655999
		0.00494586
		0.00263217
		0.00849929
		0.00398261
		0.00675765
		0.0121743
		0.0152696
		0.0105856
		0.00572751
		0.00669608
		0.00540068
		0.0107933
		0.012062
		0.0127864
		0.0145732
		0.0115009
		0.0115712
		0.0125459
		0.0103568
		0.0146979
		0.015259
		0.019602
		0.00644747
		0.0168305
		0.0156775
		0.0177558
		0.0168244
		0.0124309
		0.0140272
		0.0173801
		0.019849
		0.0195473
		0.0168751
		0.0279304
		0.019556
		0.0174724
		0.0206778
		0.020235
		0.025855
		0.0216573
		0.0206924
		0.0208686
		0.0194823
		0.0200728
		0.0158991
		0.0242292
		0.0258342
		0.0216746
		0.0234997
		0.0217582
		0.0219067
		0.0234364
		0.0224406
		0.0192945
		0.0211969
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 38.468957 %	 max error: 341.689396 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.008360 max data: 0.027930

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000686 
	   

>>>> Computational cost: 300.114724 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2799e-05  +-  1.1268e+01 (1.36e+07%); (bound active) 
	Vm1    : 3.4885e-02  +-  2.9211e+01 (8.37e+04%); 
	h1     : 3.3469e-01  +-  2.9484e+02 (8.81e+04%); 
	Km1    : 3.6800e-01  +-  4.6770e+02 (1.27e+05%); (bound active) 
	d1     : 6.1456e-02  +-  9.9769e-02 (     162%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.983344e-01	 9.984866e-01	 -9.687518e-01	 6.505011e-01
	 -9.983344e-01	 1.000000e+00	 -9.999945e-01	 9.814431e-01	 -6.588357e-01
	 9.984866e-01	 -9.999945e-01	 1.000000e+00	 -9.809255e-01	 6.598229e-01
	 -9.687518e-01	 9.814431e-01	 -9.809255e-01	 1.000000e+00	 -6.752917e-01
	 6.505011e-01	 -6.588357e-01	 6.598229e-01	 -6.752917e-01	 1.000000e+00
