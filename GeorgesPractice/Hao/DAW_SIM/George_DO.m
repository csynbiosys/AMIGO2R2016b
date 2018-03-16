function [yout,u,r]=George_DO()

% Parameters for IRMA
load K;
load y0gal;
y0_for_Sim=y0;

% Experiment start
Experiment_Length=1000; % min

% Load reference ouput r
% Control output y from t=1~1000min
% Specified output is r
r(1:361)=0.8; r(362:721)=0.5; r(722:1120)=0.6; 

% Set parameters
Normalize_Factor_Segmentation = 0.046735005043180;
Normalize_Factor_IRMA         = 0.046735005043180;
% Pre allocation for speed
Normalized_Fluo_Out=zeros(1,Experiment_Length);
Denormalized_Error=zeros(1,Experiment_Length+120);
u=zeros(1,Experiment_Length);
Controller_Out_Record=zeros(1,Experiment_Length+120);

% For simultion
yout=zeros(1,1000);
yout(1)=y0_for_Sim(1);

% PI controller parameters
%Kp=0.1; Ki=0;

for Time=1:Experiment_Length
    disp(Time);
    % Check for New files and segment to give fluorescence output
    % ExistNewFile=NewFile_Detect_and_Segment(Auto_Detect_Directory,Mask);
    % Testing purpose

    %% estimate correct input using IRMA
    
    u(Time)=George_psSolver(@(u) evalfcn(K,u,y0_for_Sim,Time),0,1,[r(Time+2),r(Time+2)]);


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
    y0_for_Sim=dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,u(Time),0,t), 100 ,y0_for_Sim,[Time Time+1]);
    yout(Time+1)=y0_for_Sim.y(1,end);
end
x=1:1120;
figure;
plot(x,r);
hold on;
% plot(x(1:1000),yout); 
% plot(x(1:1000),u);
hold off;
end

function value=evalfcn(K,u,y0,Time)
sol=dde23(@(t,sol,Z) IRMA5b(t,sol,Z,K,u,0,t), 100 ,y0,[Time Time+2]);
value=[sol.y(1,end),sol.y(1,end-1)];
end
