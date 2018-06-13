recC=cell(1,5);
recPC=cell(1,5);
tempC={zeros(0);zeros(0);zeros(0);zeros(0)};

criterion=-exp(32.5); %32.5,d<6; 36.75, d<0.7

for t=1:5
load(['allresuls0',num2str(2*t-1),'.mat']);
tempC={zeros(0);zeros(0);zeros(0);zeros(0)};
for index=1:30
    temp=1;
    indi=[0;diff(results{temp}.result{index}.nlpsol.conv_curve(:,2)<criterion)];
    if (sum(indi)~=0)
        tempC{temp}(end+1)=results{temp}.result{index}.nlpsol.conv_curve(indi==1,1)*...
            results{temp}.result{index}.nlpsol.nfeval/...
            results{temp}.result{index}.nlpsol.cpu_time;
    end
    
    temp=2;
    indi=[0;diff(results{temp}.result{index}.nlpsol.conv_curve(:,2)<criterion)];
    if (sum(indi)~=0)
        tempC{temp}(end+1)=results{temp}.result{index}.nlpsol.conv_curve(indi==1,1)*...
            results{temp}.result{index}.nlpsol.nfeval/...
            results{temp}.result{index}.nlpsol.cpu_time;
    end
    
    temp=3;
    indi=[0;diff(results{temp}.result{index}.nlpsol.conv_curve(:,2)<criterion)];
    if (sum(indi)~=0)
        tempC{temp}(end+1)=results{temp}.result{index}.nlpsol.conv_curve(indi==1,1)*...
            results{temp}.result{index}.nlpsol.nfeval/...
            results{temp}.result{index}.nlpsol.cpu_time;
    end
   
    temp=4;
    indi=[0;diff(results{temp}.result{index}.nlpsol.conv_curve(:,2)<criterion)];
    if (sum(indi)~=0)
        tempC{temp}(end+1)=results{temp}.result{index}.nlpsol.conv_curve(indi==1,1)*...
            results{temp}.result{index}.nlpsol.nfeval/...
            results{temp}.result{index}.nlpsol.cpu_time;
    end
end
recPC{t}=([length(tempC{1}),length(tempC{2}),length(tempC{3}),length(tempC{4})])/30;
recC{t}=[mean(tempC{1}),mean(tempC{2}),mean(tempC{3}),mean(tempC{4})];
end

recPC=cell2mat(recPC');
recC=cell2mat(recC');
recQ=recC./recPC;