
clear; clc;
sys=tf(0.0467,[65,1]);
%stepplot(sys);

sys_Delay=tf(0.0467,[669,1],'InputDelay',145.5);
hold on;
opt = stepDataOptions('InputOffset',0.2,'StepAmplitude',0.8);
stepplot(sys_Delay,opt);
axis([0 2000 0 0.05]);
%%
sol=ode45(@(t,y) Linearized_IRMA_Down(t,y,0),[0 2000],0.0467);
plot(sol.x,sol.y);
