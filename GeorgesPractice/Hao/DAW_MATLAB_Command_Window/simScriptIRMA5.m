clear;clc;
load K
%load y0gal
load y0glu
u=1;
%y0=repmat(0.01,[1 5]); % y0 for glucose steady state
tt=linspace(0,1000,20);

%%
sol_au = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,u,0,t), 1 ,y0,[0 1000]);


out=[sol_au.x;sol_au.y/0.046735005043180];
plot(out(1,:),out(2,:));
% hold on
% plot(out(:,1),out(:,3));
% hold on
% plot(out(:,1),out(:,4));
% hold on
% plot(out(:,1),out(:,5));
% hold on
% plot(out(:,1),out(:,6));
%axis([0 1000 0 max(out(:,2)*1.1)])
%%

hold on
u=repmat([1 0],[1 int8(length(tt)/2)+1]);
for i=1:length(tt)-1
    fprintf('Da %d a %d \n',tt(i),tt(i+1));
    sol = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,u(i),0,t), [100] ,y0,[tt(i) tt(i+1)]);
    out=[sol.x;sol.y]';plot(out(:,1),out(:,2));axis([0 3000 0 0.05])
    y0=sol;
    pause(0.05)
end
hold off