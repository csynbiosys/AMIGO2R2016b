load('lastresulteSS2.mat');


solution=zeros(12,3);
cost=zeros(12,1);
dist=zeros(12,1);
for ind=1:12
    tempResult=result.results{ind};
    solution(ind,:)=tempResult.nlpsol.vbest;
        cost(ind)=tempResult.nlpsol.fbest;
    dist(ind)=dist2Best(solution(ind,:));
    %ne=[repelem(ne,2),2e4];
    %ne=ne(2:end);
    %cost=repelem(cost,2);
   % plot(ne,log(cost));
    
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