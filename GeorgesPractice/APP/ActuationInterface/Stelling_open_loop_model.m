function [model] = Stelling_open_loop_model()

%======================
% MODEL RELATED DATA
%======================

model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                              
model.n_st=11;                                       % Number of states      
model.n_par=14;                                     % Number of model parameters 
model.n_stimulus=1;                                 % Number of inputs, stimuli or control variables   
model.names_type='custom';                          % [] Names given to states/pars/inputs: 'standard' (x1,x2,...p1,p2...,u1, u2,...) 
model.st_names=char('L0','G20','G21','G22','Lac12','Lac12m','IPTGint','L1','L2','Cit','Cit_AU');     % Names of the states                                              
model.par_names=char('kLacI','k2','kd','k_2','k1','k_1','kLac12','kTP1','kcat','Km','kout','kC','lk','scaleMolec');                  % Names of the parameters                     
model.stimulus_names=char('IPTGext');                                        % Names of the stimuli, inputs or controls                      

model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('dL0=(kLacI+k_1*G21+2*k_1*G22+k_2*L1-k1*L0*(2*G20+G21)-2*k2*L0*IPTGint-kd*L0)',...
                    'dG20=(k_1*G21+kd*G21-2*k1*L0*G20)',...
                    'dG21=(2*k1*G20*L0+2*kd*G22+2*k_1*G22-k_1*G21-k1*L0*G21-kd*G21)',...
                    'dG22=(k1*L0*G21-2*k_1*G22-2*kd*G22)',...
                    'dLac12=(kLac12-kTP1*Lac12-kd*Lac12)',...
                    'dLac12m=(kTP1*Lac12-kd*Lac12m)',...
                    'dIPTGint=(((kcat*Lac12m*IPTGext)/(Km+IPTGext))+k_2*L1+2*k_2*L2+kd*(L1+2*L2)-(2*k2*L0+k2*L1)*IPTGint-kout*kd*IPTGint)',...
                    'dCit=(kC*G20+lk*kC*(G21+G22)-kd*Cit)',...  
                    'dCit_AU=scaleMolec*dCit',...
                    'dL1=(2*k2*L0*IPTGint+2*k_2*L2-(k_2+k2*IPTGint+kd)*L1)',...    
                    'dL2=(k2*L1*IPTGint-(2*k_2+kd)*L2)');              

%==================
% PARAMETER VALUES
% =================

% results of the fitting performed using CrossValidation equal
model.par =[0.0325733538256257 5.46705566202220e-10 7.75000000000000e-05 0.000654809767818206 0.00490818296698615 0.0307309277630367 0.840871329334178 0.00132658139648501 9593.67726098644 2800 106.300183525726 0.0967056122710768 0.0432774760580804 13.7502726488295]; 


end                                 