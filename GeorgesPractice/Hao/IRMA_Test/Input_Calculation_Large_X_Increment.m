clear;clc;
load K;
load y0glu;

% a temp varible for ploting purpose
x=1:1001;

% Backward use model
% Control output y from t=1~1000min
% Specified output is r
r(1:300)=0.01; r(301:600)=0.02; r(601:1120)=0.03; 

u=zeros(1,1000);

% Pre-define varibles for plot
% Plot_x=[];
% Plot_yout=[];
for i=1:10:(length(x)-120)
    % What if u is 1
    sol_high = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,1,0,t), [100] ,y0,[x(i) x(i+10)]);
    sol_high_delay = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,1,0,t), [100] ,y0,[x(i) x(i+120)]);
    yout_high=sol_high_delay.y(1,end);
    
    % What if u is 0
    sol_low = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,0,0,t), [100] ,y0,[x(i) x(i+10)]);
    sol_low_delay = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,0,0,t), [100] ,y0,[x(i) x(i+120)]);
    yout_low=sol_low_delay.y(1,end);
    
    % Now choose a u that most closly suit r
    if (    round((abs(yout_high-r(i+120))),4) <=   round((abs(yout_low-r(i+120))),4)   )
        u(i:i+10)=1;
        y0=sol_high;
%         New_Plot_x=sol_high.x+i-1;
%         Plot_x=[Plot_x,New_Plot_x];
%         Plot_yout=[Plot_yout,sol_high.y(1,:)];
    else
        u(i:i+10)=0;
        y0=sol_low;
%         New_Plot_x=sol_low.x+i-1;
%         Plot_x=[Plot_x,New_Plot_x];
%         Plot_yout=[Plot_yout,sol_low.y(1,:)];
    end
end
plot(x,r(1:1001));
hold on;

% Forward use model
% Pre-define for forward use
load y0glu;
yout=zeros(1,1001);
yout(1)=y0(1);
for i=1:(length(x)-1)
    sol = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,u(i),0,t), [100] ,y0,[x(i) x(i+1)]);
    y0=sol;
    yout(i+1)=sol.y(1,end);
end
plot(x,yout);
