function minrec=ploteSSResults(resultList,max,remap)
% plot the convergence curves
% minrec gives the lowest cost value in these results

figure();
hold on;

if (remap)
    mapping=@(y) log(-y);
else
    mapping=@(y) y;
end
plot([0,resultList.result{end}.nlpsol.neval(end)],...
    mapping([max,max]),'r-.');
num=length(resultList.result);
minrec=inf;
for index=1:num
    tempResult=resultList.result{index};
    sc=tempResult.nlpsol.neval(end)/tempResult.nlpsol.cpu_time;
    plot(tempResult.nlpsol.conv_curve(:,1)*sc,...
        mapping(tempResult.nlpsol.conv_curve(:,2)));
    if(minrec>tempResult.nlpsol.fbest)
        minrec=tempResult.nlpsol.fbest;
    end
end
minrec
title('eSS Search Results');
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
    saveas(gcf,['remapped eSS.fig']);
else
    saveas(gcf,['raw eSS.fig']);
end

end

