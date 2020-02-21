Experiment_Length=100;

Controller_Out(1:Experiment_Length)=0.2;
u=zeros(1,Experiment_Length);

% PWM
PWM_Time=0:Experiment_Length-1;
PWM_Ref=0.5*sawtooth(2*pi/10*PWM_Time)+0.5;


for Time=1:Experiment_Length
if Controller_Out(Time) > PWM_Ref(Time)
    u(Time)=1;
else
    u(Time)=0;
end
end
x=1:Experiment_Length;
hold on;
plot(x,Controller_Out)
plot(x,PWM_Ref);
plot(x,u);
hold off;