function inputs = loadRISettings_Lucia_George(inputs)
%==================================
% UNKNOWNS RELATED DATA
%==================================

% GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)

include=true(1,inputs.model.n_par);
include(end)=false;

inputs.PEsol.id_global_theta=inputs.model.par_names(include,:);                         % 'all'|User selected 

%          alpha1	Vm1     h1  Km1     d1     alpha2  d2     Kf   sc_molec
inputs.PEsol.global_theta_min=[3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012];       % Minimum allowed values for the parameters
inputs.PEsol.global_theta_max=[0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217];   % Maximum allowed values for the paramters
inputs.PEsol.global_theta_guess=inputs.model.par(include);    

 %==================================
 % COST FUNCTION RELATED DATA
 %==================================
inputs.PEsol.PEcost_type='lsq';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost' 
inputs.PEsol.lsq_type='Q_expmax';                  % [] To be defined for llk function, 'homo' | 'homo_var' | 'hetero' 

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


                   % [] Number of samples for global sensitivities and global rank within LHS (default: 10000)    
 
 % OPTIMIZATION
inputs.nlpsol.nlpsolver='eSS';
inputs.nlpsol.eSS.maxeval = 2000;
inputs.nlpsol.eSS.maxtime = 600;
inputs.nlpsol.eSS.log_var = 1:8;
inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
inputs.rid.conf_ntrials=1000;
 
end