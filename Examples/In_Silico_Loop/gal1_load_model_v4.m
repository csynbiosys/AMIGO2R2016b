% Gal1 model but here we have eliminated parameter Vm1 using the fact
% that the output is 1 when at steady state.  Thus we can cast Vm in
% term of the other parameters.
%
% Now we have a variable parameter for d1 as it depends on the 
% glucose/galactose levels.  Here I do a quick hack to make it work for
% our binary inputs.  Need to think more about how it works for inputs
% that are a mix of galactose and glucose.
%
% The calculation of Vm1 is about the steady state model at gal=2 so it 
% uses the degradation rate in galactose (d1gal).  The calculation of r
% uses the steady state equation when gal=0 so it uses the degradation
% rate when in glucose (d1glu).

model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                             
model.n_st=3;                                       % Number of states      
model.n_par=9;                                      % Number of model parameters 
model.n_stimulus=1;                                 % Number of inputs, stimuli or control variables   
model.st_names=char('gal1_mrna','gal1_foldedP','gal1_fluo');     % Names of the states                                              
model.par_names=char('r','h1','Km1','d1gal','d1glu',...
                            'alpha2','d2','Kf','Kb');           % Names of the parameters                     
model.stimulus_names=char('gal');                                        % Names of the stimuli, inputs or controls                      
model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('foo=((2-gal)/2)*d1glu + (gal/2)*d1gal',...
                    'alpha1=d1glu*Kb*(d2+Kf)*r/(Kf*alpha2)',...
                    'Vm1=(d1gal*Kb*(Kf+d2)/(alpha2*Kf) - alpha1) * (Km1^h1 + 2^h1)/2^h1',...
                    'dgal1_mrna=alpha1+Vm1*(gal^h1/(Km1^h1+gal^h1))-foo*gal1_mrna',...
                    'dgal1_foldedP=alpha2*gal1_mrna-(d2+Kf)*gal1_foldedP',...
                    'dgal1_fluo=Kf*gal1_foldedP-Kb*gal1_fluo');           
% Have had to call d1 as 'foo' because if I use d1 in the equation it
% thinking I'm specifying a ODE equation because d1 begins with d.

                
model.par=[0.001,2.22548971250921,0.1,0.0100614569676223,0.0100614569676223,1,1,1,1];

