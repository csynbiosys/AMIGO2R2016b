recCost=cell(1,5);
recDist=recCost;

t=1;
load('tempresult01.mat');
recCost{t}=[results{1}.cost,results{2}.cost,results{3}.cost];
recDist{t}=[dist2Best(results{1}.designs),...
    dist2Best(results{2}.designs),...
    dist2Best(results{3}.designs)];

t=t+1;
load('tempresult03.mat');
recCost{t}=[results{1}.cost,results{2}.cost,results{3}.cost];
recDist{t}=[dist2Best(results{1}.designs),...
    dist2Best(results{2}.designs),...
    dist2Best(results{3}.designs)];
t=t+1;
load('tempresult05.mat');
recCost{t}=[results{1}.cost,results{2}.cost,results{3}.cost];
recDist{t}=[dist2Best(results{1}.designs),...
    dist2Best(results{2}.designs),...
    dist2Best(results{3}.designs)];
t=t+1;
load('tempresult07.mat');
recCost{t}=[results{1}.cost,results{2}.cost,results{3}.cost];
recDist{t}=[dist2Best(results{1}.designs),...
    dist2Best(results{2}.designs),...
    dist2Best(results{3}.designs)];
t=t+1;
load('tempresult09.mat');
recCost{t}=[results{1}.cost,results{2}.cost,results{3}.cost];
recDist{t}=[dist2Best(results{1}.designs),...
    dist2Best(results{2}.designs),...
    dist2Best(results{3}.designs)];

recCost=cell2mat(recCost);
recDist=cell2mat(recDist);

plot(log(-recCost),recDist,'o');