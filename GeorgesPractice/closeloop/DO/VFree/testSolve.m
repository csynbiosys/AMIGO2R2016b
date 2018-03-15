Fcn=@(x,theta,u) [(u(1)-theta-1)^2,(x-tan(u(2)))^2];
x0=tan(1);
u0=[1.5,1.5];
theta=0;
lb=[0,0];
ub=[2,2];
target=[0,0];

[uOp,SSR]=solve(Fcn,x0,u0,theta,lb,ub,target,'ps',500)