   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-060639
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-060639\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000066;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.069880;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=4.388869;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.365648;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.027084;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.452e-03  1.994e-03  2.293e-04  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.0867	  0.0041	  1.6281	  1.5669	  0.0207	  0.0000	
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
		0.00085068
		-0.00129889
		0.000953984
		-0.00375922
		-0.00366803
		-8.82831e-05
		0.000357772
		0.00394534
		0.0055406
		0.00439321
		-0.00881367
		0.000692365
		0.00350848
		0.00175831
		0.00352089
		0.00339222
		0.00506153
		0.00845369
		0.00774226
		0.00651392
		0.0116573
		0.00596737
		0.0122487
		0.00576916
		0.0127452
		0.00840782
		0.0157225
		0.0107001
		0.00896609
		0.00799092
		0.0115752
		0.017466
		0.00784035
		0.0113236
		0.0123028
		0.0158045
		0.00979003
		0.012636
		0.0068574
		0.0141991
		0.0171465
		0.0108633
		0.0120897
		0.017236
		0.0139439
		0.0113005
		0.0118138
		0.0213412
		0.0149766
		0.0168883
		0.0159746
		0.0237671
		0.0266422
		0.0166193
		0.0276319
		0.023266
		0.0214141
		0.020412
		0.0258846
		0.0156857
		0.0231651
		0.0155612
		0.0274682
		0.0216769
		0.0196884
		0.0190013
		0.0206685
		0.0187112
		0.0196855
		0.0124937
		0.013255
		0.0172797
		0.0209231
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 47.441340 %	 max error: 780.276180 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.011166 max data: 0.027632

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000896 
	   

>>>> Computational cost: 235.670711 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  6.1878e-03 (7.47e+05%); (bound active) 
	Vm1    : 8.8297e-03  +-  1.0585e-02 (     120%); 
	h1     : 5.0000e+00  +-  6.5527e+03 (1.31e+05%); (bound active) 
	Km1    : 1.4210e-01  +-  2.1496e+02 (1.51e+05%); 
	d1     : 2.4075e-02  +-  4.7749e-02 (     198%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 3.806616e-01	 -6.949663e-01	 4.708959e-01	 7.861540e-01
	 3.806616e-01	 1.000000e+00	 -8.897317e-01	 5.776141e-02	 8.631267e-01
	 -6.949663e-01	 -8.897317e-01	 1.000000e+00	 -2.023586e-01	 -9.591546e-01
	 4.708959e-01	 5.776141e-02	 -2.023586e-01	 1.000000e+00	 2.080335e-01
	 7.861540e-01	 8.631267e-01	 -9.591546e-01	 2.080335e-01	 1.000000e+00
