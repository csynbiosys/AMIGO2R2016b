function [solt,Normalized_Fluo_Out,r]=Platform_Test()
% Parameters for IRMA
load K;
load y0gal;
y_init=y0;
y0_for_Sim=y0;
period=100;
PWM_period=10;
% Experiment start
Experiment_Length=2000; % min
warning off;
% Load reference ouput r
% Control output y from t=1~1000min
% Specified output is r
%r(1:300)=1; r(301:600)=0.8; r(601:3120)=0.8;
%r(1:500)=linspace(1,1,500); r(501:1500)=linspace(1,0.2,1000);
r(1:1000)=linspace(0.2,1,1000); r(1001:2000)=linspace(1,0.2,1000);

% PWM
PWM_Time=0:Experiment_Length-1;
PWM_Ref=0.5*sawtooth(2*pi/10*PWM_Time)+0.5;

% Set parameters
Normalize_Factor_Segmentation = 0.046735005043180;
Normalize_Factor_IRMA         = 0.046735005043180;
% Pre allocation for speed
Normalized_Fluo_Out=zeros(1,Experiment_Length);
Error=zeros(1,Experiment_Length);
Integration=zeros(1,Experiment_Length);
Controller_Out=zeros(1,Experiment_Length);
u=zeros(1,Experiment_Length);
yhat_out=zeros(1,Experiment_Length+1);
ys=zeros(1,Experiment_Length+1);
ys(1)=y0(1);
%ys(1)=y_init;
yhat_out_delayed=zeros(1,Experiment_Length+146);
yhat_out_delayed(1:101)=y0(1);
ysimout=zeros(1,Experiment_Length+1);
ysimout(1)=y0(1);
Fluorescence_Record=y0(1);
LP_out=zeros(1,Experiment_Length+1);
LP_out(1)=0;

% PI controller parameters
Kp=8.2; Ki=0.1028;
% Initialize the system timer
Last_Loop_Execution=clock;
Elapsed_Time=0;

solt=cell(Experiment_Length/period,1);

for Time=1:(Experiment_Length/period)
    
    t=((Time-1)*period):(Time*period);
    umax=ones(1,period/PWM_period);
    solt{Time}=psSolver(@(u) evalfcn(K,u,y0_for_Sim,t,PWM_period),...
        zeros(size(umax)),umax,r(t+1)*Normalize_Factor_Segmentation);
    
    y0_for_Sim=dde23(@(tt,y,Z) IRMA5d(tt,y,Z,K,solt{Time},period,t(1)), 100 ,y0_for_Sim,[t(1),t(end)]);
    yallpara=deval(y0_for_Sim,t);
    Normalized_Fluo_Out(t+1)=yallpara(1,:)/Normalize_Factor_IRMA;
    
    
    tmin=t(1);
    for ttemp=t
        if (ttemp==t(end))
            u(ttemp+1)=(solt{Time}(end)==1);
        else
            u(ttemp+1)=(rem(ttemp-tmin,1)<=...
                solt{Time}(floor((ttemp-tmin)/period)+1));
        end
    end
    
    
    
    
end

plot(r);
hold on;
%plot(ysimout_Normalized);
plot(0:Experiment_Length,Normalized_Fluo_Out);
%plot(Error);
%plot(Integration)
%plot(Controller_Out);
%plot(ys);
%plot(yhat_out/Normalize_Factor_IRMA);
%plot(yhat_out_delayed/Normalize_Factor_IRMA);
%plot(LP_out/Normalize_Factor_IRMA);
%hold off;
axis([0 2000 0 1.2]);
end

function value=evalfcn(K,u,y0,t,period)
sol=dde23(@(tt,y,Z) IRMA5d(tt,y,Z,K,u,period,t(1)), 100 ,y0,[t(1),t(end)]);
value=deval(sol,t);
value=value(1,:);
end