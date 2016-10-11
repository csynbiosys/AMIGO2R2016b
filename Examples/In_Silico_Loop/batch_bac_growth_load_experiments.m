%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================
exps.n_exp=1;                                 % Number of experiments                                                                  
exps.n_obs{1}=2;                              % Number of observed quantities per experiment                         
exps.obs_names{1}=char('obsB','obsS');               % Name of the observed quantities per experiment    
exps.obs{1}=char('obsB=cb','obsS=cs');                  % Observation function
exps.exp_y0{1}=[2 30];       % Initial conditions for each experiment       
exps.t_f{1}=10;                               % Experiments duration
exps.n_s{1}=11;                               % Number of sampling times
exps.t_s{1}=[0:1:10];                         % [] Sampling times, by default equidistant                                                            
 
%==================================
% EXPERIMENTAL DATA RELATED INFO
%==================================
exps.data_type='real';                         % Type of data: 'pseudo'|'pseudo_pos'|'real'             
exps.noise_type='homo_var';                    % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default) 
 
%Experimental data 1: 
exps.exp_data{1}=[
		2  30
		3.427416  30.070197
		4.327182  27.982535
		5.573109  25.398668
		6.903522  21.463701
		7.746591  14.732211
		11.144492  12.144533
		11.502175  2.846148
		14.727507  3.754483
		13.532032  0.378159
		13.708051  1.899270];

%Error data 1: 
exps.error_data{1}=[
		0.642563  1.418734
		0.750319  1.656654
		0.755610  1.668335
		0.831913  1.836808
		0.658943  1.454901
		0.370148  0.817263
		0.848267  1.872915
		0.920692  2.032825
		1.140131  2.517332
		0.092449  0.204122
		0.850306  1.877418];

