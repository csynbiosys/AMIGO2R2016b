   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-May-2017
Problem folder:	 Results\Gal1-noDelay2017-05-11-161502
Results folder in problem folder:	 Results\Gal1-noDelay2017-05-11-161502\PE_gal1noD_eSS_pe-1 


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
		v_guess(2)=0.022446;  v_min(2)=0.001030; v_max(2)=0.103000;
		v_guess(3)=1.098061;  v_min(3)=0.189070; v_max(3)=5.000000;
		v_guess(4)=0.021455;  v_min(4)=0.003680; v_max(4)=0.368000;
		v_guess(5)=0.226741;  v_min(5)=0.003000; v_max(5)=0.300000;



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
			exp_y0=[7.544e-06  6.134e-06  7.054e-07  ]

-->Final process time for each experiment: 
		Experiment 1: 	 360.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 73: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.9118	  1.8138	  1.9130	  1.9172	  0.0010	  1.9657	
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
		0.00161477
		0.00430595
		-0.00110311
		-0.00165501
		-1.25867e-05
		0.00099917
		0.00386412
		0.00115105
		-0.000367889
		-0.00104683
		0.00476712
		0.00554379
		0.00752647
		0.0029952
		0.00630923
		0.00528577
		0.0100235
		0.00829537
		0.0044162
		0.0122632
		0.00989825
		0.00597044
		0.0137679
		0.00877778
		0.0168329
		0.0134221
		0.011217
		0.00576061
		0.0142532
		0.0180292
		0.0154205
		0.0169302
		0.0235605
		0.0134371
		0.0201853
		0.0202019
		0.0259644
		0.0176738
		0.0241104
		0.0236379
		0.0214373
		0.0245103
		0.0242025
		0.0251579
		0.0208187
		0.023089
		0.028358
		0.0323315
		0.0250249
		0.0253869
		0.0249389
		0.0304092
		0.0289409
		0.0257881
		0.0302717
		0.02811
		0.0341809
		0.0252894
		0.0330443
		0.0244426
		0.0254069
		0.0231172
		0.0192259
		0.0236018
		0.0221301
		0.0138654
		0.0241525
		0.0233355
		0.023637
		0.021242
		0.0226963
		0.0220952
		0.0266585
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 64.038862 %	 max error: 2131.575403 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.009184 max data: 0.034181

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000724 
	   

>>>> Computational cost: 265.342101 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	alpha1 : 8.2800e-07  +-  4.0638e-02 (4.91e+06%); (bound active) 
	Vm1    : 1.6480e-02  +-  6.7257e-01 (4.08e+03%); 
	h1     : 1.0154e+00  +-  1.4571e+02 (1.44e+04%); 
	Km1    : 3.6800e-01  +-  3.0239e+00 (     822%); (bound active) 
	d1     : 3.9103e-02  +-  7.5098e-02 (     192%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -9.643338e-01	 9.774350e-01	 3.927329e-01	 1.440113e-01
	 -9.643338e-01	 1.000000e+00	 -9.977923e-01	 -1.644760e-01	 1.069878e-01
	 9.774350e-01	 -9.977923e-01	 1.000000e+00	 2.290684e-01	 -4.210319e-02
	 3.927329e-01	 -1.644760e-01	 2.290684e-01	 1.000000e+00	 9.388303e-01
	 1.440113e-01	 1.069878e-01	 -4.210319e-02	 9.388303e-01	 1.000000e+00
