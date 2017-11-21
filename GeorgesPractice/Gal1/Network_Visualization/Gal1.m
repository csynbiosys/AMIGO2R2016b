 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%        INPUT FILE TO SIMULATE MODEL
%
%        This is the minimum input file for model simulation. 
%        Default values are assigned to non defined inputs.
%
%        Minimum required inputs:
%           > Paths related data
%           > Model:               model_type; n_st; n_par; n_stimulus; 
%                                  st_names; par_names; stimulus_names;  
%                                  eqns; par
%           > Experimental scheme: n_exp; exp_y0{iexp}; t_f{iexp}; 
%                                  u_interp{iexp}; t_con{iexp}; u{iexp}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%=======================
% PATHS RELATED DATA
%=======================

inputs.pathd.results_folder='Practice_Gal1';         % Folder to keep results (in Results) for a given problem          
inputs.pathd.short_name='Gal1';                      % To identify figures and reports for a given problem   

%========================
% MODEL RELATED DATA
%========================

inputs.model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                             
inputs.model.n_st=3;                                       % Number of states      
inputs.model.n_par=9;                                      % Number of model parameters 
inputs.model.n_stimulus=1;                                 % Number of inputs, stimuli or control variables   
inputs.model.st_names=char('gal1_mrna','gal1_foldedP','gal1_fluo');     % Names of the states                                              
inputs.model.par_names=char('alpha1','Vm1','h1','Km1','d1',...
                            'alpha2','d2','Kf','Kb');           % Names of the parameters                     
inputs.model.stimulus_names=char('gal');                                        % Names of the stimuli, inputs or controls                      
inputs.model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('dgal1_mrna=alpha1+Vm1*(gal^h1/(Km1^h1+gal^h1))-d1*gal1_mrna',...
                    'dgal1_foldedP=alpha2*gal1_mrna-(d2+Kf)*gal1_foldedP',...
                    'dgal1_fluo=Kf*gal1_foldedP-Kb*gal1_fluo');           
theta=[0.00175985449291231,0.0800887345690361,2.22548971250921,3.35948035905386,0.0100614569676223,1,1,1,1];            
                
inputs.model.par=theta;



%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

 inputs.exps.n_exp=4;                                  %Number of experiments                                                                            
 for iexp=1:inputs.exps.n_exp   
 inputs.exps.exp_y0{iexp}=gal1_initial_conditions(theta,2);  %Initial conditions for each experiment          
 inputs.exps.t_f{iexp}=2500;                            %Experiments duration        
 
 % OBSEVABLES DEFINITION  
 inputs.exps.n_obs{iexp}=1;                            % Number of observed quantities per experiment  
 inputs.exps.obs_names{iexp}=char('Fluorescence');      % Name of the observed quantities per experiment    
 inputs.exps.obs{iexp}=char('Fluorescence=gal1_fluo');   % Observation function

 end 
 
 inputs.exps.u_interp{1}='sustained';                  %Stimuli definition for experiment 1:
                                                       %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down' 
 inputs.exps.t_con{1}=[0 2500];                         % Input swithching times: Initial and final time    
 inputs.exps.u{1}=[1e-9];                                 % Values of the inputs 
 
 inputs.exps.u_interp{2}='sustained';               
                                                    
 inputs.exps.t_con{2}=[0 2500];                    
 inputs.exps.u{2}=[1e-8];                          
 
 inputs.exps.u_interp{3}='sustained';                 
                                                     
 inputs.exps.t_con{3}=[0 2500];                        
 inputs.exps.u{3}=[1e-7];                            
 
 inputs.exps.u_interp{4}='sustained';                  
                                                    
 inputs.exps.t_con{4}=[0 2500];                         
 inputs.exps.u{4}=[1e-6];                                
 

 inputs.model.shownetwork = 1;
 AMIGO_Prep(inputs)