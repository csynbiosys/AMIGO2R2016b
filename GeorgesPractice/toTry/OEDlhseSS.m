function fullresult = OEDlhseSS(numSteps,numExperiments,numLoops)

theta_min = [3.88e-05,0.388,1,4,0.0277,0.1,0.0023,0.0077,1e-03];
theta_max = [0.3,0.495,3,7,0.23,1,0.03,0.0231,0.1];

tempcd=cd;
cd ('../../');
%AMIGO_Startup();
cd (tempcd);

rng shuffle;
initialGuess = [0.0164186333380725 0.291556643109224 1.71763487775568 5.14394334860864 0.229999999999978 6.63776658557266 0.00575139649497780 0.0216999999961899];
LHS_guess=repmat(initialGuess,numExperiments);
%exp(lhsdesign(numExperiments,length(theta_min))...
%    *diag(log(theta_max./theta_min)))*diag(theta_min);

results=cell(numExperiments,1);
rngSeeds=num2cell(round(1e8*rand(numExperiments,1)));

% use parfor if the parallel pool has been created.
if (isempty(gcp('nocreate')))
    warning('off');
    for epcc_exps=1:numExperiments
        [results{epcc_exps}]=solveOEDeSS...
            (theta_min,theta_max,numSteps,numLoops,LHS_guess(epcc_exps,:),rngSeeds{epcc_exps});
    end
else
    pctRunOnAll warning('off', 'all');
    parfor epcc_exps=1:numExperiments
        [results{epcc_exps}]=solveOEDeSS...
            (theta_min,theta_max,numSteps,numLoops,LHS_guess(epcc_exps,:),rngSeeds{epcc_exps});
    end
end

fullresult.results=results;
fullresult.rngSeeds=rngSeeds;
end