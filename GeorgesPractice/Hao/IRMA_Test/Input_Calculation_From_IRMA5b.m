clear;clc;
load K;
load y0glu;

% a temp varible for ploting purpose
x=1:1000;

%% Backward use model
% Control output y from t=1~1000min
% Specified output is r
r(1:300)=0.01; r(301:600)=0.02; r(601:1000)=0.03; 

u=zeros(1,1000);
for i=1:(length(x)-120)
    % What if u is 1
    sol_high = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,1,0,t), [100] ,y0,[x(i) x(i+1)]);
    sol_high_delay = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,1,0,t), [100] ,y0,[x(i) x(i+120)]);
    yout_high=sol_high_delay.y(1,end);
    
    % What if u is 0
    sol_low = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,0,0,t), [100] ,y0,[x(i) x(i+1)]);
    sol_low_delay = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,0,0,t), [100] ,y0,[x(i) x(i+120)]);
    yout_low=sol_low_delay.y(1,end);
    
    % Now choose a u that most closly suit r
    if (    round((abs(yout_high-r(i+120))),4) <=   round((abs(yout_low-r(i+120))),4)   )
        u(i)=1;
        y0=sol_high;
    else
        u(i)=0;
        y0=sol_low;        
    end
end
plot(x,r);
hold on;
%% Forward use model
%u(1:500)=1; u(501:1000)=0; 
%load u;
load y0glu;
yout=zeros(1,1000);
yout(1)=y0(1);
for i=1:(length(x)-1)
    sol = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,u(i),0,t), [100] ,y0,[x(i) x(i+1)]);
    y0=sol;
    yout(i+1)=sol.y(1,end);
end
plot(x,yout);




% % FM code
% tt=linspace(0,1000,20);
% hold on
% u=repmat([1 0],[1 int8(length(tt)/2)+1]);
% for i=1:length(tt)-1
%     fprintf('Da %d a %d \n',tt(i),tt(i+1));
%     sol = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,u(i),0,t), [100] ,y0,[tt(i) tt(i+1)]);
%     out=[sol.x;sol.y]';plot(out(:,1),out(:,2));axis([0 1000 0 0.05])
%     y0=sol;
%     pause(0.05)
% end