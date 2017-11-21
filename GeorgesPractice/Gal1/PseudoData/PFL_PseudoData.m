%============================
% RESULTS PATHS RELATED DATA
%============================
inputs.pathd.results_folder='Practice_PFLnNOPFL';          % Folder to keep results (in Results) for a given problem                       
inputs.pathd.short_name='PFL';                    % To identify figures and reports for a given problem 
                                                     % ADVISE: the user may introduce any names related to the problem at hand 
inputs.pathd.runident='';                            % [] Identifier required in order not to overwrite previous results
                                                     %    This may be modified from command line. 'run1'(default)
                                                     

%============================
% MODEL RELATED DATA
%============================
inputs.model.input_model_type='charmodelC';          % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                     %                     'blackboxmodel'|'blackboxcost                   
inputs.model.n_st=4;                                 % Number of states                                  
inputs.model.n_par=11;                                % Number of model parameters                                  
inputs.model.n_stimulus=0;                           % Number of inputs, stimuli or control variables   
inputs.model.names_type='custom';                    % [] Names given to states/pars/inputs: 'standard' (x1,x2,...p1,p2...,u1, u2,...) 
                                                     %                                       'custom'(default)
inputs.model.st_names=char('x1','x2','x3','x4');% Names of the states                                         
inputs.model.par_names=char('a1','v1','v2','d1','d2','d3','K1',...
    'Kf','h1','h2','theta');% Names of the parameters                   
inputs.model.stimulus_names=[];                      % Names of the stimuli, inputs or controls                                  
inputs.model.eqns=...                                % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
            char('dx1=v1*(a1+(1-a1)*K1^(-h1)/(K1^(-h1)+(theta^h2*x2/(theta^h2+(2.25*1000)^h2))^(-h1)))-d1*x1',...
                    'dx2=v2*x1-d2*x2',...
                    'dx3=v2*x1-(d3+Kf)*x3',...
                    'dx4=Kf*x3-d3*x4'); 
a1=1.13e-5;
v1=7.54e-2;
v2=2.71e-2;
d1=1.01e-2;
d2=1e-2;
d3=3.24e-3;
K1=4.81;
Kf=1.24e-3;
h1=3.16;
h2=6.03e-2;
theta=1;  

inputs.model.par=[a1,v1,v2,d1,d2,d3,K1,Kf,h1,h2,theta];     % Nominal value for the parameters, this allows to fix known parameters
                                                      % These values may be updated during optimization  

%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

 inputs.exps.n_exp=1;                                 % Number of experiments                                                                  
 inputs.exps.n_obs{1}=1;                              % Number of observed quantities per experiment                         
 inputs.exps.obs_names{1}=char('Fluorescence');                  % Observation function
 inputs.exps.obs{1}=char('Fluorescence=x4');
 inputs.exps.exp_y0{1}=1*[7.38370369183959,20.0098370048851,44.6648147583222,17.0939411956336];                 % Initial conditions for each experiment       
 inputs.exps.t_f{1}=2500;                            % Experiments duration
 inputs.exps.n_s{1}=10;                                % Number of sampling times
 inputs.exps.t_s{1}=linspace(0,inputs.exps.t_f{1},inputs.exps.n_s{1});                         % [] Sampling times, by default equidistant

%==================================
% EXPERIMENTAL DATA RELATED INFO
%==================================
inputs.exps.data_type='pseudo_pos';                     % Type of data: 'pseudo'|'pseudo_pos'|'real'             


 
 %==================================
 % NUMERICAL METHODS RELATED DATA
 %==================================
 %
 % SIMULATION
 inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'radau5'(default, fortran)|'rkf45'|'lsodes'|


 inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes' (C)


 inputs.ivpsol.rtol=1.0e-7;                            % [] IVP solver integration tolerances
 inputs.ivpsol.atol=1.0e-7; 