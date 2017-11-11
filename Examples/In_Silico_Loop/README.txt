gal1_in_silico_loop.m is Ally's version (pseudo-random input with real values), modified as: 
- corrected initial theta guesses on the parameters (still no constraint on fluorescence); 
- set initial galactose concentration to 2% galactose; 
- set experiment duration to 50 hours, during which 50 steps are executed (each lasting 1 hour)
- exclusion of alpha1 from identification
- PE executed every 5 hours
%%%%
gal1_in_silico_loop_binary_single.m
- corrected initial theta guesses on the parameters; 
- the initial guesses satisfy the requirement 0.16< steady-state fluorescence<= 1
- set initial galactose concentration to 2% galactose; 
- set experiment duration to 50 hours
- exclusion of alpha1 from identification
- PE executed every 5 hours
- defines a pseudorandom binary input in which each value is retained at
  least for the response time, the input parameters were determined running
  RandomInput once and are applied to all the runs called by the user.
  2 and 0% galactose concentrations are alternated. 
%%%
gal1_in_silico_loop_binary_var.m
- corrected initial theta guesses on the parameters; 
- the initial guesses satisfy the requirement 0.16< steady-state fluorescence<= 1
- set initial galactose concentration to 2% galactose; 
- set experiment duration to 50 hours
- exclusion of alpha1 from identification
- PE executed every 5 hours
- defines a pseudorandom binary input in which each value is retained at 
  least for the response time, the input parameters are computed at each iteration. 
  In each input, 2 and 0% galactose concentrations are alternated. 

