% This function runs Axis 1 and 2 using the value(position) from 
% a single row vector that is contained in a txt file.
%
% User can also specify the Time_Gap before the axis moves
% to next value(position). Time Gap is specified by the first element of
% the vector.
%
% Axis 1 will follow the trace in the file, Axis 2 will move in opposite 
% direction to Axis 1, symmetrical to the "Center" value.
%
% Auto_Run_File_Opposite_Movement(filename,Center)

function Auto_Run_File_Opposite_Movement(filename,Center)
    % Read the content in the file
    Input_Vector=dlmread(filename);
    
    % The first element of the vector sepecifies the Time Gap between each
    % movement
    Time_Gap=Input_Vector(1);
    
    % The rest element of the Input Vector is going to be the Trace Vector
    Trace_Vector=Input_Vector(2:length(Input_Vector));
    
    % Round Trace_Vector first
    Trace_Vector_Rounded=round(Trace_Vector);
    
    % Run the Trace_Vector
    % Write Trace_Vector NO.i's value to the chosen axis
    for i=1:length(Trace_Vector_Rounded)
        % Write to Axis 1
        Write_Target_Position(Trace_Vector_Rounded(i),1);
        % Write to Axis 2
        Write_Target_Position((Center*2-Trace_Vector_Rounded(i)),2);
        
        % Write next value every "Time_Gap" seconds
        pause(Time_Gap);
    end
end