function [duration,step,values] = exportExperiments(inputs,timeScale,fileName,varargin)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
oldCd=cd;
if (~isempty(varargin))
    folder=varargin{1};
    mkdir(folder);
    cd(folder);
end
if (isfield(inputs,'exps'))
    nofExp=inputs.exps.n_exp;
    duration=cell2mat(inputs.exps.t_f)*timeScale;
    step=zeros(1,nofExp);
    values=cell(1,nofExp);
else
    duration=[];
    step=[];
    values={};
    return;
end

for iexp=1:nofExp
    switch inputs.exps.u_interp{iexp}
        case 'sustained'
            step(iexp)=duration(iexp)*timeScale;
            values{iexp}=inputs.exps.u{iexp};
        case 'step'
            timei=inputs.exps.t_con{iexp}*timeScale;
            gcdi=localGcd(diff(timei));
            step(iexp)=gcdi;
            repeati=diff(timei)/gcdi;
            valuei=[];
            for i=1:length(repeati)
                valuei=cat(2,valuei,...
                    repmat(inputs.exps.u{iexp}(i),1,repeati(i)));
            end
            values{iexp}=valuei;
        case 'pulse-up'
            timei=inputs.exps.t_con{iexp}*timeScale;
            gcdi=localGcd(diff(timei));
            step(iexp)=gcdi;
            repeati=diff(timei(1:3))/gcdi;
            valuei=cat(2,repmat(inputs.exps.u_min{iexp},1,repeati(1)),...
                repmat(inputs.exps.u_max{iexp},1,repeati(2)));
            values{iexp}=repmat(valuei,1,inputs.exps.n_pulses{iexp});
        case 'pulse-down'
            timei=inputs.exps.t_con{iexp}*timeScale;
            gcdi=localGcd(diff(timei));
            step(iexp)=gcdi;
            repeati=diff(timei(1:3))/gcdi;
            valuei=cat(2,repmat(inputs.exps.u_max{iexp},1,repeati(1)),...
                repmat(inputs.exps.u_min{iexp},1,repeati(2)));
            values{iexp}=repmat(valuei,1,inputs.exps.n_pulses{iexp});
        otherwise %linear case by default
            timei1=inputs.exps.t_con{iexp}*timeScale;
            gcdi=localGcd(cat(2,timei1,inputs.exps.t_s{iexp}*timeScale));
            step(iexp)=gcdi;
            timei=0:gcdi:duration(iexp);
            values{iexp}=interp1(timei1,inputs.exps.u{iexp},timei);
    end
    
end
save([fileName,'.mat'],'duration','step','values');
cd(oldCd);
end

function n = localGcd( n )
c=length(n);

while (c>1)
    if (c>2*floor(c/2))
        n=gcd(n(1:(c+1)/2),n((c+1)/2:end));
    else
        n=gcd(n(1:c/2),n((c/2+1):end));
    end
    c=length(n);
end
end