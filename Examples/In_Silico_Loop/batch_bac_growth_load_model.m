%============================
% MODEL RELATED DATA
%============================
model.input_model_type='charmodelC';          % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                     %                     'blackboxmodel'|'blackboxcost                   
model.n_st=2;                                 % Number of states                                  
model.n_par=4;                                % Number of model parameters                                  
model.n_stimulus=0;                           % Number of inputs, stimuli or control variables   
model.names_type='custom';                    % [] Names given to states/pars/inputs: 'standard' (x1,x2,...p1,p2...,u1, u2,...) 
                                                     %                                       'custom'(default)
model.st_names=char('cb','cs');               % Names of the states                                         
model.par_names=char('mumax','ks','kd','yield');             % Names of the parameters                   
model.stimulus_names=[];                      % Names of the stimuli, inputs or controls                                  
model.eqns=...                                % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
            char('dcb=((mumax*cs*cb)/(ks+cs))-kd*cb',...  
                 'dcs= -((mumax*cs*cb)/(ks+cs))/yield');
   
 mumax=0.4;  ks=5.0;  kd=0.05;  yield=0.5;             
model.par=[mumax ks kd yield];               % Nominal value for the parameters, this allows to fix known parameters

