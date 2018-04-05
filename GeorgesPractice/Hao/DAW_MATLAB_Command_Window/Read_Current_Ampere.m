% This function read the "Current Ampere (CNOW)"
% registers, refer to manual.
% Input the axis number. Output is a single decimal value unit in mA.

function Current_Ampere=Read_Current_Ampere(Axis_Number)
    global Controllers;
    % Read current position from PNOW registers into two decimal values, for
    % given axis number
    Ampere = read(Controllers,'holdingregs',36877,2,Axis_Number);

    % Convert 2 decimal values into 1 single decimal value
    Current_Ampere=regs2_to_dec(Ampere(1),Ampere(2));
end