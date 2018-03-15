% This function write to the "Target Position Specification (PCMD)"
% registers, refer to manual.
% Input the target position in a single decimal value(0-80000) unit 0.01mm, and Axis number actuators will start to move
% immediately after the execution of this funciton. 

function Write_Target_Position(Target_Position,Axis_Number)
    global Controllers;
    % Convert the input target position value to 2 values so as to write in 2 16-bit
    % registers
    [Target_Position_reg_Hi , Target_Position_reg_Lo] = dec_to_regs2(Target_Position);

    % write the data to registers for given axis number
    write(Controllers,'holdingregs',39169,[Target_Position_reg_Hi,Target_Position_reg_Lo],Axis_Number);

end