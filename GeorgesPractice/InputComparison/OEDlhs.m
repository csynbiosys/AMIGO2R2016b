function fullresult = OEDlhs(numSteps,numExperiments,numLoops)

theta_min = [3.88e-05,0.388,1,4,0.0277,0.1,0.0023,0.0077,1e-03];
theta_max = [0.3,0.495,3,7,0.23,1,0.03,0.0231,0.1];

tempcd=cd;
cd ('../../');
%AMIGO_Startup();
cd (tempcd);


initialGuess = [0.0164186333380725 0.291556643109224 1.71763487775568 5.14394334860864 0.229999999999978 6.63776658557266 0.00575139649497780 0.0216999999961899];
LHS_guess=repmat(initialGuess,numExperiments);
%exp(lhsdesign(numExperiments,length(theta_min))...
%    *diag(log(theta_max./theta_min)))*diag(theta_min);

cost=cell(numExperiments,1);
designs=cost;
conv_curve_time=cost;
conv_curve_cost=cost;
results=cost;

rng shuffle;
rngSeeds=num2cell(round(rand(numExperiments,1)*1e8));
% use parfor if the parallel pool has been created.
if (isempty(gcp('nocreate')))
    for epcc_exps=1:numExperiments
        [results{epcc_exps},cost{epcc_exps},designs{epcc_exps},...
            conv_curve_time{epcc_exps},conv_curve_cost{epcc_exps}]...
            =solveOED(theta_min,theta_max,numSteps,numLoops,...
            LHS_guess(epcc_exps,:),rngSeeds{epcc_exps});
    end
else
    pctRunOnAll warning('off', 'all');
    parfor epcc_exps=1:numExperiments
        [results{epcc_exps},cost{epcc_exps},designs{epcc_exps},...
            conv_curve_time{epcc_exps},conv_curve_cost{epcc_exps}]...
            =solveOED(theta_min,theta_max,numSteps,numLoops,...
            LHS_guess(epcc_exps,:),rngSeeds{epcc_exps});
    end
end

fullresult.cost=cell2mat(cost);
fullresult.designs=cell2mat(designs);
fullresult.conv_curve_time=conv_curve_time;
fullresult.conv_curve_cost=conv_curve_cost;
fullresult.theta_guesses=LHS_guess;
fullresult.results=results;
fullresult.rngSeeds=rngSeeds;
figure();
try
    plot(fullresult.conv_curve_time',fullresult.conv_curve_cost');
    title('Convergence curves');
    xlabel('CPU time (S)');
    ylabel('Objective function');
    set(gca,'fontsize', 14);
catch
end
end