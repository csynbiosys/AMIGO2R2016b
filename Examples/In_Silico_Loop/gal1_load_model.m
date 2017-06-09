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
               char('dgal1_mrna=alpha1+Vm1*(gal^h1/(Km1^h1+gal^h1))-d1*gal1_mrna',...
                    'dgal1_foldedP=alpha2*gal1_mrna-(d2+Kf)*gal1_foldedP',...
                    'dgal1_fluo=Kf*gal1_foldedP-Kb*gal1_fluo');           


%          alpha1      Vm1       h1     Km     d1     d2     K1     Kb     Kf     
%model.par=[3.3120e-05  0.0414    1.89   0.0368 0.03   0.01   0.0100 0.002 0.0023];

model.par=[8.2800e-06  0.0103    1.8907 0.0368 0.0300 0.0100 0.0100 0.0023,0.0200]; % OLD and WRONG parameters 08/06/2017 FM

