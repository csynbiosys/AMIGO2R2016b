% This function read the "Current Position (PNOW)"
% registers, refer to manual.
% Input the axis number. Output is a single decimal value unit 0.01mm.
%
% A correction method was added because sometimes when at home position (0mm),
% Current_Position would be read as 400k+ (some very large number)
% If Current_Position falls out resonable range Current_Position=0

function Current_Position=Read_Current_Position(Axis_Number)

    global Controllers;
    % Read current position from PNOW registers into two decimal values, for
    % given axis number
    Position = read(Controllers,'holdingregs',36865,2,Axis_Number);

    % Convert 2 decimal values into 1 single decimal value
    Current_Position=regs2_to_dec(Position(1),Position(2));
    
    % This was added because sometimes when at home position (0mm),
    % Current_Position would be read as 400k+ (some very large number)
    % If Current_Position falls out resonable range Current_Position=0
    if ((Current_Position>200000) || (Current_Position<0))
        Current_Position=0;                
    end     
end