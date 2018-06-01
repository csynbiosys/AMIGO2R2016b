function plotDEResults(resultList,max,F,CR)
%PLOTRESULTS Summary of this function goes here
%   Detailed explanation goes here
figure();
hold on;

mapping=@(y) log(-y);
plot([0,resultList.result{end}.nlpsol.nfeval],...
    mapping([max,max]),'r-.');
num=length(resultList.result);
for index=1:num
    tempResult=resultList.result{index};
    sc=tempResult.nlpsol.nfeval/tempResult.nlpsol.cpu_time;
    plot(tempResult.nlpsol.conv_curve(:,1)*sc,...
        mapping(tempResult.nlpsol.conv_curve(:,2)));
end
title(['DE with F=',num2str(F),', CR=',num2str(CR)]);
xlabel('Number of Evaluations');
ylabel('Cost Value');
set(gca,'FontSize',12);

hold off;

end

