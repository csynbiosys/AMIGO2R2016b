results_folder = strcat('Gal1-noDelay',datestr(now,'yyyy-mm-dd-HHMMSS'));
short_name     = 'gal1noD';

cprintf('*[1,0.5,0]','\n\n --->Design of a new experiment: step-wise interpolation and Eopt design')

%======================
% PATHS RELATED DATA
%======================

clear inputs;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'OED';

%======================
% MODEL RELATED DATA
%======================

inputs.model=gal1_load_model_George1();                                                            % These values may be updated during optimization  

%=====================================
%  EXPERIMENTAL SCHEME RELATED DATA
%=====================================

inputs.exps=gal1_load_OED_George1(inputs);

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
 inputs.OEDsol.OEDcost_type='Aopt';                % FIM based criterium: 'Dopt'|'Eopt'|'Aopt'|'Emod'|'DoverE'
 
 
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
inputs.nlpsol.eSS.maxtime = 3000;                        % Maximum computational effort in seconds
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

AMIGO_Prep(inputs)         % Calls the task for pre-processing

warning off;
AMIGO_OED(inputs)           % Calls the task for Parameter Estimation