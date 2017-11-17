   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 17-Nov-2017
Problem folder:	 Results\Gal1-noDelay2017-11-17-193402
Results folder in problem folder:	 Results\Gal1-noDelay2017-11-17-193402\OED_gal1noD_de_oed-1 


-------------------------------
Optimisation related active settings
-------------------------------


------> Global Optimizer: DIFFERENTIAL EVOLUTION (DE)

		>Summary of selected DE options: 

		  Strategy: 3,  F: 5.000000e-01,  CR: 0.300000,  NP: 100 , var: 1.000000 


		>Bounds on the unknowns:

		v_guess(1)=1.000000;  v_min(1)=0.000000; v_max(1)=2.000000;
		v_guess(2)=1.000000;  v_min(2)=0.000000; v_max(2)=2.000000;
		v_guess(3)=1.000000;  v_min(3)=0.000000; v_max(3)=2.000000;



---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-07
ivp_AbsTol: 1e-07
sensmex: cvodesg_gal1noD
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06

Iter         Best            Mean Cost           Deviation         CPU_time
 2		 -1.228405e+19		 -229426701856289888		 1.857594e+36 		 6.224440
 4		 -1.228405e+19		 -240245173624107648		 1.858967e+36 		 10.264866
 6		 -1.228405e+19		 -272602589442373632		 1.863777e+36 		 14.149291
 8		 -1.228405e+19		 -476588682645336576		 3.005865e+36 		 18.018116
 10		 -1.588134e+19		 -805447077045875712		 6.044079e+36 		 22.042941
 12		 -1.588134e+19		 -902790480395250432		 6.350278e+36 		 25.942966
 14		 -1.588134e+19		 -1105122205324262784		 6.918156e+36 		 29.967792
