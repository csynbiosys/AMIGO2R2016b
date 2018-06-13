recCost=cell(1,5);
recDes=recCost;

t=1;
load('allresuls01.mat');
recCost{t}=[results{1}.cost,results{2}.cost,results{3}.cost,results{4}.cost];
recDes{t}={results{1}.designs,...
    results{2}.designs,...
    results{3}.designs,...
    results{4}.designs};

t=t+1;
load('allresuls03.mat');
recCost{t}=[results{1}.cost,results{2}.cost,results{3}.cost,results{4}.cost];
recDes{t}={results{1}.designs,...
    results{2}.designs,...
    results{3}.designs,...
    results{4}.designs};
t=t+1;
load('allresuls05.mat');
recCost{t}=[results{1}.cost,results{2}.cost,results{3}.cost,results{4}.cost];
recDes{t}={results{1}.designs,...
    results{2}.designs,...
    results{3}.designs,...
    results{4}.designs};
t=t+1;
load('allresuls07.mat');
recCost{t}=[results{1}.cost,results{2}.cost,results{3}.cost,results{4}.cost];
recDes{t}={results{1}.designs,...
    results{2}.designs,...
    results{3}.designs,...
    results{4}.designs};
t=t+1;
load('allresuls09.mat');
recCost{t}=[results{1}.cost,results{2}.cost,results{3}.cost,results{4}.cost];
recDes{t}={results{1}.designs,...
    results{2}.designs,...
    results{3}.designs,...
    results{4}.designs};
load('allresultseSS.mat');

recCosteSS=cell(30,1);
recDisteSS=recCosteSS;

for inde=1:30
recCosteSS{inde}=allresults.results{inde}.nlpsol.fbest;
recDisteSS{inde}=(allresults.results{inde}.nlpsol.vbest);
end

%recCost=cell2mat(recCost);
%recDist=cell2mat(recDist);
best=recDes{5}{3}(12,:);
sc=30;
map=@(x) log(-x);
figure();
hold on;
scatter3(best(1),best(2),best(3));
all1=cell2mat(recDisteSS);
all2=cell2mat(recCosteSS);
scatter3(all1(:,1),all1(:,2),all1(:,3));
%scatter3(all1(:,1),all1(:,2),all1(:,3),sc*(ones(size(all2))),map(all2),'filled');
for CRi=1:5
    for Fi=1:4
        if (CRi+Fi/10==3.4)
            continue;
        end
        all1=recDes{CRi}{Fi};
        all2=recCost{CRi}(:,Fi);
%        scatter3(all1(:,1),all1(:,2),all1(:,3),sc*(ones(size(all2))),map(all2),'filled');
        scatter3(all1(:,1),all1(:,2),all1(:,3),sc*(ones(size(all2))),(2*CRi-1)/10*ones(size(all2)),'filled');
%        scatter3(all1(:,1),all1(:,2),all1(:,3),sc*(ones(size(all2))),recQ(CRi,Fi)*ones(size(all2)),'filled');

    end
end


%recCost=cell2mat(recCost);
%recDes=cell2mat(recDes);
