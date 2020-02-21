% This function write to the Home Return coil, refer to manual.
% 1 input (Axis)
% This function writes to this coil, 0, 1, 0 sequentially, to create an
% rising edge that homes the axis.

function Home_Return(Axis)
    global Controllers;
    % Home given axis
    write(Controllers,'coils',1036,0,Axis); 
    write(Controllers,'coils',1036,1,Axis);
    write(Controllers,'coils',1036,0,Axis);
end