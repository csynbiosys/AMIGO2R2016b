function result = searchDecay(index,n)
load('tt.mat');
y=inputs.exps.exp_data{1,index};
t=inputs.exps.t_s{1, index};

pred=@(f) f(1)*exp(f(2)*t)+f(3)*exp(f(4)*t)+f(5)*exp(f(6)*t)+f(7);
cost=@(f) norm(y'-pred(f));

ming=[-100e4,-0.1,-100e4,-0.1,-100e4,-0.1,0];
maxg=[200e4,0,200e4,0,200e4,0,100e4];
di=maxg-ming;

fit=cell(n,1);
res=ones(n,1);

options = optimoptions('fmincon','Display','off');

parfor test=1:n
    cprintf(['  ',num2str(test)]);
    [fit{test},res(test)] = fmincon(cost,rand(1,7).*di+ming,[],[],[],[],ming,maxg,[],options);
end

[result.cost,ind]=min(res);
result.fit=fit{ind};

figure();
plot(t,y,'*',t,pred(result.fit),'-');
savefig(['fit_plot_exp',num2str(index),'.fig']);
end