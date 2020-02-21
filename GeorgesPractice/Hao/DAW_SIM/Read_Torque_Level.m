function Status=Read_Torque_Level(Axis)
    global Controllers;
    Status=read(Controllers,'coils',276,1,Axis);  
end