   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 12-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-12-111523
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-12-111523\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000014;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.006211;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.197709;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.099238;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.014079;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[1.014e-03  8.245e-04  9.482e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  1.9413	  0.5450	  0.1346	  0.0000	  1.9840	  0.0035	
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
		-0.0035943
		-0.00189875
		-0.0018067
		0.000310587
		0.000982552
		0.00152251
		-0.00124155
		-0.000246113
		0.00228071
		0.00282851
		-0.0036019
		0.00703582
		0.00210647
		0.00460701
		0.0088064
		0.00249392
		0.00239308
		0.0115763
		0.0105609
		0.0106495
		0.0076767
		0.00757454
		0.0112827
		0.0172687
		0.0158527
		0.0123184
		0.0108771
		0.0126591
		0.0167464
		0.0185914
		0.0143728
		0.0174859
		0.0215773
		0.0238033
		0.0159257
		0.0171142
		0.0211077
		0.0232434
		0.0183556
		0.0238368
		0.0150648
		0.0237938
		0.0243554
		0.0254172
		0.0169849
		0.0212919
		0.0183886
		0.0183364
		0.0218791
		0.0237544
		0.0182091
		0.0216043
		0.020664
		0.0208371
		0.015929
		0.0192298
		0.0131125
		0.0203753
		0.0159177
		0.0141917
		0.0226897
		0.0191755
		0.0208154
		0.0166709
		0.0222123
		0.0242211
		0.0163368
		0.0193338
		0.0179079
		0.0180561
		0.0148783
		0.0240125
		0.0191609
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 38.308620 %	 max error: 545.059626 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.006204 max data: 0.025417

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000621 
	   

>>>> Computational cost: 279.148189 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  7.1578e-03 (8.64e+05%); (bound active) 
	Vm1    : 1.0642e-02  +-  1.7555e-02 (     165%); 
	h1     : 9.3380e-01  +-  6.4536e+00 (     691%); 
	Km1    : 1.0497e-01  +-  4.3784e-01 (     417%); 
	d1     : 2.5273e-02  +-  4.3645e-02 (     173%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -6.777276e-01	 7.644707e-01	 -3.599883e-01	 7.439641e-01
	 -6.777276e-01	 1.000000e+00	 -9.795735e-01	 -2.936510e-01	 -7.074396e-02
	 7.644707e-01	 -9.795735e-01	 1.000000e+00	 1.628494e-01	 2.258774e-01
	 -3.599883e-01	 -2.936510e-01	 1.628494e-01	 1.000000e+00	 -8.675146e-01
	 7.439641e-01	 -7.074396e-02	 2.258774e-01	 -8.675146e-01	 1.000000e+00
