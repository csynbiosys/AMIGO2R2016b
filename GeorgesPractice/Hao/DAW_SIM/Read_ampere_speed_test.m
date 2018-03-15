for i=1:20
    % Read current ampere from actuators
    Ampere=Read_Current_Ampere(1);                
    Ampere_test(i)=Ampere;
    i=i+1;    
end