function model = gal1_load_model_George1()
% Gal1 model but here we have eliminated parameter Vm1 using the fact
% that the output is 1 when at steady state.  Thus we can cast Vm in
% term of the other parameters.
cprintf(['loading ',mfilename,'...\n']);
model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                             
model.n_st=3;                                       % Number of states      
model.n_par=8;                                      % Number of model parameters 
model.n_stimulus=1;                                 % Number of inputss, stimuli or control variables   
model.st_names=char('gal1_mrna','gal1_foldedP','gal1_fluo');     % Names of the states                                              
model.par_names=char('r','h1','Km1','d1',...
                            'alpha2','d2','Kf','Kb');           % Names of the parameters                     
model.stimulus_names=char('gal');                                        % Names of the stimuli, inputss or controls                      
model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('alpha1=d1*Kb*(d2+Kf)*r/(Kf*alpha2)',...
                    'Vm1=(d1*Kb*(Kf+d2)/(alpha2*Kf) - alpha1) * (Km1^h1 + 2^h1)/2^h1',...
                    'dgal1_mrna=alpha1+Vm1*(gal^h1/(Km1^h1+gal^h1))-d1*gal1_mrna',...
                    'dgal1_foldedP=alpha2*gal1_mrna-(d2+Kf)*gal1_foldedP',...
                    'dgal1_fluo=Kf*gal1_foldedP-Kb*gal1_fluo');           
                
model.par=[0.001,2.22548971250921,0.1,0.0100614569676223,1,1,1,1];
%model.par=[0.0012,6.5097,0.8815,0.0099,9.9824,9.9696,9.9118,9.9978];
end