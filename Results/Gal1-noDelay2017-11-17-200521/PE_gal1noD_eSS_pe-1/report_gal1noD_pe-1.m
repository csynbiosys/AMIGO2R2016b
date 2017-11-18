   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 17-Nov-2017
Problem folder:	 Results\Gal1-noDelay2017-11-17-200521
Results folder in problem folder:	 Results\Gal1-noDelay2017-11-17-200521\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.041400;  v_min(1)=0.004140; v_max(1)=0.414000;
		v_guess(2)=1.890000;  v_min(2)=0.189000; v_max(2)=5.000000;
		v_guess(3)=0.036800;  v_min(3)=0.003680; v_max(3)=0.368000;
		v_guess(4)=0.030000;  v_min(4)=0.003000; v_max(4)=0.300000;



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

--> Number of states: 4


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.00003     0.04140     1.89000     0.03680     0.03000     0.01000     0.01000     0.00200     0.00230  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.380e+00  1.150e+00  1.000e+00  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 300.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 61: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0187	
			Control switching times: 	  0.0000	300.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 61

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.13801
		0.788693
		1.05895
		0.934159
		1.00241
		0.977755
		1.02511
		0.869019
		0.945112
		1.01118
		1.00918
		0.944089
		0.996441
		1.05076
		0.959418
		0.969573
		0.914256
		1.13577
		0.881643
		1.02183
		0.955552
		0.718467
		1.07928
		0.932435
		0.919855
		1.07632
		0.955153
		0.897144
		0.936617
		0.840938
		0.974943
		1.00175
		0.939799
		0.87465
		0.949075
		0.683051
		0.990199
		0.882253
		0.977577
		0.965673
		0.890077
		0.987744
		0.957726
		0.762544
		0.766746
		0.823989
		0.656123
		0.914955
		0.836329
		0.683279
		0.828573
		0.809227
		0.45925
		0.75381
		0.730535
		0.543572
		0.886375
		0.834838
		0.71033
		0.776766
		0.650004
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 9.434071 %	 max error: 67.345443 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.309284 max data: 1.138009

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.608629 
	   

>>>> Computational cost: 206.857326 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Vm1    : 4.1400e-03  +-  2.3829e+10 (5.76e+14%); (bound active) 
	h1     : 5.0000e+00  +-  2.0048e+13 (4.01e+14%); (bound active) 
	Km1    : 3.6800e-01  +-  4.1690e+12 (1.13e+15%); (bound active) 
	d1     : 1.4627e-02  +-  6.1692e-02 (     422%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 5.706485e-01	 -5.001337e-01	 -1.396512e-01
	 5.706485e-01	 1.000000e+00	 -9.965124e-01	 5.733769e-01
	 -5.001337e-01	 -9.965124e-01	 1.000000e+00	 -6.188157e-01
	 -1.396512e-01	 5.733769e-01	 -6.188157e-01	 1.000000e+00


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

--> Number of states: 4


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.00003     0.04140     1.89000     0.03680     0.03000     0.01000     0.01000     0.00200     0.00230  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.380e+00  1.150e+00  1.000e+00  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 300.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 61: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0223	
			Control switching times: 	  0.0000	300.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 61

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.00552
		1.05603
		0.991416
		1.01393
		1.04294
		0.843915
		1.03878
		0.959876
		0.92585
		1.18801
		1.15582
		0.882865
		1.11901
		0.927166
		0.821323
		1.13935
		0.82021
		1.03839
		1.17282
		1.07681
		1.03829
		1.1194
		1.10334
		0.933819
		0.869514
		0.746967
		0.946951
		0.859756
		0.744789
		0.861664
		0.883012
		0.841548
		0.912752
		1.01574
		0.992466
		0.872298
		0.922589
		0.984959
		0.878244
		0.856049
		0.737738
		0.841152
		0.764686
		0.960324
		0.867541
		0.681207
		0.772056
		0.881262
		0.728761
		0.759995
		0.837691
		0.802894
		0.695765
		0.782239
		0.770661
		0.744009
		0.802944
		0.779103
		0.849044
		0.970678
		0.671675
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 8.724789 %	 max error: 25.694806 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.213897 max data: 1.188011

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.597901 
	   

>>>> Computational cost: 262.518483 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Estimated global parameters: 

	Vm1    : 1.7601e-01  
	h1     : 1.0374e+00  
	Km1    : 2.6899e-01  
	d1     : 3.2684e-02  


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

--> Number of states: 4


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.00003     0.04140     1.89000     0.03680     0.03000     0.01000     0.01000     0.00200     0.00230  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.380e+00  1.150e+00  1.000e+00  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 300.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 61: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0223	
			Control switching times: 	  0.0000	300.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 61

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.00552
		1.05603
		0.991416
		1.01393
		1.04294
		0.843915
		1.03878
		0.959876
		0.92585
		1.18801
		1.15582
		0.882865
		1.11901
		0.927166
		0.821323
		1.13935
		0.82021
		1.03839
		1.17282
		1.07681
		1.03829
		1.1194
		1.10334
		0.933819
		0.869514
		0.746967
		0.946951
		0.859756
		0.744789
		0.861664
		0.883012
		0.841548
		0.912752
		1.01574
		0.992466
		0.872298
		0.922589
		0.984959
		0.878244
		0.856049
		0.737738
		0.841152
		0.764686
		0.960324
		0.867541
		0.681207
		0.772056
		0.881262
		0.728761
		0.759995
		0.837691
		0.802894
		0.695765
		0.782239
		0.770661
		0.744009
		0.802944
		0.779103
		0.849044
		0.970678
		0.671675
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 8.724789 %	 max error: 25.694806 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.213897 max data: 1.188011

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.597901 
	   

>>>> Computational cost: 261.894479 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Estimated global parameters: 

	Vm1    : 1.7601e-01  
	h1     : 1.0374e+00  
	Km1    : 2.6899e-01  
	d1     : 3.2684e-02  


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

--> Number of states: 4


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.00003     0.04140     1.89000     0.03680     0.03000     0.01000     0.01000     0.00200     0.00230  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.380e+00  1.150e+00  1.000e+00  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 300.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 61: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0223	
			Control switching times: 	  0.0000	300.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 61

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.00552
		1.05603
		0.991416
		1.01393
		1.04294
		0.843915
		1.03878
		0.959876
		0.92585
		1.18801
		1.15582
		0.882865
		1.11901
		0.927166
		0.821323
		1.13935
		0.82021
		1.03839
		1.17282
		1.07681
		1.03829
		1.1194
		1.10334
		0.933819
		0.869514
		0.746967
		0.946951
		0.859756
		0.744789
		0.861664
		0.883012
		0.841548
		0.912752
		1.01574
		0.992466
		0.872298
		0.922589
		0.984959
		0.878244
		0.856049
		0.737738
		0.841152
		0.764686
		0.960324
		0.867541
		0.681207
		0.772056
		0.881262
		0.728761
		0.759995
		0.837691
		0.802894
		0.695765
		0.782239
		0.770661
		0.744009
		0.802944
		0.779103
		0.849044
		0.970678
		0.671675
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 8.724789 %	 max error: 25.694806 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.213897 max data: 1.188011

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.597901 
	   

>>>> Computational cost: 263.251688 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Estimated global parameters: 

	Vm1    : 1.7601e-01  
	h1     : 1.0374e+00  
	Km1    : 2.6899e-01  
	d1     : 3.2684e-02  
