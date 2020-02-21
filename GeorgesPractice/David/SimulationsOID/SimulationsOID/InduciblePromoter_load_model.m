%% MPLac Model
% The script specifies the mathematical model structure as a charmodelC
% indicating name and number of states variables, model parameters,
% stimulus, observables, equations and parameter estimate values obtained
% by model fitting.

%% Model Structure

% Model introduction -- 'charmodelC'|'c_model'|'charmodelM'|
% 'matlabmodel'|'sbmlmodel'|'blackboxmodel'|'blackboxcost                        
model.input_model_type='charmodelC';                                             

% Number of states
model.n_st=3;                                                                     

% Number of model parameters 
model.n_par=8;                                                              

% Number of inputs, stimuli or control variables
model.n_stimulus=1;                                                            

% Names of the states
model.st_names=char('Cit_mrna','Cit_foldedP','Cit_fluo');                                                           

% Names of the parameters   
model.par_names=char('alpha1','Vm1','h1','Km1','d1','alpha2','d2','Kf');                      

% Names of the stimulus, inputs or controls 
model.stimulus_names=char('IPTG');                                                               

%% Model Equations

% Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
model.eqns=...                                                              
               char('dCit_mrna=alpha1+Vm1*(IPTG^h1/(Km1^h1+IPTG^h1))-d1*Cit_mrna',...
                    'dCit_foldedP=alpha2*Cit_mrna-(d2+Kf)*Cit_foldedP',...
                    'dCit_fluo=Kf*Cit_foldedP-d2*Cit_fluo');           

%% Parameters estimated values

% The parameter vector is set to the best estimates for MIP,r
model.par = [0.0164186333380725 0.291556643109224 1.71763487775568 5.14394334860864 0.229999999999978 6.63776658557266 0.00575139649497780 0.0216999999961899]; 