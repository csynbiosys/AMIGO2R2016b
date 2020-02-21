load('allresultseSS.mat');


solution=zeros(30,3);
cost=zeros(30,1);
dist=zeros(30,1);
figure();
for ind=1:30
    this=allresults.results{ind}.nlpsol;
    hold on;
     plot(this.neval,this.f);
end
title('eSS Trials');
xlabel('Number of Evaluations');
ylabel('Cost Value');

set(gca,'FontSize',12);

hold off;
