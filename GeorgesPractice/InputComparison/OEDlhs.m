function fullresult = OEDlhs(numSteps,numExperiments,numLoops)

theta_min = [3.88e-05,0.388,1,4,0.0277,0.1,0.0023,0.0077,1e-03];
theta_max = [0.3,0.495,3,7,0.23,1,0.03,0.0231,0.1];

log_theta_min=log(theta_min);
log_theta_maxmin= log(theta_max)-log_theta_min;

rng shuffle;
LHS=lhsdesign(numExperiments,length(theta_min));

cost=cell(numExperiments,1);
designs=cost;
conv_curve_time=cost;
conv_curve_cost=cost;
rngSeeds=cost;

% use parfor if the parallel pool has been created.
if (isempty(gcp('nocreate')))
    for epcc_exps=1:numExperiments
        [cost{epcc_exps},designs{epcc_exps},...
            conv_curve_time{epcc_exps},conv_curve_cost{epcc_exps},...
            rngSeeds{epcc_exps}]...
            =solveOED(theta_min,theta_max,numSteps,numLoops,...
            exp(log_theta_min+log_theta_maxmin.*LHS(epcc_exps,:)));
    end
else
    parfor epcc_exps=1:numExperiments
       [cost{epcc_exps},designs{epcc_exps},...
            conv_curve_time{epcc_exps},conv_curve_cost{epcc_exps},...
            rngSeeds{epcc_exps}]...
            =solveOED(theta_min,theta_max,numSteps,numLoops,...
            exp(log_theta_min+log_theta_maxmin.*LHS(epcc_exps,:)));
    end
end

fullresult.cost=cost;
fullresult.designs=designs;
fullresult.conv_curve_time=conv_curve_time;
fullresult.conv_curve_cost=conv_curve_cost;
fullresult.rngSeeds=rngSeeds;
end