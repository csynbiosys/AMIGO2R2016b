   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-232918
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-232918\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000033;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.001283;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=5.767255;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.289082;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.007600;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[4.395e-03  3.573e-03  4.109e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0836	  0.0807	  0.7835	  0.0775	  0.3452	  0.0463	
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
		-0.000962289
		-0.00253098
		-0.00499334
		-0.00108848
		-0.00127617
		0.00301022
		-0.00406826
		0.00190962
		0.000496312
		0.00238813
		0.00408186
		0.00308636
		0.0016412
		0.0122528
		0.00453133
		0.00148681
		0.00239472
		0.00288573
		0.00855178
		0.00538713
		0.0102647
		0.00984213
		0.0107757
		0.0127477
		0.0122885
		0.0148439
		0.0132145
		0.0146526
		0.0186651
		0.0107187
		0.013499
		0.0102148
		0.020002
		0.0226144
		0.0189761
		0.0198075
		0.0159379
		0.015646
		0.0211087
		0.0222207
		0.015644
		0.0180389
		0.0230906
		0.0218117
		0.0188082
		0.0197009
		0.0184754
		0.0217525
		0.023096
		0.0263714
		0.0158042
		0.026542
		0.0221745
		0.0216507
		0.0255301
		0.024857
		0.0231773
		0.0266882
		0.0262591
		0.0275446
		0.0285266
		0.0243187
		0.0176374
		0.0288688
		0.029452
		0.0250673
		0.0253965
		0.0207992
		0.028775
		0.0268206
		0.0196962
		0.0273393
		0.019417
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 38.176279 %	 max error: 280.071126 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007862 max data: 0.029452

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000724 
	   

>>>> Computational cost: 255.077235 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  6.9029e-01 (8.34e+07%); (bound active) 
	Vm1    : 1.2457e-02  +-  7.0294e-01 (5.64e+03%); 
	h1     : 5.0000e+00  +-  1.5014e+02 (   3e+03%); (bound active) 
	Km1    : 5.0883e-02  +-  1.3478e+00 (2.65e+03%); 
	d1     : 4.0607e-02  +-  7.3761e-02 (     182%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.995265e-01	 9.944027e-01	 9.989484e-01	 -6.922945e-01
	 -9.995265e-01	 1.000000e+00	 -9.967499e-01	 -9.977695e-01	 7.138350e-01
	 9.944027e-01	 -9.967499e-01	 1.000000e+00	 9.928777e-01	 -7.549785e-01
	 9.989484e-01	 -9.977695e-01	 9.928777e-01	 1.000000e+00	 -6.791193e-01
	 -6.922945e-01	 7.138350e-01	 -7.549785e-01	 -6.791193e-01	 1.000000e+00
