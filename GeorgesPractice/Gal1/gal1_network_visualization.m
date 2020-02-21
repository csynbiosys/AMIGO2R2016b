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

inputs.model=gal1_load_model_George1();

%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

inputs.exps=gal1_load_experiments_George1(inputs);
                         
 

 inputs.model.shownetwork = 1;
 AMIGO_Prep(inputs)