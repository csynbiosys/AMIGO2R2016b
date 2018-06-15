function [] = run_in_silico_experiment_parfor_Optimised(resultBase, numLoops, numExperiments)

cd ('../../');
AMIGO_Startup();

cd ('Examples/PLacCDC2018/InputComparison/Scripts');



% Create a matrix of initial guesses for the vector of parameter estimates.
% The matrix has as many rows as the number of PE iterations
% (numExperiments).
% The vectors are obtained as latin hypercube samples within the boundaries selected above.
% Each vector is passed as input to the computing function

% M_norm = lhsdesign(numExperiments,length(theta_min));
% M = zeros(size(M_norm));
% for c=1:size(M_norm,2)
%     for r=1:size(M_norm,1)
%         M(r,c) = 10^(M_norm(r,c)*(log10(theta_max(1,c))-log10(theta_min(1,c)))+log10(theta_min(1,c))); % log exploration
%     end
% end 
% 
% ParFull = M; % in this case I am fitting all the values
% save('MatrixParameters_InputComparison.mat','ParFull');

% For the sake of a fair comparison among input classes, all simulations
% used the same matrix of initial theta guesses
load('MatrixParameters_InputComparison.mat');       

parfor epcc_exps=1:numExperiments
    stepd = 200;
    epccNumLoops = numLoops;
        try
            global_theta_guess = ParFull(epcc_exps,:);
            epccOutputResultFileNameBase = [resultBase,'-','Optsteps-',num2str(numLoops),'_loops-',num2str(epcc_exps)];
            [out] = fit_to_InduciblePromoter_Optimised(epccOutputResultFileNameBase,epcc_exps,global_theta_guess); 
        catch err
            %open file
            errorFile = [resultBase,'-','Optsteps-',num2str(numLoops),'_loops-',num2str(epcc_exps),'.errorLog'];
            fid = fopen(errorFile,'a+');
            fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
            % close file
            fclose(fid);
        end
end

