function [] = Run_M_fit( resultBase, numExperiments )
% This function runs the script for the identification of the M structure
% to the plate reader data. It takes two inputs:
% - a string with the identifier of the output files
% - the number of iterations of parameter estimation. 
% In the paper we used numExperiments = 100.

timerVal = tic;
cd ('../../');
AMIGO_Startup();

cd ('Examples/M_PE');

% Specify the allowed boundaries of the parameters
% theta_min = [3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012,1e-6];
% theta_max = [0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217,1e2];

theta_min = [3.88e-8,3.88e-5,0.5,1,0.0077,0.2433,2.39e-4,0.0058,1e-6];
theta_max = [0.4950,0.4950,4.9,10,0.69,6.8067,0.2449,0.0462,1e2];

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
% save('MatrixParameters_PRData.mat','ParFull');
%%    
load('MatrixParameters_PRData.mat');   

parfor epcc_exps=1:numExperiments
        try
            %global_theta_guess = ParFull(epcc_exps,:);
            %global_theta_guess = [0.2475    0.2475    2.7000    5.5000    0.3488    3.5250    0.1226    0.0260   50.0000]
            global_theta_guess = [0.2475    0.2475    2.7000    5.5000    0.3488    3.4533    0.5000    0.5029   50.0000];
            epccOutputResultFileNameBase = [resultBase,'-',num2str(epcc_exps)];
            [out] = fit_M(epccOutputResultFileNameBase,epcc_exps,global_theta_guess);
            %[out] = fit_M_MultiStart(epccOutputResultFileNameBase,epcc_exps,global_theta_guess);

        catch err
            %open file
            errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
            fid = fopen(errorFile,'a+');
            fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
            % close file
            fclose(fid);
        end
end

elapsed = toc(timerVal);
save('ElapsedTime2018.mat','elapsed')
