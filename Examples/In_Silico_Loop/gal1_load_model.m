model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                             
model.n_st=1;                                       % Number of states      
model.n_par=3;                                      % Number of model parameters 
model.n_stimulus=1;                                 % Number of inputs, stimuli or control variables   
model.st_names=char('gal1_mrna');     % Names of the states                                              
model.par_names=char('Vm1','Km1','d1');           % Names of the parameters                     
model.stimulus_names=char('gal');                                        % Names of the stimuli, inputs or controls                      
model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('dgal1_mrna=Vm1*(gal/(Km1+gal))-d1*gal1_mrna');           
                
model.par=[10^-3 10^-3 10^-3] 