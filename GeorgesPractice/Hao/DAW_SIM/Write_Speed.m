% This function write to the "Speed Specification Register (VCMD)"
% refer to manual.
% Input the speed in a single decimal value unit 0.01mm/s. And Axis number

function Write_Speed(Speed,Axis_Number)
    global Controllers;
    % Convert the input speed value to 2 values so as to write in 2 16-bit
    % registers
    [Speed_reg_Hi , Speed_reg_Lo] = dec_to_regs2(Speed);

    % write the data to registers for given axis number
    write(Controllers,'holdingregs',39173,[Speed_reg_Hi,Speed_reg_Lo],Axis_Number);

end