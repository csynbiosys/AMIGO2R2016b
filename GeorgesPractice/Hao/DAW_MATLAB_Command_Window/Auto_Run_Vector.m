% This function runs the selected axis using the value(position) from 
% the Input_Vector. Input_Vector needs to be a single row vector.
% User can also specify the Time_Gap before the axis moves
% to next value(position).
% Auto_Run_Vector(Input_Vector,Axis_Number,Time_Gap).

function Auto_Run_Vector(Input_Vector,Axis_Number,Time_Gap)
    % Round Input_Vector first
    Input_Vector_Rounded=round(Input_Vector);
    
    % Write Input_Vector NO.i's value to the chosen axis
    for i=1:length(Input_Vector_Rounded)
        Write_Target_Position(Input_Vector_Rounded(i),Axis_Number);
        % Write next value every "Time_Gap" seconds
        pause(Time_Gap);
    end
end