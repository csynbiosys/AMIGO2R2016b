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

inputs.pathd.results_folder='Practice_PFLnNOPFL';         % Folder to keep results (in Results) for a given problem          
inputs.pathd.short_name='P1';                      % To identify figures and reports for a given problem   

%========================
% MODEL RELATED DATA
%========================

inputs.model.input_model_type='charmodelC';                % Model introduction: 'charmodel'|'matlabmodel'|'sbmlmodel'|'fortranmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                             
inputs.model.n_st=3;                                       % Number of states      
inputs.model.n_par=10;                                     % Number of model parameters 
inputs.model.n_stimulus=2;                                 % Number of inputs, stimuli or control variables   
inputs.model.st_names=char('x1','x3','x4');       % Names of the states                                              
% x1   d2EYFP mRNA
% x3   unfolded d2EYFP protein
% x4   folded d2EYFP protein(obserbsed)
inputs.model.par_names=char('a1','v1','v2','d1','d3','K1',...
    'Kf','h1','h2','theta');                  % Names of the parameters                     
inputs.model.stimulus_names=char('Doxy','x2');                                        % Names of the stimuli, inputs or controls                      
% Doxy     Cyclohexamide (CHX) Doxy
inputs.model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('dx1=v1*(a1+(1-a1)*K1^(-h1)/(K1^(-h1)+(theta^h2*x2/(theta^h2+Doxy^h2))^(-h1)))-d1*x1',...
                    'dx3=v2*x1-(d3+Kf)*x3',...
                    'dx4=Kf*x3-d3*x4');              
                
a1=1.13e-5;
v1=7.54e-2;
v2=2.71e-2;
d1=1.01e-2;
d3=3.24e-3;
K1=4.81;
Kf=1.24e-3;
h1=3.16;
h2=6.03e-2;
theta=1;                
                
inputs.model.par=[a1,v1,v2,d1,d3,K1,Kf,h1,h2,theta]; % Nominal value for the parameters, this allows to fix known parameters
                                                            % These values may be updated during optimization  


%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================
inputs.exps.n_exp=4;                                  %Number of experiments                                                                            
 for iexp=1:inputs.exps.n_exp   
 inputs.exps.exp_y0{iexp}=zeros(1,inputs.model.n_t);  %Initial conditions for each experiment          
 inputs.exps.t_f{iexp}=2500;                            %Experiments duration        
 
 % OBSEVABLES DEFINITION  
 inputs.exps.n_obs{iexp}=1;                            % Number of observed quantities per experiment  
 inputs.exps.obs_names{iexp}=char('Fluorescence');      % Name of the observed quantities per experiment    
 inputs.exps.obs{iexp}=char('Fluorescence=x4');   % Observation function
 end 
 
 inputs.exps.u_interp{1}='sustained';                  %Stimuli definition for experiment 1:
                                                       %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down' 
 inputs.exps.t_con{1}=[0 2500];                         % Input swithching times: Initial and final time    
 inputs.exps.u{1}=[1e-9,13.69]';                                 % Values of the inputs 
 
 inputs.exps.u_interp{2}='sustained';               
                                                    
 inputs.exps.t_con{2}=[0 2500];                    
 inputs.exps.u{2}=[1e-8,13.69]';                          
 
 inputs.exps.u_interp{3}='sustained';                 
                                                     
 inputs.exps.t_con{3}=[0 2500];                        
 inputs.exps.u{3}=[1e-7,13.69]';                            
 
 inputs.exps.u_interp{4}='sustained';                  
                                                    
 inputs.exps.t_con{4}=[0 2500];                         
 inputs.exps.u{4}=[1e-6,13.69]';                                
                                
 

 inputs.model.shownetwork = 1;
 AMIGO_Prep(inputs)