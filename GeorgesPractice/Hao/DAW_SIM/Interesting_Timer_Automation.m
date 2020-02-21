Write_Target_Position(40000,1);

% Wait for controller to be in position
while (1)
    PEND=read(Controllers,'coils',269,1,1); % read position compelete status from all axis 
    
    pause(0.2); 
    
    if (PEND==1)
        break;
    end
    
end
disp('in position !')


for i=1:100
    y=40000+20000*sin(0.5*i);
    x=round(y);
    Write_Target_Position(x,1);
    pause(1)
    Read_Current_Position(1)
end
