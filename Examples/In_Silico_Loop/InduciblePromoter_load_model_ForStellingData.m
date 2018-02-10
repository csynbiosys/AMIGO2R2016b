model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                             
model.n_st=4;                                       % Number of states      
model.n_par=9;                                      % Number of model parameters 
model.n_stimulus=1;                                 % Number of inputs, stimuli or control variables   
model.st_names=char('Cit_mrna','Cit_foldedP','Cit_fluo','Cit_AU');     % Names of the states                                        
model.par_names=char('alpha1','Vm1','h1','Km1','d1',...
                            'alpha2','d2','Kf','sc_molec');           % Names of the parameters                     
model.stimulus_names=char('IPTG');                                        % Names of the stimuli, inputs or controls                      
model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('dCit_mrna=alpha1+Vm1*(IPTG^h1/(Km1^h1+IPTG^h1))-d1*Cit_mrna',...
                    'dCit_foldedP=alpha2*Cit_mrna-(d2+Kf)*Cit_foldedP',...
                    'dCit_fluo=Kf*Cit_foldedP-d2*Cit_fluo',...
                    'dCit_AU = sc_molec*dCit_fluo');           
                
%          alpha1	Vm1     h1  Km1     d1     alpha2  d2     Kf   sc_molec            
model.par=[0.2475	0.2669	2.7	6	0.1189	3.5250	0.1225	0.0169	13.75]; % This shouldn't be used at the beginning, just set to the average value in the boundaries

%model.par = [6.4667e-7,6.4667e-4,0.5,2,1.2833e-4,0.0041,9.9667e-7,2e-4,10]; % Fitting Stelling Data - it does not matter, just set to the minimum 