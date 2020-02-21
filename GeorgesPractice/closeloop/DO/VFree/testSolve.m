Fcn=@(x,theta,u) [(cos(u(1)-1)-1)^2,(tan(1)-tan(u(2)))^2];
u0=[1.5,1.5];
lb=[0,0];
ub=[2,2];
target=[0,0];

for i=1:500
[~,re.ps(i),time.ps(i)]=solve(Fcn,x0,u0,theta,lb,ub,target,'ps',500);
[~,re.ms(i),time.ms(i)]=solve(Fcn,x0,u0,theta,lb,ub,target,'ms',500);
[~,re.sa(i),time.sa(i)]=solve(Fcn,x0,u0,theta,lb,ub,target,'sa',500);
[~,re.ga(i),time.ga(i)]=solve(Fcn,x0,u0,theta,lb,ub,target,'ga',500);
end