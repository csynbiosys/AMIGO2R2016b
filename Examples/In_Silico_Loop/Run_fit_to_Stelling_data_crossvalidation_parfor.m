function [] = Run_fit_to_Stelling_data_crossvalidation_parfor( resultBase, numExperiments )

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');

theta_min = [0.001,1e-10,7.75e-5 ,1e-10, 7.75e-5, 0.001, 5e-4, 1, 1,0.001, 1e-10,10];
theta_max = [1,1,1, 1, 1, 1, 1.7e-3, 1e4, 1000, 1, 1,100];

M_norm = lhsdesign(numExperiments,length(theta_min));
M = zeros(size(M_norm));
for c=1:size(M_norm,2)
    for r=1:size(M_norm,1)
        %M(r,c) = M_norm(r,c)*(theta_max(1,c)-theta_min(1,c))+theta_min(1,c);
        M(r,c) = 10^(M_norm(r,c)*(log10(theta_max(1,c))-log10(theta_min(1,c)))+log10(theta_min(1,c))); % log exploration
    end
end 

ParFull = [M(:,1:2) 7.75e-5*ones(size(M,1),1) M(:,3:8) 2800*ones(size(M,1),1) M(:,9:end)];
save('MatrixParameters.mat','ParFull');

parfor epcc_exps=1:numExperiments
        try
            global_theta_guess = ParFull(epcc_exps,:);
            epccOutputResultFileNameBase = [resultBase,'-',num2str(epcc_exps)];
            %[out] = fit_to_Stelling_data_crossvalidation_f(epccOutputResultFileNameBase,epcc_exps,global_theta_guess);
            [out] = fit_to_Stelling_data_crossvalidation_equal_simulations_f(epccOutputResultFileNameBase,epcc_exps,global_theta_guess);
        catch err
            %open file
            errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
            fid = fopen(errorFile,'a+');
            fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
            % close file
            fclose(fid);
        end
end

