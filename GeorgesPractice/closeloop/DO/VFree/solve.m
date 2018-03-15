function [uOp,SSR] = solve(evaluationFcn,x0,u0,theta,lb,ub,target,Method,size)
% method can be: 'multiStart','ms',
%                'particleswarm','ps',
%                'simulannealbnd','sa',
%                'genetic','ga'

rng shuffle;

switch (Method)
    case {'multiStart','ms'}
        problem=createOptimProblem(...
            'fmincon',...
            'x0',u0,...
            'objective',@(u) sum((evaluationFcn(x0,theta,u)-target).^2),...
            'lb',lb,...
            'ub',ub);
        tic;
        [uOp,SSR]=run(MultiStart,problem,size);
        toc;
    case {'particleswarm','ps'}
        fcn=@(u) sum((evaluationFcn(x0,theta,u)-target).^2);
        options = optimoptions(...
            'particleswarm',...
            'Display','none',...
            'HybridFcn',@fmincon);
        tic;
        [uOp,SSR]=particleswarm(fcn,length(u0),lb,ub,options);
        toc;
    case {'simulannealbnd','sa'}
        fcn=@(u) sum((evaluationFcn(x0,theta,u)-target).^2);
        options = optimoptions(...
            'simulannealbnd',...
            'HybridFcn',@fmincon);
        tic;
        [uOp,SSR]=simulannealbnd(fcn,u0,lb,ub,options);
        toc;
    case {'genetic','ga'}
        fcn=@(u) sum((evaluationFcn(x0,theta,u)-target).^2);
        options = optimoptions(...
            'ga',...
            'HybridFcn',@fmincon);
        tic;
        [uOp,SSR]=ga(fcn,length(u0),[],[],[],[],lb,ub,[],options);
        toc;
end

end