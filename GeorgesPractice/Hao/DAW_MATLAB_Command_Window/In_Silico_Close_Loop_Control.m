clear all; clc;
% Parameters for IRMA
load K;
load y0glu;
y0_for_Sim=y0;

% Experiment start
Experiment_Length=1000; % min

% Load reference ouput r
% Control output y from t=1~1000min
% Specified output is r
r(1:300)=0.3; r(301:600)=0.6; r(601:1120)=1; 

% Set parameters
Normalize_Factor_Segmentation = 0.046735005043180;
Normalize_Factor_IRMA         = 0.046735005043180;
% Pre allocation for speed
Normalized_Fluo_Out=zeros(1,Experiment_Length);
Denormalized_Error=zeros(1,121);
u=zeros(1,Experiment_Length);

% For simultion
yout=zeros(1,1000);
yout(1)=y0_for_Sim(1);

% PI controller parameters
Kp=0.5; Ki=1;

for Time=1:Experiment_Length
    fprintf('Experiment Time = %d min\n',Time);
    % Check for New files and segment to give fluorescence output
    % ExistNewFile=NewFile_Detect_and_Segment(Auto_Detect_Directory,Mask);
    % Testing purpose
    Fluorescence_Record=yout(Time);

    %% Normalization & Compute error e
    Normalized_Fluo_Out(Time)=Fluorescence_Record/Normalize_Factor_Segmentation;
    % Predict Denormalized_Error for the next 120min assume Normalized_Fluo_Out
    % will stay the same 
    for Prediction_Time=0:120
        Denormalized_Error(1+Prediction_Time)=(r(Time+Prediction_Time)-Normalized_Fluo_Out(Time))*Normalize_Factor_IRMA;
    end

    %% PI controller
    Controller_Out=Kp*Denormalized_Error+Ki*cumsum(Denormalized_Error);

    %% estimate correct input using IRMA
    
    % What if u is 1
    sol_high = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,1,0,t), 100 ,y0,[Time Time+1]);
    sol_high_delay = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,1,0,t), 100 ,y0,[Time Time+120]);
    yout_high=sol_high_delay.y(1,end);

    % What if u is 0
    sol_low = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,0,0,t), 100 ,y0,[Time Time+1]);
    sol_low_delay = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,0,0,t), 100 ,y0,[Time Time+120]);
    yout_low=sol_low_delay.y(1,end);

    % Now choose a u that most closly suit r
    if (    round((abs(yout_high-Controller_Out(121))),4) <=   round((abs(yout_low-Controller_Out(121))),4)   )
        u(Time)=1;
        y0=sol_high;
    else
        u(Time)=0;
        y0=sol_low;        
    end


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
    sol = dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,u(Time),0,t), 100 ,y0_for_Sim,[Time Time+1]);
    y0_for_Sim=sol;
    yout(Time+1)=sol.y(1,end);
end
x=1:1000;
hold on;
plot(x,r(1:1000));
plot(x,Normalized_Fluo_Out);    
plot(x,Controller_Out_Record);