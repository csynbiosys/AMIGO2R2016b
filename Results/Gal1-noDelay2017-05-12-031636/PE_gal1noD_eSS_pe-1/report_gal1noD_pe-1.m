   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-031636
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-031636\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000038;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.001080;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.133058;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.168853;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.140424;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.671e-04  2.172e-04  2.498e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.6491	  0.4633	  0.0002	  0.5508	  1.5143	  0.7103	
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
		0.00277808
		-0.00259905
		-0.0025953
		0.00407347
		-0.00476958
		-0.00142828
		0.00163767
		0.004849
		0.0022759
		0.00454884
		-0.00391629
		0.00381585
		0.00338967
		0.00855896
		0.00869939
		0.00756024
		0.00562464
		0.00773254
		0.00768762
		0.0118264
		0.00807065
		0.00986272
		0.0127511
		0.0173366
		0.0119388
		0.013625
		0.0154704
		0.0118482
		0.0114799
		0.0206938
		0.0138626
		0.019782
		0.0172883
		0.0201601
		0.0119889
		0.0162922
		0.0119597
		0.020058
		0.0182252
		0.0224175
		0.0154814
		0.019555
		0.0120533
		0.0151761
		0.0162616
		0.0137678
		0.0183674
		0.0148893
		0.020004
		0.0140279
		0.0105313
		0.0129197
		0.0188652
		0.016549
		0.0183637
		0.0185284
		0.0232051
		0.0248287
		0.0309448
		0.0175864
		0.0178548
		0.0166475
		0.0197944
		0.0280859
		0.0207267
		0.0205836
		0.0229506
		0.02819
		0.0220359
		0.0291105
		0.0255732
		0.0305114
		0.0280644
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 28.693978 %	 max error: 170.811894 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.010660 max data: 0.030945

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000804 
	   

>>>> Computational cost: 257.120848 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  7.9256e-03 (9.57e+05%); (bound active) 
	Vm1    : 1.4015e-02  +-  3.9226e-02 (     280%); 
	h1     : 3.8850e+00  +-  6.2009e+01 ( 1.6e+03%); 
	Km1    : 3.6800e-01  +-  1.4819e+00 (     403%); (bound active) 
	d1     : 3.3730e-02  +-  9.6069e-02 (     285%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 7.352231e-01	 -7.249482e-01	 -6.767627e-01	 8.408431e-01
	 7.352231e-01	 1.000000e+00	 -9.872959e-01	 -9.787308e-01	 9.786698e-01
	 -7.249482e-01	 -9.872959e-01	 1.000000e+00	 9.937338e-01	 -9.584196e-01
	 -6.767627e-01	 -9.787308e-01	 9.937338e-01	 1.000000e+00	 -9.463471e-01
	 8.408431e-01	 9.786698e-01	 -9.584196e-01	 -9.463471e-01	 1.000000e+00
