%Comparison Response Time: Step up vs Step down 
clc,clear all,close all;
cd 'C:\Users\lbandier\Documents\AMIGO2R2016b\Examples\In_Silico_Loop\Results\v4\StepDown_DatFiles'

StepDown = readtable('Amidala_Data_StepDown.dat');

SD_SimValue = StepDown{:,'Sim_Value'};
SD_IntResponseTime =  StepDown{:,'Interp_ResponseTime'};


cd 'C:\Users\lbandier\Documents\AMIGO2R2016b\Examples\In_Silico_Loop\Results\v3\StepUp_DatFiles'

StepUp = readtable('Amidala_Data.dat');

SU_SimValue = StepUp{:,'Sim_Value'};
SU_IntResponseTime =  StepUp{:,'Interp_ResponseTime'};

ParName = {'d1','d2','Kf','Kb'};
for i=1:length(ParName)
    Par = ParName{i};
    % Extract data for Step Down
    SD_Params = StepDown{:,'ParamName'};
    SD_Par = strfind(SD_Params,Par);
    ind_SD_Par = cellfun(@isempty,SD_Par);
    SD_Par(ind_SD_Par) = {0};
    ind_SD_vect = cell2mat(SD_Par);
    
    SD_SimValue(ind_SD_vect==1);
    SD_IntResponseTime(ind_SD_vect==1);
    
    % Extract data for Step Up
    SU_Params = StepUp{:,'ParamName'};
    SU_Par = strfind(SU_Params,Par);
    ind_SU_Par = cellfun(@isempty,SU_Par);
    SU_Par(ind_SU_Par) = {0};
    ind_SU_vect = cell2mat(SU_Par);
    
    SU_SimValue(ind_SU_vect==1);
    SU_IntResponseTime(ind_SU_vect==1);    
    

    
    SimValue_int_U = linspace(min(SU_SimValue(ind_SU_vect==1)),max(SU_SimValue(ind_SU_vect==1)),2000); % time for interpolation
    SimValue_int_D = linspace(min(SD_SimValue(ind_SD_vect==1)),max(SD_SimValue(ind_SD_vect==1)),2000); % time for interpolation

    SU_RT = spline(SU_SimValue(ind_SU_vect==1),SU_IntResponseTime(ind_SU_vect==1),SimValue_int_U); % interpolated observables
    SD_RT = spline(SD_SimValue(ind_SD_vect==1),SD_IntResponseTime(ind_SD_vect==1),SimValue_int_D); % interpolated observables

    figure(i)
    plot(SimValue_int_D,SD_RT,'b',SimValue_int_U,SU_RT,'k'); hold on;
    legend('Step Down','StepUP')
    plot(SD_SimValue(ind_SD_vect==1),SD_IntResponseTime(ind_SD_vect==1),'ob',SU_SimValue(ind_SU_vect==1), SU_IntResponseTime(ind_SU_vect==1),'ok'); hold on;
    xlabel('Simulated Value')
    ylabel('Response Time [min]')
    title(strcat('Response time simmetry: ',Par))

end
    