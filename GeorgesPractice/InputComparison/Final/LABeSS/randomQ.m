function output =randomQ(CPC,n,k)
% n     number of trials,
% k     sample of each trial

total=size(CPC,1);
output=zeros(n,1);
for index=1:n
    select=randperm(total,k);
    C=CPC(select,2);
    PC=CPC(select,1);
    output(index)=mean(C(PC==1))/(sum(PC)/k);
end
end

