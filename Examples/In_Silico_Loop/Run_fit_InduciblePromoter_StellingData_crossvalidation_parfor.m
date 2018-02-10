function [] = Run_fit_InduciblePromoter_StellingData_crossvalidation_parfor( resultBase, numExperiments )

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');

% Selected boundaries for the parameters
%theta_min = [3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012]; min
%theta_max = [0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217];

%          alpha1	Vm1     h1  Km1     d1     alpha2  d2     Kf   sc_molec      

theta_min = [6.4667e-7,6.4667e-4,0.5,2,1.2833e-4,0.0041,9.9667e-7,2e-4,10]; %sec
theta_max = [0.0083,0.0083,4.9,10,0.0038,0.1134,0.0041,3.6167e-4,100];


% Create a matrix of initial guesses for the parameters, having as many
% rows as the number of PE iterations (numExperiments)
% Each vector is passed as input to the computing function
M_norm = lhsdesign(numExperiments,length(theta_min));
M = zeros(size(M_norm));
for c=1:size(M_norm,2)
    for r=1:size(M_norm,1)
        M(r,c) = 10^(M_norm(r,c)*(log10(theta_max(1,c))-log10(theta_min(1,c)))+log10(theta_min(1,c))); % log exploration
    end
end 

ParFull = M; % in this case I am fitting all the values
save('MatrixParameters.mat','ParFull');

parfor epcc_exps=1:numExperiments
        try
            global_theta_guess = ParFull(epcc_exps,:);
            epccOutputResultFileNameBase = [resultBase,'-',num2str(epcc_exps)];
            [out] = fit_InduciblePromoter_to_Stelling_data_crossvalidation_f(epccOutputResultFileNameBase,epcc_exps,global_theta_guess);
        catch err
            %open file
            errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
            fid = fopen(errorFile,'a+');
            fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
            % close file
            fclose(fid);
        end
end

