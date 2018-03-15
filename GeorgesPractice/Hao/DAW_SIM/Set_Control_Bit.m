% This function write to the Control bit coil, refer to manual.
% 2 input, (ON/OFF,Axis)
% ON/OFF: 1 for MODBUS Control Enable, 0 for disable.

function Set_Control_Bit(a,Axis)
    global Controllers;
    write(Controllers,'coils',1064,a,Axis); % Set control bit for given axis number
end