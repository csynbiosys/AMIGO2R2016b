for ind=1:10
    a{ind}=searchDecay(ind,1000);
    a{ind}=[sort(-a{ind}.fit([2,4,6])),a{ind}.fit(7)];
end
save('resPS.mat','a');