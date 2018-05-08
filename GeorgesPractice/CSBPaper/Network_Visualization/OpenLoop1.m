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

inputs.pathd.results_folder='GalOpenLoop';         % Folder to keep results (in Results) for a given problem          
inputs.pathd.short_name='GOL';                      % To identify figures and reports for a given problem   

%========================
% MODEL RELATED DATA
%========================

inputs.model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                             
inputs.model.n_st=13;                                       % Number of states      
inputs.model.n_par=16;                                      % Number of model parameters 
inputs.model.n_stimulus=1;                                 % Number of inputs, stimuli or control variables   
inputs.model.st_names=char('L0','Citrine','Lac12','Lac12m','IPTGint',...
    'L1','L2','G10','G11','G12','G20','G21','G22');     % Names of the states  
inputs.model.par_names=char('k1','k_1','k2','k_2','kC','lk','kcat','kout','kLacI','kLac12','kTP1',...
    'scLacI','scCitrine','scmolec','Km','kd');           % Names of the parameters                     
inputs.model.stimulus_names=char('IPTGext');                                        % Names of the stimuli, inputs or controls                      
inputs.model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('dL0=kLacI+k_1*G21-2*k1*L0*G20+2*k_1*G22-k1*L0*G21+k_2*L1-2*k2*L0*IPTGint-kd*L0',...
                    'dCitrine=kC*G20+lk*kC*(G21+G22)-kd*Citrine',...
                    'dLac12=kLac12*G10-kTP1*Lac12-kd*Lac12',...
                    'dLac12m=kTP1*Lac12-kd*Lac12m',...
                    'dIPTGint=-L0*IPTGint*2*k2+k_2*L1-L1*IPTGint*k2+2*k_2*L2+kcat*Lac12m*IPTGext/(Km+IPTGext)-kout*kd*IPTGint+kd*(L1+2*L2)',...
                    'dL1=L0*IPTGint*2*k2-k_2*L1-L1*IPTGint*k2+2*k_2*L2-kd*L1',...
                    'dL2=k2*L1*IPTGint-2*k_2*L2-kd*L2',...
                    'dG10=0',...
                    'dG11=0',...
                    'dG12=0',...
                    'dG20=-L0*G20*2*k1+k_1*G21+kd*G21',...
                    'dG21=2*k1*L0*G20-k_1*G21-L0*G21*k1+2*k_1*G22-kd*G21+2*kd*G22',...
                    'dG22=k1*L0*G21-2*k_1*G22-2*kd*G22');
k1=2.7e-4;
k_1=0.0049;
k2=2.79e-6;
k_2=0.012;
kC=0.049;
lk=1e-10;
kcat=1.5;
kout=54.93;
kLacI=0.005;
kLac12=0.929;
kTP1=5.4e-4;
scLacI=1.191;
scCitrine=0.869;
scmolec=27.18;
Km=2800;
kd=7.75e-5;


theta=[k1,k_1,k2,k_2,kC,lk,kcat,kout,kLacI,kLac12,kTP1,scLacI,scCitrine,scmolec,Km,kd];
inputs.model.par=theta;



%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

 inputs.exps.n_exp=1;                                  %Number of experiments                                                                            
 for iexp=1:inputs.exps.n_exp   
 inputs.exps.exp_y0{iexp}=GalLoop_initial_conditions(theta,0);  %Initial conditions for each experiment          
 inputs.exps.t_f{iexp}=2500;                            %Experiments duration        
 
 % OBSEVABLES DEFINITION  
 inputs.exps.n_obs{iexp}=1;                            % Number of observed quantities per experiment  
 inputs.exps.obs_names{iexp}=char('CitrineAU');      % Name of the observed quantities per experiment    
 inputs.exps.obs{iexp}=char('CitrineAU=Citrine*scCitrine/scmolec');   % Observation function

 end 
 
 inputs.exps.u_interp{1}='sustained';                  %Stimuli definition for experiment 1:
                                                       %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down' 
 inputs.exps.t_con{1}=[0 2500];                         % Input swithching times: Initial and final time    
 inputs.exps.u{1}=10;                                 % Values of the inputs  
 
 
 
 inputs.model.shownetwork = 1;
 AMIGO_Prep(inputs);