% This function runs the selected axis using the value(position) from 
% a single row vector that is contained in a txt file.
%
% User can also specify the Time_Gap before the axis moves
% to next value(position). Time Gap is specified by the first element of
% the vector.
%
% Auto_Run_File(filename,Axis_Number).

function Auto_Run_File(filename,Axis_Number)
    % Read the content in the file
    Input_Vector=dlmread(filename);
    
    % The first element of the vector sepecifies the Time Gap between each
    % movement
    Time_Gap=Input_Vector(1);
    
    % The rest element of the Input Vector is going to be the Trace Vector
    Trace_Vector=Input_Vector(2:length(Input_Vector));
    
    % Run the Trace Vector
    Auto_Run_Vector(Trace_Vector,Axis_Number,Time_Gap);
end