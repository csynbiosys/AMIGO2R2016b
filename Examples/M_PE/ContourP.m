

inputs.PEsol.id_global_theta='all';               % 'all'|User selected
inputs.PEsol.global_theta_max=[0.4950,0.4950,4.9,7,0.23,3,5e-2,0.0217,1e2];  
inputs.PEsol.global_theta_min=[3.88e-5,3.88e-2,0.5,2,0.1,0.1,5e-5,0.012,1e-6];
inputs.PEsol.global_theta_guess=[0.2475    0.2475    2.7000    5.5000    0.3488    3.4533    0.5000    0.5029   50.0000];

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

inputs.rank.gr_samples=2000;                         % [] Number of samples for global sensitivities and global rank within LHS (default: 10000)


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
AMIGO_ContourP(inputs);
time=toc;