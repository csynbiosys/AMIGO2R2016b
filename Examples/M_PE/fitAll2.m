load('tt.mat');

n=1;%20000;

y=cell2mat(inputs.exps.exp_data);
y=y(6:end,:);
y=y(:)';
t=cell2mat(inputs.exps.t_s')';
t=t(6:end,:);
t=t(:)';
err=cell2mat(inputs.exps.error_data);
err=err(6:end,:);
err=err(:)';
u=repmat(cell2mat(inputs.exps.u),size(inputs.exps.t_s{1},2),1);
u=u(6:end,:);
u=u(:)';

h1 = 1.7106;
km1 = 5.7667;

u=u.^h1;
u=u./(km1^h1+u);

yn=y;%repmat(y,n,1);
errn=err;%repmat(err,n,1);
% pred=@(f) (f(:,1)+f(:,2)*u)+...
%     (f(:,3)+f(:,4)*u).*exp(f(:,5)*t)+...
%     (f(:,6)+f(:,7)*u).*exp(f(:,8)*t)+...
%     (f(:,9)+f(:,10)*u).*exp(f(:,11)*t);
pred=@(f) (f(1)+f(2)*u)+...
    (f(3)+f(4)*u).*exp(f(5)*t)+...
    (f(6)+f(7)*u).*exp(f(8)*t)+...
    (f(9)+f(10)*u).*exp(f(11)*t);
cost=@(f) norm(((yn-pred(f))./errn));%sum(((yn-pred(f))./errn).^2,2);

ming=[-100e4,0,-100e6,-100e4,-0.1,-100e4,-100e4,-0.1,-100e4,-100e4,-0.1];
maxg=[200e4,200e4,200e4,200e4,0,200e4,200e4,0,200e4,200e4,0];
tic;
[result.fit,result.cost] = particleswarm(cost,11,ming,maxg,optimoptions('particleswarm',...
    'display','off',...
    'HybridFcn','fmincon',...
    'SwarmSize',20000,...%n
    'UseParallel',true));
    %'UseVectorized',true));
time=toc;
figure();
plot(t,y,'*',t,pred(result.fit),'-')