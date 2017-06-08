   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 13-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-13-012610
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-13-012610\PE_gal1noD_eSS_pe-1 


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
		v_guess(2)=0.010643;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.013442;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.207793;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.003335;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[7.326e-04  5.956e-04  6.850e-05  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.4927	  0.5835	  0.3817	  0.6814	  0.4647	  0.8954	
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
		0.00111462
		-0.00407858
		0.000162994
		0.000320911
		0.00316705
		-0.00185221
		0.00093541
		0.00127453
		0.00160603
		-0.00117118
		-0.000443444
		-0.000774991
		0.000564596
		0.00553013
		0.0018831
		0.00110172
		0.012923
		0.00295614
		0.00432817
		0.00377514
		0.00869168
		0.00877247
		0.0135781
		0.00950091
		0.0135197
		0.0167996
		0.00883916
		0.0122973
		0.0150425
		0.0162763
		0.0216642
		0.0203027
		0.0221003
		0.017367
		0.0220424
		0.0161951
		0.0209593
		0.0179108
		0.0221443
		0.0266781
		0.0262417
		0.0274906
		0.0242757
		0.0271319
		0.0214145
		0.0216367
		0.0273068
		0.0245156
		0.0295397
		0.0235429
		0.0220371
		0.0275405
		0.0268195
		0.0284276
		0.0216599
		0.0269734
		0.0253267
		0.0313185
		0.0277978
		0.0270206
		0.029839
		0.0298012
		0.0274875
		0.0274597
		0.0312356
		0.0302912
		0.0269402
		0.0311789
		0.0278196
		0.0297638
		0.0234978
		0.0287308
		0.0300535
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 54.934890 %	 max error: 637.092525 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.006651 max data: 0.031318

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000590 
	   

>>>> Computational cost: 300.083524 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 1.2037e-05  +-  1.6422e+04 (1.36e+11%); 
	Vm1    : 1.0295e-02  +-  1.6422e+04 ( 1.6e+08%); 
	h1     : 4.9988e+00  +-  2.1155e+11 (4.23e+12%); 
	Km1    : 3.6800e-03  +-  7.1014e+08 (1.93e+13%); (bound active) 
	d1     : 3.0724e-02  +-  3.3945e-02 (     110%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.000000e+00	 -5.175002e-04	 -5.153517e-04	 3.174538e-04
	 -1.000000e+00	 1.000000e+00	 5.161387e-04	 5.139905e-04	 -3.161354e-04
	 -5.175002e-04	 5.161387e-04	 1.000000e+00	 9.999686e-01	 -9.275971e-01
	 -5.153517e-04	 5.139905e-04	 9.999686e-01	 1.000000e+00	 -9.291600e-01
	 3.174538e-04	 -3.161354e-04	 -9.275971e-01	 -9.291600e-01	 1.000000e+00
