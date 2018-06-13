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


matr=[solution,cost,dist];
% figure();
% load('lastresult3.mat');
% for ind=1:4
%     ne=result.results{ind}.nlpsol.neval;
%     cost=result.results{ind}.nlpsol.conv_curve(:,2);
%     %ne=[repelem(ne,2),2e4];
%    % ne=ne(2:end);
%     %cost=repelem(cost,2);
%     plot(ne,log(cost));
%     hold on;
% end
% load('lastresult4.mat');
% for ind=1:4
%     ne=result.results{ind}.nlpsol.neval;
%     cost=result.results{ind}.nlpsol.conv_curve(:,2);
%    % ne=[repelem(ne,2),2e4];
%    % ne=ne(2:end);
%   %  cost=repelem(cost,2);
%     plot(ne,log(cost));
%     hold on;
% end
% load('lastresult5.mat');
% for ind=1:4
%     ne=result.results{ind}.nlpsol.neval;
%     cost=result.results{ind}.nlpsol.conv_curve(:,2);
%   %  ne=[repelem(ne,2),2e4];
%   %  ne=ne(2:end);
%    % cost=repelem(cost,2);
%     plot(ne,log(cost));
%     hold on;
% end