   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-123227
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-123227\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000002;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.008199;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=3.184480;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.280849;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.188397;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[9.141e-06  7.432e-06  8.547e-07  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0104	  0.5054	  0.5066	  0.4923	  0.0234	  0.0106	
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
		-0.000343215
		-0.00364394
		0.000447196
		-0.000578376
		0.00644347
		-0.00110828
		0.00324697
		-0.00321823
		-0.00486358
		-0.00121315
		0.00368024
		-0.00152766
		0.00276681
		-0.00332087
		0.000389235
		-0.00207593
		0.000730842
		-0.00291754
		0.000118092
		0.00276752
		0.00260726
		-0.00250688
		0.00202816
		0.00512545
		-0.00198639
		0.00349464
		0.00665499
		0.00542879
		0.0105691
		0.010011
		0.00391679
		0.00884675
		0.0130837
		0.0137251
		0.0121775
		0.0125613
		0.0168035
		0.0178326
		0.0190042
		0.0164699
		0.0196196
		0.014185
		0.0200676
		0.0203317
		0.0218101
		0.0251765
		0.0197711
		0.0173474
		0.0169387
		0.024591
		0.0234134
		0.0218792
		0.025924
		0.0243438
		0.0267902
		0.0276604
		0.0268699
		0.0181643
		0.0219801
		0.0241578
		0.0177964
		0.0245704
		0.0227795
		0.0285363
		0.0210248
		0.0173899
		0.0244223
		0.0238041
		0.0218208
		0.0213619
		0.0181505
		0.0222129
		0.0199444
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 53.896944 %	 max error: 736.568597 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.006449 max data: 0.028536

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000605 
	   

>>>> Computational cost: 240.350741 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  3.7607e-01 (4.54e+07%); (bound active) 
	Vm1    : 1.5206e-02  +-  3.7635e-01 (2.47e+03%); 
	h1     : 5.0000e+00  +-  3.0986e+03 ( 6.2e+04%); (bound active) 
	Km1    : 2.6325e-02  +-  1.5426e+00 (5.86e+03%); 
	d1     : 4.4185e-02  +-  5.3231e-02 (     120%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.990266e-01	 9.999305e-01	 -9.997458e-01	 3.572873e-02
	 -9.990266e-01	 1.000000e+00	 -9.985013e-01	 9.978349e-01	 8.295709e-03
	 9.999305e-01	 -9.985013e-01	 1.000000e+00	 -9.999316e-01	 4.583994e-02
	 -9.997458e-01	 9.978349e-01	 -9.999316e-01	 1.000000e+00	 -5.687523e-02
	 3.572873e-02	 8.295709e-03	 4.583994e-02	 -5.687523e-02	 1.000000e+00
