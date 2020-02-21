%% Run Simulations Script

% Script that takes as an input the name or tab that will be included in
% the results name, the global solver selected, the loal solver selected
% and the different settings for Differential Evolution (CR, F and
% strategy) and SRES (pf) to run the different simulations.

function [out] = run_in_silico_experiment_parfor_Optimised(resultBase,globalSolv,localSolv,CR,F,strategy,pf)

% If statement to check that the Global solver name selected is correct
% since it is the most important part.
if strcmp(globalSolv, 'sres') || strcmp(globalSolv, 'de') || strcmp(globalSolv, 'eSS')
else
    fprintf('\nWrong Global Solver Selected. Please Try Again.\n\n');
    return
end

% Number of loops (1 since we are doing off-line OED) and the number of
% experiments performed for each simulation (30)
numLoops = 1; 
numExperiments = 30; 

% Start AMIGO2 Toolbox
AMIGO_Startup();

% Loads the Matrix with the different initial guesses for theta generated
% using the function MatrixParametersFunc.m
load('MatrixParameters_InputComparison30.mat');   

% Generates a new directory with the name introduced to resultBase and
% moves into it to save the results of the simulation in it.
mkdir(resultBase); 
cd(resultBase); 

% Parallel for loop (how many are done at the same time deppends on the
% processor of the computer used) that runs a simulation 30 times (number
% of experiments)
for epcc_exps=1:numExperiments
        % Duration of the steps (200 min) and number of loops (1)
        stepd = 200;
        epccNumLoops = numLoops;
        
        % Try/catch statment to run the simulation from the script
        % fit_to_InduciblePromoter_Optimised_valuesOnly and if there is an
        % error and error file will be generated and the next trial will
        % start
       % try
            global_theta_guess = ParFull(epcc_exps,:);
            % Generates the name of the file with the results
            epccOutputResultFileNameBase = [resultBase,'-','Optsteps_',globalSolv,'_',localSolv,'-',num2str(numLoops),'_loops-',num2str(epcc_exps)];
            cd ..\;
            [out]=fit_to_InduciblePromoter_Optimised_valuesOnly(epccOutputResultFileNameBase,epccNumLoops,stepd,epcc_exps,global_theta_guess,globalSolv,localSolv,CR,F,strategy,pf);
            cd(resultBase); 
%         catch err
%             %open file
%             errorFile = [resultBase,'-','Optsteps_',globalSolv,'-','_',localSolv,num2str(numLoops),'_loops-',num2str(epcc_exps),'.errorLog'];
%             fid = fopen(errorFile,'a+');
%             fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
%             % close file
%             fclose(fid);
%         end

end

% Move back to the original folder
cd ..\; 

end
