%% Initial Guesses Generator

% This function generates different initial guesses for the parameters in a
% logaritmic exploration from the maximum and minimum boundaries saving it
% in a matrix called ParFull. The number of vectors it is going to be the
% same as the number of experiments, in our case 30. 

function [] = MatrixParametersFunc (numExperiments)

% Selected boundaries for the parameters
theta_min = [3.88e-5,3.88e-2,0.5,2,7.7e-3,0.2433,5.98e-5,0.012];
theta_max = [0.4950,0.4950,4.9,10,0.23,6.8067,0.2449,0.0217];

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
save('MatrixParameters_InputComparison30.mat','ParFull');

end