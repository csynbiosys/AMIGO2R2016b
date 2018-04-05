clear;
clear global;
clc;

% Parameters
COM_Port = 'COM5'; % Find information in "Device Manager"
Axis_Number = 2; % Number of Axis attached.
Baudrate = 38400; % Set it to the value the actuators is using

% Main function

disp('Establishing MODBUS connection ...'); % display text
% Create MODBUS object and connect to it
global Controllers;
Controllers = modbus('serialrtu',COM_Port,'BaudRate',Baudrate);
disp('Done'); % display text

% Initial all axis
Initial_Axis(Axis_Number);

% Preset speed and acceleration
Write_Speed(12000,1);
Write_Speed(12000,2);
% Write_Acc(30,1);
% Write_Acc(30,2);

% Start normal operation
disp('Ready');
