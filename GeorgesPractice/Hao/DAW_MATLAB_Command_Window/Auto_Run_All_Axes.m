% This function runs the selected axis using the value(position) from 
% the Input_Vector. 
% Each row of the Input_Vector correspond to a axis.
% User can also specify the Time_Gap before the axis moves
% to next value(position).
% Auto_Run_All_Axes(Input_Vector,Total_Axis_Number,Time_Gap).

function Auto_Run_All_Axes(Input_Vector,Total_Axis_Number,Time_Gap)
    % Round Input_Vector first
    Input_Vector_Rounded=round(Input_Vector);
    
    % Write Input_Vector NO.i's value
    for i=1:length(Input_Vector_Rounded)      
        for j=1:Total_Axis_Number
            Write_Target_Position(Input_Vector_Rounded(j,i),j);
        end
        % Write next value every "Time_Gap" seconds
        pause(Time_Gap);
    end
end