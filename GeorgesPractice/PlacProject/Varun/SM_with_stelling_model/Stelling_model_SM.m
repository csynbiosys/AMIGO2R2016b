%======================
% PATHS RELATED DATA
%======================
inputs.pathd.results_folder='stelling-model-tutorial';         % Folder to keep results (in Results) for a given problem          
inputs.pathd.short_name='stelling';                      % To identify figures and reports for a given problem   
inputs.pathd.runident='RM_All_inputs2';                         % [] Identifier required in order not to overwrite previous results
                                                     %    This may be modified from command line. 'run1'(default)
 

%======================
% MODEL RELATED DATA
%======================

inputs.model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                              
inputs.model.n_st=10;                                       % Number of states      
inputs.model.n_par=14;                                     % Number of model parameters 
inputs.model.n_stimulus=1;                                 % Number of inputs, stimuli or control variables   
inputs.model.st_names=char('L0','G20','G21','G22','Lac12','Lac12m','IPTGint','L1','L2','Cit');     % Names of the states                                              
inputs.model.par_names=char('kLacI','k1','k_1','k2','k_2','kLac12','kC','lk','kd','kTP1','kcat','kout','Km', 'scaleMolec');                  % Names of the parameters                     
inputs.model.stimulus_names=char('IPTGext');                                        % Names of the stimuli, inputs or controls                      
inputs.model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('dL0=(kLacI+k_1*G21+2*k_1*G22+k_2*L1-k1*L0*(2*G20+G21)-2*k2*L0*IPTGint-kd*L0)',...
                    'dG20=(k_1*G21+kd*G21-2*k1*L0*G20)',...
                    'dG21=(2*k1*G20*L0+2*kd*G22+2*k_1*G22-k_1*G21-k1*L0*G21-kd*G21)',...
                    'dG22=(k1*L0*G21-2*k_1*G22-2*kd*G22)',...
                    'dLac12=(kLac12-kTP1*Lac12-kd*Lac12)',...
                    'dLac12m=(kTP1*Lac12-kd*Lac12m)',...
                    'dIPTGint=(((kcat*Lac12m*IPTGext)/(Km+IPTGext))+k_2*L1+2*k_2*L2+kd*(L1+2*L2)-(2*k2*L0+k2*L1)*IPTGint-kout*kd*IPTGint)',...
                    'dCit=(kC*G20+lk*kC*(G21+G22)-kd*Cit)',...    
                    'dL1=(2*k2*L0*IPTGint+2*k_2*L2-(k_2+k2*IPTGint+kd)*L1)',...    
                    'dL2=(k2*L1*IPTGint-(2*k_2+kd)*L2)');              

%==================
% PARAMETER VALUES
% =================

	kLacI      = 5.4772e-01;  
	k1         = 8.8926e-01 ; 
	k_1        = 2.2900e-04 ; 
	k2         = 4.9113e-02 ; 
	k_2        = 1.1070e-01  ;
	kLac12     = 3.8377e-01;  
	kC         = 1.0000e-03 ;
	lk         = 4.2440e-02  ;
	kTP1       = 5.9236e-04 ; 
	kcat       = 2.4247e+03;  
	kout       = 8.1901e+03 ; 
	scaleMolec = 2.6868e+01 ; 

% kLacI=0.005; k1=2.7e-4; k_1=0.0049; k2=2.79e-6; k_2=0.012;    % Nominal value for the parameters, this allows to fix known parameters
% kC=0.049; lk=1e-10; 
kd=7.75e-5; 
% kTP1=5.4e-4; 
% 
% kcat=3.57; % Open loop value of kcat=1.5;
% 
% kLac12=kC;    % open loop kLac12 = 0.929;
% kout=5;       % open loop kout=54.93; 
% 
Km=2800; 
%scaleMolec=27.18;
                
inputs.model.par=[kLacI k1 k_1 k2 k_2...   % Nominal value for the parameters, this allows to fix known parameters
                 kLac12 kC lk kd kTP1 kcat...
                 kout Km scaleMolec]; % These values may be updated during optimization  
                                                                      

%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

IPTGextValues=[0:0.1:49,50:10:1000,1100:1000:10000];                %These were the values used by the authors and shared over email

index=(1:6:596);

IPTGextValues_input=IPTGextValues(1,index);                     %IPTGextValues= [0, 2.5, 5, 7.5, 10, 15, 20, 25, 35, 50, 100, 1000]; %[0 0.5 1 2.5 5 7.5 10 15 20 30 40 50 100 1000 10000];  % Fig2C_plot_data(:,1)';

inputs.exps.n_exp = length(IPTGextValues_input);                                   %Number of experiments to test different inputs


 for iexp=1:inputs.exps.n_exp   
 
 inputs.exps.exp_y0{iexp}=[0 1 0 0 0 0 0 0 0 0];  %Initial conditions for each experiment          
 inputs.exps.t_f{iexp}=24*60*60;                            %Experiments duration
 
 inputs.exps.u_interp{iexp}='sustained';               %Stimuli definition for experiment 1:
                                                       %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down' 
 inputs.exps.t_con{iexp}=[0 24*60*60];                 % Input swithching times: Initial and final time    
 inputs.exps.u{iexp}=IPTGextValues_input(1,iexp);            % IPTG levels to test
 
 end 


                        