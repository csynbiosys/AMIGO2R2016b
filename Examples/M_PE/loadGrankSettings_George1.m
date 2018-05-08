function inputs = loadGrankSettings_George1(inputs)
%==================================
% UNKNOWNS RELATED DATA
%==================================

% GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)

include=true(1,inputs.model.n_par);
include(2:4)=false(1,3);

inputs.PEsol.id_global_theta=inputs.model.par_names(include,:);                         % 'all'|User selected 

theta_min = [3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012];
theta_max = [0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217];

minmax=[1e-10,1;
    7.75e-5,1;
    1e-10,1;
    kd,1;
    0.001,1;
    1e-10,0.1;
    1,1e4;
    1,1e4;
    0.001,1;
    0.001,1;
    0.0005,0.0017;
    0.5,2;
    0.5,2;
    10,100]';

inputs.PEsol.global_theta_min=[6.4667e-7,6.4667e-4,0.5,2,1.2833e-4,0.0041,9.9667e-7,2e-4,10];       % Minimum allowed values for the parameters
inputs.PEsol.global_theta_max=minmax(2,:);    % Maximum allowed values for the paramters
inputs.PEsol.global_theta_guess=inputs.model.par(include);    



%==================================
% NUMERICAL METHODS RELATED DATA
%==================================
%
% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: C:'cvodes'; MATLAB:'ode15s'(default)|'ode45'|'ode113'            
                                                      
                                                      
inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes' (C)
                                                      %                          'sensmat' (matlab) |
                                                      %                          'fdsens2','fdsens5' (finite differences)
                                                      
inputs.ivpsol.rtol=1.0D-6;                            % [] IVP solver integration tolerances
inputs.ivpsol.atol=1.0D-6; 


%==================================
% GRank DATA
%==================================
 
 inputs.rank.gr_samples=500;                         % [] Number of samples for global sensitivities and global rank within LHS (default: 10000)    
 
 
%==================================
% DISPLAY OF RESULTS
%==================================

inputs.plotd.plotlevel='full';                       % [] Display of figures: 'full'|'medium'(default)|'min' |'noplot' 
inputs.plotd.epssave=0;                              % [] Figures may be saved in .eps (1) or only in .fig format (0) (default)
inputs.plotd.number_max_states=8;                    % [] Maximum number of states per figure
inputs.plotd.number_max_obs=1;                       % [] Maximum number of observables per figure
inputs.plotd.n_t_plot=100;                           % [] Number of times to be used for observables and states plots
inputs.plotd.contour_rtol=1e-6;                      % [] Integration tolerances for the contour plots. 
inputs.plotd.contour_atol=1e-6;                      %    ADVISE: These tolerances should be a little bit strict
inputs.plotd.nx_contour=60;                          % [] Number of points for plotting the contours x and y direction
inputs.plotd.ny_contour=60;                          %    ADVISE: >=50
inputs.plotd.number_max_hist=8;                      % [] Maximum number of unknowns histograms per figure (multistart)

inputs.nlpsol.eSS.maxeval=100;
end