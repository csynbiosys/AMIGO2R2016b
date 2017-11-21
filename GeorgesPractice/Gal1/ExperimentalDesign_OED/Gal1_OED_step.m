% $Header: svn://.../trunk/AMIGO2R2016/Examples/Arabidopsis_circadian/circadian_oed.m 2398 2015-12-04 07:06:07Z evabalsa $
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE: The circadian clock in Arabidopsis thaliana
%
%        Type :
%                > help circadian_tutorial
%        for a more detailed description of the model.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%        INPUT FILE FOR OPTIMAL EXPERIMENTAL DESIGN
%        Default values are assigned to non defined inputs.
%
%        Minimum required inputs:
%           > Paths related data
%           > Model:               model_type; n_st; n_par; n_stimulus; 
%                                  st_names; par_names; stimulus_names;  
%                                  eqns; par
%           > Experimental scheme: n_exp; exp_y0{iexp}; t_f{iexp}; 
%                                  u_interp{iexp}; t_con{iexp}; u{iexp}
%                                  n_obs{iexp}; obs_names{iexp}; obs{iexp} 
%
%                (AMIGO_OED)==>>    n_s{iexp}; t_s{iexp}; 
%                                  data_type; noise_type; 
%                                  exp_data{iexp}; [error_data{iexp}]
%                                  id_global_theta; [id_global_theta_y0]
%                                  [id_local_theta{iexp}];[id_local_theta_y0{iexp}]global_theta_max; global_theta_min
%                                  [global_theta_y0_max];[global_theta_y0_min]
%                                  [local_theta_max{iexp}];[local_theta_min{iexp}]
%                                  [local_theta_y0_max{iexp}];[local_theta_yo_min{iexp}]
%                                  [global_theta_guess];[global_theta_y0_guess];
%                                  [local_theta_guess{iexp}];[local_theta_y0_guess{iexp}]
%                                  [PEcost_type];[lsq_type];[llk_type]
%                                  []:optional inputs
%                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%======================
% PATHS RELATED DATA
%======================

inputs.pathd.results_folder='Practice_PFLnNOPFL';         % Folder to keep results (in Results) for a given problem          
inputs.pathd.short_name='P1';                      % To identify figures and reports for a given problem   

%======================
% MODEL RELATED DATA
%======================

inputs.model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                             
inputs.model.n_st=3;                                       % Number of states      
inputs.model.n_par=9;                                      % Number of model parameters 
inputs.model.n_stimulus=1;                                 % Number of inputs, stimuli or control variables   
inputs.model.st_names=char('gal1_mrna','gal1_foldedP','gal1_fluo');     % Names of the states                                              
inputs.model.par_names=char('alpha1','Vm1','h1','Km1','d1',...
                            'alpha2','d2','Kf','Kb');           % Names of the parameters                     
inputs.model.stimulus_names=char('gal');                                        % Names of the stimuli, inputs or controls                      
inputs.model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('dgal1_mrna=alpha1+Vm1*(gal^h1/(Km1^h1+gal^h1))-d1*gal1_mrna',...
                    'dgal1_foldedP=alpha2*gal1_mrna-(d2+Kf)*gal1_foldedP',...
                    'dgal1_fluo=Kf*gal1_foldedP-Kb*gal1_fluo');           
theta=[0.00175985449291231,0.0800887345690361,2.22548971250921,3.35948035905386,0.0100614569676223,1,1,1,1];            
                
inputs.model.par=theta;



%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

 inputs.exps.n_exp=1;                                 % Total number of experiments (available + experiments to be designed)     
 inputs.exps.exp_type{1}='od';                     % Indicates if the the experiment should
%  inputs.exps.exp_type{2}='od';                     % or not be optimally designed : 'od' and 'fixed'
% inputs.exps.exp_type{3}='od';             

 for iexp=1:inputs.exps.n_exp   
 % OBSEVABLES DEFINITION  
 inputs.exps.n_obs{iexp}=1;                            % Number of observed quantities per experiment  
 inputs.exps.obs_names{iexp}=char('Fluorescence');      % Name of the observed quantities per experiment    
 inputs.exps.obs{iexp}=char('Fluorescence=gal1_fluo');   % Observation function 
 inputs.exps.exp_y0{iexp}=[gal1_initial_conditions(theta,2)];
 end           
 
 
 inputs.exps.u_type{1}='od';                           % Type of stimulation: 'fixed' | 'od' (to be designed) 
 inputs.exps.u_interp{1}='step';                       % Stimuli definition for experiment 3:
                                                       % OPTIONS:u_interp:
                                                       % 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down' 
 inputs.exps.n_steps{1}=5;                             % Number of pulses _|-|_|-|_ 
 inputs.exps.u_min{1}=0*ones(1,inputs.exps.n_steps{1});
 inputs.exps.u_max{1}=100*ones(1,inputs.exps.n_steps{1});% Minimum and maximum value for the input
 inputs.exps.tf_type{1}='fixed';                       % [] Type of experiment duration: 'fixed'(default) | 'od' (to be designed) 
 inputs.exps.t_f{1}=2500;                               % Experiment duration
 inputs.exps.ts_type{1}='fixed';                       % [] Type of sampling times: 'fixed'(default) | 'od' (to be designed) 
 inputs.exps.n_s{1}=20;
 inputs.exps.std_dev{1}=0.1;                           % Standard deviation of the noise for each experiment: Ex: 0.05 <=> 5%
% 
%  
%  inputs.exps.u_type{2}='od';                           % Type of stimulation: 'fixed' | 'od' (to be designed) 
%  inputs.exps.u_interp{2}='linear';                   % Stimuli definition for experiment 3:
%                                                        % OPTIONS:u_interp:
%                                                        % 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down' 
%  inputs.exps.n_linear{2}=5;                            % Number of interpolation points
%  inputs.exps.u_min{2}=0*ones(1,inputs.exps.n_linear{2});
%  inputs.exps.u_max{2}=2.25*1000*ones(1,inputs.exps.n_linear{2}); % Minimum and maximum value for the input
%  inputs.exps.tf_type{2}='fixed';                       % [] Type of experiment duration: 'fixed'(default) | 'od' (to be designed) 
%  inputs.exps.t_f{2}=2500;                               % Experiment duration
%  inputs.exps.ts_type{2}='fixed';                       % [] Type of sampling times: 'fixed'(default) | 'od' (to be designed) 
%  inputs.exps.n_s{2}=20;
%  inputs.exps.std_dev{2}=0.1; 
%  
 
%  
%  
%  
% %
% %  INPUTS FOR THE EXPERIMENT TO BE OPTIMALLY DESIGNED
% %
%  
%  inputs.exps.u_type{3}='od';                           % Type of stimulation: 'fixed' | 'od' (to be designed) 
%  inputs.exps.u_interp{3}='step';                       % Stimuli definition for experiment 3:
%                                                        % OPTIONS:u_interp:
%                                                        % 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down' 
%  inputs.exps.n_steps{3}=3;                             % Number of pulses _|-|_|-|_ 
%  inputs.exps.u_min{3}=0*ones(1,inputs.exps.n_steps{3});
%  inputs.exps.u_max{3}=1*ones(1,inputs.exps.n_steps{3});% Minimum and maximum value for the input
%  inputs.exps.tf_type{3}='fixed';                       % [] Type of experiment duration: 'fixed'(default) | 'od' (to be designed) 
%  inputs.exps.t_f{3}=120;                               % Experiment duration
%  inputs.exps.ts_type{3}='fixed';                       % [] Type of sampling times: 'fixed'(default) | 'od' (to be designed) 
%  inputs.exps.n_s{3}=20;
%  inputs.exps.std_dev{3}=0.1;                           % Standard deviation of the noise for each experiment: Ex: 0.05 <=> 5%


%======================================
% PARAMETERS TO BE CONSIDERED FOR OED
%======================================


% Parameters to be considered for OED 
inputs.PEsol.id_global_theta='all';  %  'all'|User selected  
% Nominal value of the parameters to compute the FIM
inputs.PEsol.global_theta_guess=inputs.model.par; 


%==================================
% COST FUNCTION RELATED DATA
%==================================    

 inputs.exps.noise_type='hetero';                    % Type of experimental noise: 'homo' |'homo_var'| 'hetero'     
 inputs.OEDsol.OEDcost_type='Eopt';                % FIM based criterium: 'Dopt'|'Eopt'|'Aopt'|'Emod'|'DoverE'
 
 
%==================================
% NUMERICAL METHODS RELATED DATA
%==================================
%
% SIMULATION

 inputs.ivpsol.rtol=1.0D-7;                            % [] IVP solver integration tolerances
 inputs.ivpsol.atol=1.0D-7; 
 
 
% OPTIMIZATION
%
inputs.nlpsol.nlpsolver='eSS';                        % [] NLP solver: 
%                                                       % LOCAL: 'local_fmincon'|'local_n2fb'|'local_dn2fb'|'local_dhc'|
%                                                       %        'local_ipopt'|'local_solnp'|'local_nomad'||'local_nl2sol'
%                                                       %        'local_lsqnonlin'
%                                                       % MULTISTART:'multi_fmincon'|'multi_n2fb'|'multi_dn2fb'|'multi_dhc'|
%                                                       %            'multi_ipopt'|'multi_solnp'|'multi_nomad'|'multi_nl2sol'
%                                                       %            'multi_lsqnonlin'
%                                                       % GLOBAL: 'de'|'sres'
%                                                       % HYBRID: 'hyb_de_fmincon'|'hyb_de_n2fb'|'hyb_de_dn2fb'|'hyb_de_dhc'|'hyp_de_ipopt'|
%                                                       %         'hyb_de_solnp'|'hyb_de_nomad'|
%                                                       %         'hyb_sres_fmincon'|'hyb_sres_n2fb'|'hyb_sres_dn2fb'|'hyb_sres_dhc'|
%                                                       %         'hyp_sres_ipopt'|'hyb_sres_solnp'|'hyb_sres_nomad'
%                                                       % METAHEURISTICS:
%                                                       % 'ess' or 'eSS' (default)
%                                                       % Note that the corresponding defaults are in files: 
%                                                       % OPT_solvers\DE\de_options.m; OPT_solvers\SRES\sres_options.m; 
%                                                       % OPT_solvers\eSS_**\ess_options.m
%                                                       
 
inputs.nlpsol.eSS.maxeval = 10000;                      % Maximum number of cost function evaluations
inputs.nlpsol.eSS.maxtime = 300;                        % Maximum computational effort in seconds
inputs.nlpsol.eSS.local.solver = 'fminsearch';             % Local solver: SQP type

                                                       

% 
% %==================================
% % DISPLAY OF RESULTS
% %==================================
% 
 results.plotd.plotlevel='full';                       % [] Display of figures: 'full'|'medium'(default)|'min' |'noplot' 
% results.plotd.epssave=0;                              % [] Figures may be saved in .eps (1) or only in .fig format (0) (default)
% results.plotd.number_max_states=8;                    % [] Maximum number of states per figure
% results.plotd.number_max_obs=8;                       % [] Maximum number of observables per figure
% results.plotd.n_t_plot=100;                           % [] Number of times to be used for observables and states plots
% results.plotd.contour_rtol=1e-7;                      % [] Integration tolerances for the contour plots. 
% results.plotd.contour_atol=1e-7;                      %    ADVISE: These tolerances should be a little bit strict
% results.plotd.nx_contour=100;                         % [] Number of points for plotting the contours x and y direction
% results.plotd.ny_contour=100;                         %    ADVISE: >=50
% results.plotd.number_max_hist=8;                      % [] Maximum number of unknowns histograms per figure (multistart)
% 
%  




