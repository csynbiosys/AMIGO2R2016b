function result = searchDecay(index,n)
load('tt.mat');
y=inputs.exps.exp_data{1,index};
t=inputs.exps.t_s{1, index};
err=inputs.exps.error_data{1,index};

y=y(9:end);
t=t(9:end);
err=err(9:end);

pred=@(f) f(1)*exp(f(2)*t)+f(3)*exp(f(4)*t)+f(5)*exp(f(6)*t)+f(7);
cost=@(f) norm((y'-pred(f))./err);

ming=[-100e4,-0.1,-100e4,-0.1,-100e4,-0.1,0];
maxg=[200e4,0,200e4,0,200e4,0,100e4];
di=maxg-ming;

fit=cell(n,1);
res=ones(n,1);  

option = optimoptions('fmincon',...
    'display','off');

% parfor test=1:n
%     [fit{test},res(test)] = fmincon(cost,7,min,max,option);
% end
% 
% [result.cost,ind]=min(res);
% result.fit=fit{ind};

[result.fit,result.cost] = particleswarm(cost,7,ming,maxg,optimoptions('particleswarm',...
    'display','off',...
    'HybridFcn','fmincon',...
    'SwarmSize',n,...
    'UseParallel',true));


figure();
plot(t,y,'*',t,pred(result.fit),'-');
savefig(['fit_plot_expwitherrPS',num2str(index),'.fig']);
end