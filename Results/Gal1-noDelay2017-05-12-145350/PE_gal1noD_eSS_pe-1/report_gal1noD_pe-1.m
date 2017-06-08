   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-145350
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-145350\PE_gal1noD_eSS_pe-1 


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
		v_guess(2)=0.005536;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.271224;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.071305;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.004361;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[5.754e-04  4.678e-04  5.380e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  2.0000	  1.1998	  0.0187	  0.0208	  0.0218	  1.8863	
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
		0.00232341
		0.00343073
		0.00292369
		0.00557817
		0.0026608
		0.00068164
		0.00181574
		0.00158506
		0.000897172
		0.00183601
		-0.000677786
		0.00374815
		0.00531454
		0.000761013
		0.00799462
		0.00895214
		-0.00157784
		0.00773563
		0.00927966
		0.00658828
		0.00901969
		0.0122985
		0.0135453
		0.00922809
		0.0128713
		0.0147447
		0.0161067
		0.0199232
		0.0230772
		0.0121784
		0.0079793
		0.0129941
		0.0222819
		0.0158119
		0.0228614
		0.014795
		0.0158734
		0.018407
		0.0197763
		0.0118583
		0.0157151
		0.0171312
		0.0140447
		0.0119842
		0.0115868
		0.0144238
		0.0146179
		0.018118
		0.0175943
		0.0161673
		0.013823
		0.0138538
		0.0173066
		0.019708
		0.0100752
		0.0129759
		0.0132125
		0.0161462
		0.0133111
		0.00919904
		0.012794
		0.0075846
		0.0126943
		0.00903656
		0.0106098
		0.0163935
		0.0105999
		0.011323
		0.00762655
		0.015656
		0.0114271
		0.018537
		0.0141218
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 46.745079 %	 max error: 532.429868 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.008401 max data: 0.023077

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000750 
	   

>>>> Computational cost: 285.637831 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2842e-07  +-  4.3873e-01 ( 5.3e+07%); (bound active) 
	Vm1    : 1.3199e-02  +-  4.3289e-01 (3.28e+03%); 
	h1     : 5.0000e+00  +-  4.7059e+02 (9.41e+03%); (bound active) 
	Km1    : 2.4869e-02  +-  1.6738e-01 (     673%); 
	d1     : 4.1616e-02  +-  5.3965e-02 (     130%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.996460e-01	 9.980994e-01	 9.899319e-01	 5.085795e-01
	 -9.996460e-01	 1.000000e+00	 -9.990641e-01	 -9.867456e-01	 -4.856490e-01
	 9.980994e-01	 -9.990641e-01	 1.000000e+00	 9.794033e-01	 4.628276e-01
	 9.899319e-01	 -9.867456e-01	 9.794033e-01	 1.000000e+00	 5.997856e-01
	 5.085795e-01	 -4.856490e-01	 4.628276e-01	 5.997856e-01	 1.000000e+00
