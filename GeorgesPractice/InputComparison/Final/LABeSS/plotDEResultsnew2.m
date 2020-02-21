function plotDEResultsnew(resultList,max,F,CR,S,remap)
%PLOTRESULTS Summary of this function goes here
%   Detailed explanation goes here
figure();
hold on;

if (remap)
    mapping=@(y) log(-y);
else
    mapping=@(y) y;
end
plot([0,resultList.result{end}.nlpsol.nfeval],...
    mapping([max,max]),'r-.');
num=length(resultList.result);
minrec=inf;
for index=1:num
    tempResult=resultList.result{index};
    sc=tempResult.nlpsol.nfeval/tempResult.nlpsol.cpu_time;
    plot(tempResult.nlpsol.conv_curve(:,1)*sc,...
        mapping(tempResult.nlpsol.conv_curve(:,2)));
    if(minrec>min(tempResult.nlpsol.conv_curve(:,2)))
        minrec=min(tempResult.nlpsol.conv_curve(:,2));
    end
end
minrec
title(['DE with F=',num2str(F),', CR=',num2str(CR),', S=',num2str(S)]);
xlabel('Number of Evaluations');

if (remap)
    ylabel('Cost Value (negatively logged)');
    axis([0,15e4,55,70]);
else
    ylabel('Cost Value');
    axis([0,15e4,-4e29,0]);
end

set(gca,'FontSize',12);

hold off;
if (remap)
    saveas(gcf,['remapped DE with F=',num2str(F),', CR=',num2str(CR),'.fig']);
else
    saveas(gcf,['raw DE with F=',num2str(F),', CR=',num2str(CR),'.fig']);
end

end

