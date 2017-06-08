   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-002522
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-002522\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000052;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.001934;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.061396;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.174297;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.101433;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[5.124e-04  4.166e-04  4.791e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  0.5106	  0.6034	  0.0000	  1.9427	  0.5410	
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
		-0.000737381
		-0.003053
		4.15177e-05
		0.00056469
		-0.00322175
		0.0002779
		-0.00388297
		0.00490207
		0.000878052
		0.00243959
		-0.000678045
		0.00170543
		0.00112435
		-0.00411943
		0.0018177
		0.00401738
		-0.00218627
		0.00517246
		-0.0001191
		-0.00131238
		-0.000417302
		0.00165425
		0.00471442
		0.00297471
		0.00431105
		0.00301653
		0.0034471
		-0.00451971
		0.00863294
		0.00237013
		0.00523093
		0.00651625
		0.00723675
		0.0108359
		0.0121874
		0.0155441
		0.0130344
		0.015116
		0.012245
		0.0102853
		0.0119218
		0.0218096
		0.0169911
		0.0172757
		0.0197328
		0.01536
		0.0147055
		0.0205732
		0.00970694
		0.0166565
		0.0129081
		0.0218782
		0.019054
		0.0133475
		0.0162802
		0.0182906
		0.0192295
		0.0136968
		0.00994796
		0.0161879
		0.0211782
		0.0147205
		0.0159246
		0.0192
		0.016257
		0.0231841
		0.0183978
		0.0202663
		0.0172373
		0.0199297
		0.0240324
		0.0267763
		0.0226121
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 58.667454 %	 max error: 660.427452 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009684 max data: 0.026776

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000684 
	   

>>>> Computational cost: 227.309057 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  2.5512e-03 (3.08e+05%); (bound active) 
	Vm1    : 1.3132e-02  +-  1.6466e-02 (     125%); 
	h1     : 3.1788e+00  +-  6.6737e+01 ( 2.1e+03%); 
	Km1    : 3.6800e-01  +-  2.8187e+00 (     766%); (bound active) 
	d1     : 3.1294e-02  +-  6.3683e-02 (     203%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 1.204235e-01	 5.138370e-01	 5.260721e-01	 4.208117e-01
	 1.204235e-01	 1.000000e+00	 7.731243e-01	 7.910173e-01	 9.164456e-01
	 5.138370e-01	 7.731243e-01	 1.000000e+00	 9.982505e-01	 9.512528e-01
	 5.260721e-01	 7.910173e-01	 9.982505e-01	 1.000000e+00	 9.580122e-01
	 4.208117e-01	 9.164456e-01	 9.512528e-01	 9.580122e-01	 1.000000e+00
