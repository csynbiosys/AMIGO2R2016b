load('allresultseSS.mat');

recCost=cell(1,5);
recDist=recCost;

for inde=1:30
recCost{inde}=allresults.results{inde}.nlpsol.fbest;
recDist{inde}=dist2Best(allresults.results{inde}.nlpsol.vbest)';
end

recCost=cell2mat(recCost);
recDist=cell2mat(recDist);

plot(log(-recCost(:)),recDist(:),'o');