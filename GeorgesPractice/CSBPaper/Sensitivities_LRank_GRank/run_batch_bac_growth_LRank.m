
% Computes Bacterial batch growth model local parametric sensitivities and 
% rank or parameters 

clear all;

cprintf('*[1,0.5,0]','\n\n --->Local sensitivity analysis and rank of parameters');
cprintf('*[1,0.5,0]','\n\n --->CASE with 1 experiment')
pause(1)
batch_bac_growth_rank_1exp  % Calls the script with the inputs: 
                            % Model
                            % Experimental scheme 
                            % Rank problem formulation: unknowns to be
                            % considered + value of unkwnowns for which the
                            % analysis is performed
                            % Numerical approaches for simulation and sensitivity
                            % analysis
                      
AMIGO_Prep(inputs)          % Calls the task for pre-processing

AMIGO_LRank(inputs)         % Calls the task for Local Rank

clear all;
cprintf('*[1,0.5,0]','\n\n --->Local sensitivity analysis and rank of parameters');
cprintf('*[1,0.5,0]','\n\n --->CASE with 2 experiments')
pause(1)

batch_bac_growth_rank_2exps % Calls the script with the inputs: 
                            % Model
                            % Experimental scheme 
                            % Rank problem formulation: unknowns to be
                            % considered + value of unkwnowns for which the
                            % analysis is performed
                            % Numerical approaches for simulation and sensitivity
                            % analysis
                      
AMIGO_LRank(inputs)         % Calls the task for Local Rank