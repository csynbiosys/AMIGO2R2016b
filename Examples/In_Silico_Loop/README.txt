The results folder contains 3 subfolders: 
- v0: initial run over all the parameters. Response of the system to a step up, occurring at time 500 mins. The duration of the experiment is 2000 mins. 
  It has been run using multiple instances of Matlab, but this somehow generated errors (folder ErrorLog)

- v1: run on the last two parameters (Kb, Kf) run from the same Matlab instance. In this case no errors were generated.
 The results showed that, for some parameter values, the system had not reached SS. 

-For this reason, I run version 3. In it, variations in all the parameters are considered, when the system is stimulated with a step up occurring after 300 mins.
The experiment duration was set to 3600 mins. 

In the Images folder, the images for v3 and v1 are stored. They can be generated using PlottingResults.m.


