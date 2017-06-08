   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-041441
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-041441\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000005;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.009075;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.237581;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.042302;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.168431;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[3.124e-05  2.540e-05  2.921e-06  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.9721	  0.0000	  0.0240	  0.2427	  0.6536	  0.2415	
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
		-0.0029699
		0.000556525
		-0.00219836
		0.00197439
		-0.0045714
		-0.00282642
		-0.00340608
		0.00344761
		0.00119253
		0.00436846
		0.00780161
		0.0042396
		0.00586809
		-0.00218431
		0.00138685
		0.00875006
		0.00956262
		0.0123667
		0.00769268
		0.0110942
		0.00664056
		0.00480187
		0.0118386
		0.0111967
		0.00915122
		0.0111074
		0.00777017
		0.00470143
		0.00661958
		0.00937547
		0.0154551
		0.00611427
		0.00343267
		0.0115839
		0.00946183
		0.0056989
		0.0121299
		0.00247848
		0.00840648
		0.00837548
		0.0111947
		0.0117731
		0.00951948
		0.0127509
		0.0133582
		0.00967405
		0.0156858
		0.00950851
		0.0125792
		0.0126958
		0.0120227
		0.00902817
		0.0105591
		0.0165794
		0.0149892
		0.0190134
		0.0184662
		0.0125987
		0.0124598
		0.0229621
		0.0157798
		0.0162973
		0.0184591
		0.0163953
		0.0234948
		0.0243157
		0.0254353
		0.0199876
		0.0192181
		0.0247072
		0.0272318
		0.0228414
		0.0239837
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 45.098923 %	 max error: 333.954154 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007295 max data: 0.027232

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000713 
	   

>>>> Computational cost: 240.132339 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  1.3457e-02 (1.63e+06%); (bound active) 
	Vm1    : 1.6349e-02  +-  1.3668e-02 (    83.6%); 
	h1     : 2.0574e+00  +-  2.8891e+01 ( 1.4e+03%); 
	Km1    : 3.2116e-02  +-  6.7447e-02 (     210%); 
	d1     : 5.0562e-02  +-  8.1052e-02 (     160%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.425856e-01	 9.522326e-01	 -7.897812e-01	 8.234285e-01
	 -1.425856e-01	 1.000000e+00	 -1.875496e-01	 2.044552e-01	 4.330129e-01
	 9.522326e-01	 -1.875496e-01	 1.000000e+00	 -9.225335e-01	 7.795997e-01
	 -7.897812e-01	 2.044552e-01	 -9.225335e-01	 1.000000e+00	 -6.607377e-01
	 8.234285e-01	 4.330129e-01	 7.795997e-01	 -6.607377e-01	 1.000000e+00
