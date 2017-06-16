% $Header: svn://.../trunk/AMIGO2R2016/Examples/Hodgkin-Huxley_model/HH.m 2410 2015-12-07 13:58:57Z evabalsa $
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE: The Hodgkin�Huxley model
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%====================
% Brief description:
%====================

% The Hodgkin�Huxley model describes how action potentials in neurons are 
% initiated and propagated. 
% It consist of a set of nonlinear ordinary differential equations that 
% approximate the electrical characteristics of excitable cells such as 
% neurons and cardiac myocytes.

% Initially proposed to explain the ionic mechanisms underlying the 
% initiation and propagation of action potentials in the squid giant axon.

% Model:

% dyv/dt=-(gNa*ym^3*yh*(yv-VNa)+ gK*yn^4*(yv-VK)+gL*(yv-VL)- TotalI ) / Cm;  
% dyn/dt= An*(1-yn)-Bn*yn;  
% dym/dt= Am*(1-ym)-Bm*ym;  
% dyh/dt= Ah*(1-yh)-Bh*yh;  

% with: An=0.01*((10-yv)/(exp((10-yv)*0.1)-1));
%       Bn=0.125*exp(-yv/80);
%       Am=0.1*((25-yv)/(exp((25-yv)*0.1)-1));
%       Bm=4*exp(-yv/18);
%       Ah=0.07*exp(-yv/20);
%       Bh=1/(1+exp((30-yv)*0.1));
  
% Nominal value for the parameters:
%       gNa=120; gK=36; gL=0.3; VNa=115; VK=-12; VL=10.6; Cm=1;

%=============
% References:
%=============

% Hodgkin, A., and Huxley, A. (1952): A quantitative description of membrane 
% current and its application to conduction and excitation in nerve. 
% J. Physiol. 117:500�544.


%====================
% AMIGO TESTS   :
%====================

% This example will be used to show the different possibilities available 
% in AMIGO toolbox. 


%============================
% RESULTS PATHS RELATED DATA
%============================
inputs.pathd.results_folder='gal1_GRank_1oom'; % Folder to keep results (in Results) for a given problem                       
inputs.pathd.short_name='gal1GRank';                       % To identify figures and reports for a given problem 
                                                     % ADVISE: the user may introduce any names related to the problem at hand 
inputs.pathd.runident='pp';                         % [] Identifier required in order not to overwrite previous results
                                                     %    This may be modified from command line. 'run1'(default)
                                                     

%============================
% MODEL RELATED DATA
%============================
gal1_load_model
inputs.model=model;
%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

 inputs.exps.n_exp=1;                                 % Number of experiments                                                                  
 inputs.exps.n_obs{1}=1;                              % Number of observed quantities per experiment                         
 inputs.exps.obs_names{1}=char('GFP');               % Name of the observed quantities per experiment    
 inputs.exps.obs{1}=char('GFP=gal1_fluo');                  % Observation function
 inputs.exps.exp_y0{1}=gal1_steady_state( model.par, 2);       % Initial conditions for each experiment       
 inputs.exps.t_f{1}=20005;                               % Experiments duration
                               % Number of sampling times
 inputs.exps.t_s{1}=[0:5:20005];                         % [] Sampling times, by default equidistant
 inputs.exps.n_s{1}=length(inputs.exps.t_s{1});
  
 inputs.exps.u_interp{1}='pulse-down';                % [] Stimuli definition: u_interp: 'sustained' |'step'|'linear'(default)|
                                                      %                               'pulse-up'|'pulse-down'
 inputs.exps.n_pulses{1}=10;                           % Number of pulses
 inputs.exps.u_min{1}=0;inputs.exps.u_max{1}=2;       % Bounds for the stimuli
 inputs.exps.t_con{1}=[0 1000:1000:20000];                      % Initial time-Times of changes for the stimuli- Final stimulation time
                                                              
 



%==================================
% UNKNOWNS RELATED DATA
%==================================

% GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)
%param_including_vector = [true ,true,true, true, true,true,true,true,true];
%inputs.PEsol.id_global_theta=model.par_names(param_including_vector,:);
inputs.PEsol.id_global_theta=char('alpha1','Vm1','h1','Km1','d1');
inputs.PEsol.global_theta_max=inputs.model.par(1:5)*10.0;    % Maximum allowed values for the paramters
inputs.PEsol.global_theta_min=inputs.model.par(1:5)*0.1;       % Minimum allowed values for the parameters
inputs.PEsol.global_theta_guess=inputs.model.par(1:5);    




%==================================
% NUMERICAL METHODS RELATED DATA
%==================================
%
% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: C:'cvodes'; MATLAB:'ode15s'(default)|'ode45'|'ode113'            
                                                      
                                                      
inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes' (C)
                                                      %                          'sensmat' (matlab) |
                                                      %                          'fdsens2','fdsens5' (finite differences)
                                                      
inputs.ivpsol.rtol=1.0D-7;                            % [] IVP solver integration tolerances
inputs.ivpsol.atol=1.0D-7; 


%==================================
% GRank DATA
%==================================
 
 inputs.rank.gr_samples=1000000;                         % [] Number of samples for global sensitivities and global rank within LHS (default: 10000)    
 
 
%==================================
% DISPLAY OF RESULTS
%==================================

inputs.plotd.plotlevel='full';                       % [] Display of figures: 'full'|'medium'(default)|'min' |'noplot' 
inputs.plotd.epssave=0;                              % [] Figures may be saved in .eps (1) or only in .fig format (0) (default)
inputs.plotd.number_max_states=8;                    % [] Maximum number of states per figure
inputs.plotd.number_max_obs=8;                       % [] Maximum number of observables per figure
inputs.plotd.n_t_plot=100;                           % [] Number of times to be used for observables and states plots
inputs.plotd.contour_rtol=1e-7;                      % [] Integration tolerances for the contour plots. 
inputs.plotd.contour_atol=1e-7;                      %    ADVISE: These tolerances should be a little bit strict
inputs.plotd.nx_contour=60;                          % [] Number of points for plotting the contours x and y direction
inputs.plotd.ny_contour=60;                          %    ADVISE: >=50
inputs.plotd.number_max_hist=8;                      % [] Maximum number of unknowns histograms per figure (multistart)

inputs.nlpsol.eSS.maxeval=100;