global_theta_min = [3.88e-05,0.388,1,4,0.0277,0.1,0.0023,0.0077,1e-03];
global_theta_max = [0.3,0.495,3,7,0.23,1,0.03,0.0231,0.1];


inputs.PEsol.id_global_theta='all';               % 'all'|User selected
inputs.PEsol.global_theta_max=global_theta_max;
inputs.PEsol.global_theta_min=global_theta_min;
inputs.PEsol.global_theta_guess=(global_theta_min+global_theta_max)/2;

%==================================
% NUMERICAL METHODS RELATED DATA
%=================================
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

inputs.rank.gr_samples=10000;                         % [] Number of samples for global sensitivities and global rank within LHS (default: 10000)


%==================================
% DISPLAY OF RESULTS
%==================================

inputs.plotd.plotlevel='medium';                       % [] Display of figures: 'full'|'medium'(default)|'min' |'noplot'
inputs.plotd.epssave=0;                              % [] Figures may be saved in .eps (1) or only in .fig format (0) (default)
inputs.plotd.number_max_states=8;                    % [] Maximum number of states per figure
inputs.plotd.number_max_obs=1;                       % [] Maximum number of observables per figure
inputs.plotd.n_t_plot=100;                           % [] Number of times to be used for observables and states plots
inputs.plotd.contour_rtol=1e-7;                      % [] Integration tolerances for the contour plots.
inputs.plotd.contour_atol=1e-7;                      %    ADVISE: These tolerances should be a little bit strict
inputs.plotd.nx_contour=60;                          % [] Number of points for plotting the contours x and y direction
inputs.plotd.ny_contour=60;                          %    ADVISE: >=50
inputs.plotd.number_max_hist=8;                      % [] Maximum number of unknowns histograms per figure (multistart)

inputs.nlpsol.eSS.maxeval=2000;

AMIGO_Prep(inputs);
%inputs.plotd.plotlevel='noplot';
tic;
AMIGO_PE(intputs);
AMIGO_ContourP(inputs);
time=toc;