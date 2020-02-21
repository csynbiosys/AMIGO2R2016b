% This function write to the Alarm Reset coil, refer to manual.
% 1 input (Axis)
% This function writes to this coil, 0, 1, 0 sequentially, to create an
% rising edge that reset the alarm.

function Alarm_Reset(Axis)
    global Controllers;
    % Alarm Reset for given axis
    write(Controllers,'coils',1032,0,Axis); 
    write(Controllers,'coils',1032,1,Axis);
    write(Controllers,'coils',1032,0,Axis);
end