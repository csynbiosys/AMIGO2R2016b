m = modbus('serialrtu','COM5','BaudRate',38400);   % Create MODBUS object and connect to device

read(m,'holdingregs',36881,2,1) % Read time after on start from 9011 to 9012

%Register and coil map in the new manual
read(m,'holdingregs',36869,4,1) % Read slave1(axis0) Device status register 1,2 expansion status, system status
read(m,'holdingregs',36869,4,2) % Read slave2(axis1) Device status register 1,2 expansion status, system status

read(m,'holdingregs',3328,3,1) % Read DRG1,2 position number spec

read(m,'coils',259,1,1) % Read servo Status (the manual specifies servo status coil)
write(m,'coils',256,0,1) % Set EMG off
read(m,'coils',256,1,1) % Read EMG stauts


write(m,'holdingregs',3328,0,1)
read(m,'holdingregs',3328,1,1)
write(m,'coils',1063,1,1) % Set control bit On
read(m,'coils',1063,1,1) % Read control bit Status
write(m,'coils',1035,1,1) % Home
% slave address, axis 0 -- 1


%trail
read(m,'coils',1024,1,1)

read(Controllers,'holdingregs',36867,1,1) % Read Alarm Code

write(Controllers,'holdingregs',39173,[0,20000],1);% write speed
Alarm_Reset(1);
Write_Speed(8000,1);
Write_Speed(99999,1);
Write_Target_Position(40000,2)
Write_Target_Position(10000,2)
read(Controllers,'holdingregs',39169,8,1) % Read position specification etc
