   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 06-Dec-2016
Problem folder:	 Results/alpha_pinene
Results folder in problem folder:	 Results/alpha_pinene/RIdent_pinene_local_lsqnonlin_r1 


-----------------------------------------------
 Initial value problem related active settings
-----------------------------------------------
ivpsolver: cvodes
RelTol: 1e-07
AbsTol: 1e-07
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 5


--> Number of model parameters: 5

--> Vector of parameters (nominal values):

	par0=[   0.00006     0.00003     0.00002     0.00028     0.00004  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.000e+02  0.000e+00  0.000e+00  0.000e+00  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 36420.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 8: 	 1.230e+03  3.060e+03  4.920e+03  7.800e+03  1.068e+04  1.503e+04  2.262e+04  3.642e+04  

--> There is no manipulable (control, stimulus, input) variable, inputs.model.n_stimulus=0


>>> Mean value and confidence interval using the hyper-ellipsoid:


>>> Estimated global parameters: 
	p1 : 5.9493e-05  +-  1.9780e-06 (3.3247e+00 percent); 
	p2 : 2.8345e-05  +-  1.4477e-06 (5.1074e+00 percent); 
	p3 : 7.9710e-06  +-  1.2344e-05 (1.5486e+02 percent); 
	p4 : 2.8940e-04  +-  2.6834e-05 (9.2723e+00 percent); 
	p5 : 4.5356e-05  +-  8.4393e-06 (1.8607e+01 percent); 


>>> Estimated global initial conditions: 
	x1 : 9.9887e+01  +-  2.5002e+00 (2.5030e+00 percent); 


>>> Distance from mean to theta*:
	lambda(p1) : 8.8627e-08; 
	lambda(p2) : 9.6495e-10; 
	lambda(p3) : 3.7267e-07; 
	lambda(p4) : 1.4289e-07; 
	lambda(p5) : 8.0409e-08; 

>>> Estimated global initial conditions: 
	lambda(x1) : 9.6694e-01;


>>> Total distance, lambda_total = 0.966941 


>>> Confidende hyper-ellipsoid  orientation and eccentricity:

	 Maximum angle: 178.8895
	 Minimum angle:   0.2587
	 Mean angle:  88.7442


	 Maximum eccentricity:   0.9999
	 Minimum eccentricity:   0.6797
	 Mean eccentricity:   0.9377



>>> Confidence hyper-ellipsoid pseudo-volume: 6.500383e-04

	 Monte Carlo-based correlation_mat=[
	     1.000       0.183      -0.333       0.132       0.088  
	     0.183       1.000       0.691       0.602       0.595  
	    -0.333       0.691       1.000       0.349       0.516  
	     0.132       0.602       0.349       1.000       0.850  
	     0.088       0.595       0.516       0.850       1.000  
	];
	 Eccentricity based correlation_mat=[
	     0.000       0.680       1.000       0.826       0.968  
	     0.680       0.000       1.000       0.887       0.969  
	     1.000       1.000       0.000       0.999       0.995  
	     0.826       0.887       0.999       0.000       0.980  
	     0.968       0.969       0.995       0.980       0.000  
	];