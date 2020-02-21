clear; clc;
% Choose which folder to detect
%Auto_Detect_Directory=uigetdir('','Select a directory to auto detect and segment files.');
load Auto_Detect_Directory

% Apply background mask to mask out chosen sectors for subsequent images
%Mask=Get_Background_Mask(2);
load Mask;

% Parameters for IRMA
load K;
load y0glu;
y_init=0;
y0_for_Sim=y0;

% Initialize Oldfilename for comparison
global OldFilenames_c1 OldFilenames_c2 Fluorescence_Record
OldFilenames_c1={};
OldFilenames_c2={};

% Experiment start
Experiment_Length=400; % min

% Load reference ouput r
% Control output y from t=1~1000min
% Specified output is r
%r(1:300)=0.8; r(301:600)=0.8; r(601:3120)=0.8; 
%r(1:500)=linspace(1,1,500); r(501:1500)=linspace(1,0.2,1000); 
r(1:200)=linspace(0.2,1,200); r(201:400)=linspace(1,0.2,200); 

% PWM
PWM_Time=0:Experiment_Length-1;
PWM_Ref=0.5*sawtooth((2*pi/5)*PWM_Time)+0.5;

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
%ys(1)=y_init;
yhat_out_delayed=zeros(1,Experiment_Length+146);
yhat_out_delayed(1:30)=y0(1);
ysimout=zeros(1,Experiment_Length+1);
ysimout(1)=y0(1);
Fluorescence_Record=y0(1);
LP_out=zeros(1,Experiment_Length+1);
LP_out(1)=0;

% PI controller parameters
Kp=1.2; Ki=0.01;
% Initialize the system timer
Last_Loop_Execution=clock;
Elapsed_Time=0;
for Time=1:Experiment_Length
    % Check for New files and segment to give fluorescence output
     %ExistNewFile=NewFile_Detect_and_Segment(Auto_Detect_Directory,Mask);
    % Testing purpose
    if rem(Time,5)==0
        Fluorescence_Record=ysimout(Time);
    end
    % Normalization 
    Normalized_Fluo_Out(Time)=Fluorescence_Record/Normalize_Factor_Segmentation;
    
    %% Compute error
    Error(Time)=r(Time)-ys(Time);   
     
    %%
    % PI controller
    if Time==1
        Integration(Time)=0;
    else
        % Limited integral anti wind-up
        if     Controller_Out(Time-1)>=1 && ((Error(Time)+Error(Time-1)) > 0)
            Integration(Time)=Integration(Time-1);
        elseif Controller_Out(Time-1)<=0 && ((Error(Time)+Error(Time-1)) < 0)
            Integration(Time)=Integration(Time-1); 
        else
            Integration(Time)=Integration(Time-1)+Ki*(Error(Time)+Error(Time-1))/2;
        end
    end
    Controller_Out(Time)=Kp*Error(Time)+Integration(Time);

    %% PWM
    if Controller_Out(Time) > PWM_Ref(Time)
        u(Time)=1;
    else
        u(Time)=0;
    end
    
    
    %% Estimation with Linearized IRMA model
    
    if u(Time)==1
        yhat=ode45(@(t,y) Linearized_IRMA(t,y,u(Time)),[Time*5 (Time+1)*5],y_init);
        y_init=yhat.y(end);
        yhat_out(Time+1)=yhat.y(end)+0.0092;
    else
        yhat=ode45(@(t,y) Linearized_IRMA_Down(t,y,u(Time)),[Time*5 (Time+1)*5],y_init);
        y_init=yhat.y(end);
        yhat_out(Time+1)=yhat.y(end)+0.0092;        
    end
    
    
    
    % Generate a delayed version
    yhat_out_delayed(Time+29)=yhat_out(Time);
    
    % Compare actual output y with delayed model output
    y_actual=Normalized_Fluo_Out(Time)*Normalize_Factor_IRMA;
    
    % Low pass filter
    %LP_in(Time)=y_actual-yhat_out_delayed(Time);
    LP_out(Time+1)=(19/20)*LP_out(Time)+1/20*(y_actual-yhat_out_delayed(Time));
    
    %ys(Time+1)=(yhat_out(Time+1)+LP_out(Time))/Normalize_Factor_IRMA;
    ys(Time+1)=(yhat_out(Time+1))/Normalize_Factor_IRMA;
    %% Send input to actuators
    %{
    Gal_Axis=1;
    Glu_Axis=2;
    if (u(Time)==1)
        Write_Target_Position(80000,1);
        Write_Target_Position(0,2);
    else
        Write_Target_Position(0,1);
        Write_Target_Position(80000,2);        
    end
    %}
    %% Use IRMA model to simuate
    Forward_Sim = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,u(Time),0,t), 100 ,y0_for_Sim,[Time*5 (Time+1)*5]);
    y0_for_Sim=Forward_Sim;
    ysimout(Time+1)=Forward_Sim.y(1,end);    
    %% Some loop to insure the Experiment "Time" loop runs every 1min
    fprintf('Experiment Time = %d min\n',Time);
    %{
    while(Elapsed_Time<20)
        Current_Loop_Execution=clock;
        Elapsed_Time=etime(Current_Loop_Execution,Last_Loop_Execution);
        pause(2);
        disp('waiting...')
    end
    Last_Loop_Execution=Current_Loop_Execution;
    Elapsed_Time=0;
    %}
end
ysimout_Normalized=ysimout/Normalize_Factor_IRMA;

x=(5:5:2000);
plot(x,r);
hold on;
%plot(ysimout_Normalized);
plot(x,Normalized_Fluo_Out);
%plot(Error);
%plot(Integration)
%plot(Controller_Out);
plot(x,ys(1:400));
%plot(yhat_out/Normalize_Factor_IRMA);
%plot(yhat_out_delayed/Normalize_Factor_IRMA);
%plot(LP_out/Normalize_Factor_IRMA);
%hold off;
axis([0 2000 0 1.2]);