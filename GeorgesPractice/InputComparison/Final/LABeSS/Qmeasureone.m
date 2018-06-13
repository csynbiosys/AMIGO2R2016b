criterion=-exp(32.5); %32.5,d<6; 36.75, d<0.7

t=2;
load(['allresuls0',num2str(2*t-1),'.mat']);
tempC=zeros(30,2);
for index=1:30
    temp=4;
    indi=[0;diff(results{temp}.result{index}.nlpsol.conv_curve(:,2)<criterion)];
    if (sum(indi)~=0)
        tempC(index,:)=[1,results{temp}.result{index}.nlpsol.conv_curve(indi==1,1)*...
            results{temp}.result{index}.nlpsol.nfeval/...
            results{temp}.result{index}.nlpsol.cpu_time];
    else
        tempC(index,2)=nan;
    end
end
