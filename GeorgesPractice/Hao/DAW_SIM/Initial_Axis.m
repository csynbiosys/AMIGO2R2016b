% Set up and initial the axis. 
% 1 input (total attached axis number)
% Turn on Control bit, then turn on servo, then home all axis.

function Initial_Axis(Axis_Number)
    global Controllers;
    disp('Initialising axis ...'); % display text    

    % Set Control Bit ON (Enable MODBUS control) for all axis
    for i=1:Axis_Number
        Set_Control_Bit(1,i);
    end
    pause(0.2); % Actuators need some time between the rising edges, refer to IAI manual
    
     % Reset Alarms, in case any alarm were present. So that subsequent operations can be performed
    for i=1:Axis_Number
        Alarm_Reset(i);
    end
    pause(0.2); % Actuators need some time between the rising edges, refer to IAI manual
    
    % Turn on the Servo for all axis
    for i=1:Axis_Number
        Servo_ON_OFF(1,i);
        pause(0.2); % Give it a gap between servo turn on
    end
    pause(0.5); % Actuators need some time between the rising edges, refer to IAI manual

    % Home return all axis
    for i=1:Axis_Number
        Home_Return(i); 
    end
    
    disp('Done, waiting for axis to home'); % display text
    % check home return status
    HEND=zeros(1,Axis_Number);
    HEND_Disp=zeros(1,Axis_Number);
    while (1)
        for i=1:Axis_Number
            HEND(i)=read(Controllers,'coils',268,1,i); % read home return status from all axis    
        end

        % HEND_Disp(i)==0, message haven't been displayed. 1 for displayed.
        for i=1:Axis_Number
            if (HEND_Disp(i)==0 && HEND(i)==1)
                fprintf('Axis %d Home compelete!\n',i); % display home complete
                HEND_Disp(i)=1; % set message have been displayed
            end
        end

        % pause 0.3s between each read cycle. Also after the last home
        % complete
        pause(0.3); 
        
        %jump out of the loop once all axis have homed
        if (all(HEND)==1)
            break;
        end
        
    end
    
end