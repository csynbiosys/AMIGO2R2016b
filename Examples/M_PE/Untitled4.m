for ind=4:10
    a{ind}=searchDecay(ind,5000);
    a{ind}=sort(a{ind}.fit([2,4,6]));
end