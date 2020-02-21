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
y_init=y0(1);

% Initialize Oldfilename for comparison
global OldFilenames_c1 OldFilenames_c2 Fluorescence_Record
OldFilenames_c1={};
OldFilenames_c2={};

% Experiment start
Experiment_Length=1000; % min

% Load reference ouput r
% Control output y from t=1~1000min
% Specified output is r
r(1:300)=0.5; r(301:600)=0.5; r(601:1120)=0.5; 

% PWM
PWM_Time=0:Experiment_Length-1;
PWM_Ref=0.5*sawtooth(2*pi/10*PWM_Time)+0.5;

% Set parameters
Normalize_Factor_Segmentation = 0.098895990036629;
Normalize_Factor_IRMA         = 0.046735005043180;
% Pre allocation for speed
Normalized_Fluo_Out=zeros(1,Experiment_Length);
Error=zeros(1,Experiment_Length);
Controller_Out=zeros(1,Experiment_Length);
u=zeros(1,Experiment_Length);
yhat_out=zeros(1,Experiment_Length+1);
ys=zeros(1,Experiment_Length+1);
yhat_out_delayed=zeros(1,Experiment_Length+146);
yhat_out_delayed(1:146)=y_init;

% PI controller parameters
Kp=0.5; Ki=0.5;

% Initialize the system timer
Last_Loop_Execution=clock;
Elapsed_Time=0;
for Time=1:Experiment_Length
    % Check for New files and segment to give fluorescence output
     ExistNewFile=NewFile_Detect_and_Segment(Auto_Detect_Directory,Mask);
    % Testing purpose
    %Fluorescence_Record=0.098895990036629;
    
    % Normalization 
    Normalized_Fluo_Out(Time)=Fluorescence_Record/Normalize_Factor_Segmentation;
    
    %% Compute error
    Error(Time)=r(Time)-ys(Time);
     
     
     
    %%
    % PI controller
    Integration=cumsum(Error);
    Controller_Out(Time)=Kp*Error(Time)+Ki*Integration(Time);

    %% PWM
    if Controller_Out(Time) > PWM_Ref(Time)
        u(Time)=1;
    else
        u(Time)=0;
    end
    
    
    %% Estimation with Linearized IRMA model
    yhat=ode45(@(t,y) Linearized_IRMA(t,y,u(Time)),[Time Time+1],y_init);
    y_init=yhat.y(end);
    yhat_out(Time+1)=yhat.y(end);
    % Generate a delayed version
    yhat_out_delayed(Time+145)=yhat_out(Time);
    
    y_actual=Normalized_Fluo_Out(Time)*Normalize_Factor_IRMA;
    
    ys(Time+1)=yhat_out(Time+1)+y_actual-yhat_out_delayed(Time);
    
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