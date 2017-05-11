%============================
% RESULTS PATHS RELATED DATA
%============================

inputs.pathd.results_folder='egt2'; % Folder to keep results (in Results) for a given problem                       
inputs.pathd.short_name='egt2';                       % To identify figures and reports for a given problem 
                                                     % ADVISE: the user may introduce any names related to the problem at hand 
inputs.pathd.runident='r1';


%============================
% MODEL RELATED DATA
%============================
inputs.model.input_model_type='charmodelC';                % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                           %                     'blackboxmodel'|'blackboxcost                             
                                                           
inputs.model.n_st=3;                                       % Number of states      
inputs.model.n_par=9;                                      % Number of model parameters 
inputs.model.n_stimulus=1;                                 % Number of inputs, stimuli or control variables   
inputs.model.st_names=char('mrna','prot','fluo');     % Names of the states                                              
inputs.model.par_names=char('alpha1','Vm1','h1','Km1','d1',...
                            'alpha2','d2','Kf','Kb');           % Names of the parameters                     
inputs.model.stimulus_names=char('swi5');                                        % Names of the stimuli, inputs or controls                      
inputs.model.eqns=...                                      % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
               char('dmrna= alpha1+Vm1*(swi5^h1/(Km1^h1+swi5^h1))-d1*mrna',...
                    'dprot= alpha2*mrna-(d2+Kf)*prot',...
                    'dfluo= Kf*prot-Kb*fluo');           
                
inputs.model.par=[0.00175985449291231,0.0800887345690361,2.22548971250921,3.35948035905386,0.0100614569676223,1,1,1,1] 


%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

 inputs.exps.n_exp=1;                                 % Number of experiments                                                                  
 inputs.exps.n_obs{1}=3;                              % Number of observed quantities per experiment                         
 inputs.exps.obs_names{1}=char('mrna','prot','fluo');                  % Observation function
 inputs.exps.obs{1}=char('mrna=mrna','prot=prot','fluo=fluo');
 inputs.exps.exp_y0{1}=[eps eps eps];                 % Initial conditions for each experiment       
 inputs.exps.t_f{1}=1000;                            % Experiments duration
 inputs.exps.n_s{1}=100;                                % Number of sampling times
 inputs.exps.t_s{1}=linspace(0,1000,100);                         % [] Sampling times, by default equidistant
 
 inputs.exps.u_interp{1}='sustained';                   
 inputs.exps.t_con{1}=[0 1000];                      % stimulus swithching times, experiment 1  
 inputs.exps.u{1}(1,:)=2; 

%==================================
% EXPERIMENTAL DATA RELATED INFO
%==================================
inputs.exps.data_type='pseudo';                     % Type of data: 'pseudo'|'pseudo_pos'|'real'             

 
%==================================
% NUMERICAL METHODS RELATED DATA
%==================================
inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'radau5'(default, fortran)|'rkf45'|'lsodes'|

inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes' (C)

inputs.ivpsol.rtol=1.0e-7;                            % [] IVP solver integration tolerances
inputs.ivpsol.atol=1.0e-7;