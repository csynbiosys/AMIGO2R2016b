% This function write to the "Acceleration/Deceleration Specification Register (ACMD)"
% refer to manual.
% Input the speed in a single decimal value unit 0.01G. And Axis number.

function Write_Acc(Acceleration,Axis_Number)
    global Controllers;

    % write the data to registers for given axis number
    write(Controllers,'holdingregs',39175,Acceleration,Axis_Number);

end