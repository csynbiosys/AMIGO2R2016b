function [x,eval,time] = psSolver(evaluationFcn,par,lb,ub,varargin)
% varargin are optional inputs:
%           target=     varargin(1);
%           guess=      varargin(2);
%           size=       varargin(3);
%           tolerance=  varargin(4);
%           MaxTime=    varargin(5);
%
tic;

l=length(varargin);

if (l>0)
    try
        target= varargin(1);
        guess=  varargin(2);
    catch
    end
end

if (l>1)
    fcn=@(x) sum((evaluationFcn(x,par)-target).^2);
else
    fcn=@(x) sum(evaluationFcn(x,par));
end

options = optimoptions(...
    'particleswarm',...
    'Display','none',...
    'HybridFcn',@fmincon);
if (l>2)
    try
        options.SwarmSize=          varargin(3);
        options.FunctionTolerance=  varargin(4);
        options.MaxTime=            varargin(5);
    catch
    end
end

rng shuffle;
[x,eval]=particleswarm(fcn,max(length(lb),length(ub)),lb,ub,options);

if (l>1)
    eval0=fcn(guess,par);
    if (eval>eval0)
        x=guess;
        eval=eval0;
    end
end

time=toc;
end