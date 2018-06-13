tempC=zeros(0);

criterion=-exp(32.5); %32.5,d<6; 36.75, d<0.7
%criterion=32.5;

for index=1:30
    if (criterion<0)
        indi=[0;diff(allresults.results{index}.nlpsol.f<criterion)'];
    else
        indi=[0;diff(dist2Best(allresults.results{index}.nlpsol.bestit)...
            <criterion)];
    end
    if (sum(indi)~=0)
        tempC(end+1)=allresults.results{index}.nlpsol.neval(indi==1);
    end
end
recPC=length(tempC)/30;
recC=mean(tempC);

recQ=recC./recPC;