% This function write to the Servo ON/Off coil, refer to manual.
% 2 inputs (ON_OFF,Axis)
% ON_OFF: 1 for Servo On, 0 for Off.

function Servo_ON_OFF(a,Axis)
    global Controllers;
    write(Controllers,'coils',1028,a,Axis); % Set servo On/off for given axis
end