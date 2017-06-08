   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-180954
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-180954\PE_gal1noD_eSS_pe-1 


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

		v_guess(1)=0.000060;  v_min(1)=0.000001; v_max(1)=0.000083;
		v_guess(2)=0.001381;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=0.518162;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.064872;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.245949;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[2.426e-04  1.972e-04  2.268e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.7130	  0.5641	  0.0000	  1.9963	  0.9482	  1.8633	
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
		-0.0015017
		-0.000744952
		0.00132345
		-0.00111841
		0.000982229
		0.000566982
		0.000420847
		0.00241049
		-0.000113507
		0.000640681
		0.00300167
		0.00537333
		0.00289327
		0.000510101
		0.00411227
		0.00569488
		0.00977608
		0.00750801
		0.00924069
		0.00659827
		0.00905211
		0.00716336
		0.00807735
		0.011079
		0.0100748
		0.0158129
		0.0160961
		0.0154744
		0.0165358
		0.0125171
		0.0143675
		0.0157625
		0.0173984
		0.0172813
		0.0219095
		0.0178422
		0.0164732
		0.0104087
		0.0185721
		0.0155032
		0.0174488
		0.0118193
		0.0154288
		0.0145924
		0.013183
		0.0125797
		0.0216678
		0.0157157
		0.0137171
		0.0173608
		0.019696
		0.0192057
		0.0200808
		0.0141498
		0.0162863
		0.0167835
		0.016514
		0.0204037
		0.0137569
		0.0157718
		0.0179025
		0.0166311
		0.0279902
		0.0237895
		0.0196621
		0.0217198
		0.0223433
		0.0218762
		0.0206105
		0.0221571
		0.0238634
		0.0242073
		0.0256007
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 52.138722 %	 max error: 1356.007973 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.007524 max data: 0.027990

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000428 
	   

>>>> Computational cost: 244.968370 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  4.1619e-03 (5.03e+05%); (bound active) 
	Vm1    : 1.0802e-02  +-  5.2592e-03 (    48.7%); 
	h1     : 4.9993e+00  +-  7.0045e+11 ( 1.4e+13%); 
	Km1    : 3.6800e-03  +-  2.6029e+09 (7.07e+13%); (bound active) 
	d1     : 3.3605e-02  +-  2.3310e-02 (    69.4%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -4.462089e-02	 7.226179e-03	 7.517024e-03	 7.683041e-01
	 -4.462089e-02	 1.000000e+00	 -6.952934e-01	 -6.944589e-01	 5.765402e-01
	 7.226179e-03	 -6.952934e-01	 1.000000e+00	 9.999889e-01	 -3.298305e-01
	 7.517024e-03	 -6.944589e-01	 9.999889e-01	 1.000000e+00	 -3.295760e-01
	 7.683041e-01	 5.765402e-01	 -3.298305e-01	 -3.295760e-01	 1.000000e+00
