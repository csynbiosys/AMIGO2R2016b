function [duration,step,values] = exportExperiments(inputs,timeScale,fileName,varargin)
%experiment design - actuation module interface.
%export the experiment designs in "inputs" variable to the actuation model
%by generating a series of .txt files with the commands in the folder (one
%file for one experiment).
%
%the given parameters can be (inputs,timeScale,fileName,foldername)
% timeScale  -- in sedonds,
% fileName   -- if the name is XXX, the name of the .txt file is XXX.txt if
%               there is only one experiment, and XXX-1.txt, XXX-2.txt,...
%               if there are multiple experiments.
% foldername -- if not given, the .txt files would be generated in the 
%               current folder.
%
% output     -- the output are duration(array), step(array), and
%               values(cells).


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
            difftimei=diff(inputs.exps.t_con{iexp}*timeScale);
            step(iexp)=localGcd(difftimei);
            repeati=difftimei/step(iexp);
            values{iexp}=[];
            for i=1:length(repeati)
                values{iexp}=cat(2,values{iexp},repmat(inputs.exps.u{iexp}(i),1,repeati(i)));
            end
        case 'pulse-up'
            timei=inputs.exps.t_con{iexp}*timeScale;
            step(iexp)=localGcd(diff(timei));
            repeati=diff(timei(1:3))/step(iexp);
            values{iexp}=cat(2,repmat(inputs.exps.u_min{iexp},1,repeati(1)),...
                repmat(inputs.exps.u_max{iexp},1,repeati(2)));
            values{iexp}=repmat(values{iexp},1,inputs.exps.n_pulses{iexp});
        case 'pulse-down'
            timei=inputs.exps.t_con{iexp}*timeScale;
            step(iexp)=localGcd(diff(timei));
            repeati=diff(timei(1:3))/step(iexp);
            values{iexp}=cat(2,repmat(inputs.exps.u_max{iexp},1,repeati(1)),...
                repmat(inputs.exps.u_min{iexp},1,repeati(2)));
            values{iexp}=repmat(values{iexp},1,inputs.exps.n_pulses{iexp});
        otherwise %linear case by default
            timei1=inputs.exps.t_con{iexp}*timeScale;
            step(iexp)=min(d/100,localGcd(cat(2,timei1,inputs.exps.t_s{iexp}*timeScale))));
            values{iexp}=interp1(timei1,inputs.exps.u{iexp},0:step(iexp):d);
    end
    command=[step(iexp),values{iexp}];
    if (nofExp==1)
        save([fileName,'.txt'],'command','-ascii');
    else
        save([fileName,'-',num2str(iexp),'.txt'],'command','-ascii');
    end
end
%save([fileName,'.mat'],'duration','step','values');
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