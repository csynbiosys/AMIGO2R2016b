Testing_Axis=1;
global Controllers
Write_Speed(36000,Testing_Axis);

for j=1:5

    Write_Target_Position(0,Testing_Axis);
    while (1)
        % read position compelete status from current axis
        PEND=read(Controllers,'coils',269,1,Testing_Axis);               
        if (PEND==1)
            break;
        end

        pause(0.1); % Pause 0.1s between each cycle
    end  
    PEND=0;
    pause(1);



    Write_Target_Position(80000,Testing_Axis);

    i=1;
    Ampere_Record=0;
    while (1)
        % Read current ampere from actuators
        Ampere=Read_Current_Ampere(Testing_Axis);                
        Ampere_Record(i)=Ampere;
        i=i+1;

        % read position compelete status from current axis
        PEND=read(Controllers,'coils',269,1,Testing_Axis);               
        if (PEND==1)
            break;
        end
    end  

    filename=sprintf('Axis1_0-800_0mlLoad_%d.txt',j);
    dlmwrite(filename,Ampere_Record,'delimiter',' ');
    pause(1);
end
Write_Target_Position(0,Testing_Axis);