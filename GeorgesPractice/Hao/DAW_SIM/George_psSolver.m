function [x,eval,time] = George_psSolver(evaluationFcn,lb,ub,target)
% varargin are optional inputs:
%           target=     varargin(1);
%           guess=      varargin(2);
%           size=       varargin(3);
%           tolerance=  varargin(4) 10^-6 default;
%           MaxTime=    varargin(5);
%
tic;

fcn=@(x) sum((evaluationFcn(x)-target).^2);

options = optimoptions(...
    'particleswarm',...
    'Display','none',...
    'HybridFcn',@fmincon);

rng shuffle;
[x,eval]=particleswarm(fcn,max(length(lb),length(ub)),lb,ub,options);

time=toc;
end