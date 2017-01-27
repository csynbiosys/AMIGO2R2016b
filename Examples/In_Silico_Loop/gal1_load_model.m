model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                             
model.n_st=3;                                       % Number of states      
model.n_par=9;                                      % Number of model parameters 
model.n_stimulus=1;                                 % Number of inputs, stimuli or control variables   
model.st_names=char('gal1_mrna','gal1_foldedP','gal1_fluo');     % Names of the states                                              
model.par_names=char('alpha1','Vm1','h1','Km1','d1',...
                            'alpha2','d2','Kf','Kb');           % Names of the parameters                     
model.stimulus_names=char('gal');                                        % Names of the stimuli, inputs or controls                      
model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('dgal1_mrna=(0.00175985449291231*alpha1)+(0.0800887345690361*Vm1)*(gal^(2.22548971250921*h1)/((3.35948035905386*Km1)^(2.22548971250921*h1)+gal^(2.22548971250921*h1)))-(0.0100614569676223*d1)*gal1_mrna',...
                    'dgal1_foldedP=alpha2*gal1_mrna-(d2+Kf)*gal1_foldedP',...
                    'dgal1_fluo=Kf*gal1_foldedP-Kb*gal1_fluo');           
                
model.par=[1,1,1,1,1,1,1,1,1] 
