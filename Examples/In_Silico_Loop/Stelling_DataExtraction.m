% Extraction of corrected, normalised experimental data from Stelling
% paper. 

FileName_Data = readtable('all_data_compensated.txt');
FileName_Data_ToUse = FileName_Data(:,1:3); 
FRY11_Citrine_Median = median(FileName_Data_ToUse{strcmp(FileName_Data_ToUse.strain,{'FRY11'}),3});
yRG88_Citrine_Median = median(FileName_Data_ToUse{strcmp(FileName_Data_ToUse.strain,{'yRG88'}),3});


FileName_Data_Tagged = FileName_Data_ToUse(strcmp(FileName_Data_ToUse.strain,{'yRG500'}),2:3);
IPTG = unique(FileName_Data_Tagged{:,1})'; 
Citrine_Median = zeros(1,length(IPTG));
Citrine_q25 = zeros(1,length(IPTG));
Citrine_q75 = zeros(1,length(IPTG));
Citrine_iqr = zeros(1,length(IPTG));

for i=1:length(unique(IPTG))
    c = FileName_Data_Tagged{FileName_Data_Tagged.iptg == IPTG(i),2};
    length(c)
    c_corrected = (c-FRY11_Citrine_Median)/(yRG88_Citrine_Median-FRY11_Citrine_Median);
    Citrine_Median(1,i) = median(c_corrected);
    Citrine_q25(1,i) = quantile(c_corrected, 0.25);
    Citrine_q75(1,i) = quantile(c_corrected, 0.75);
    Citrine_iqr(1,i) = iqr(c_corrected);
end



ScalingF = (yRG88_Citrine_Median-FRY11_Citrine_Median);
%save('Stelling_CorrExperimentalData.mat','IPTG','Citrine_Median','Citrine_iqr','Citrine_q25','Citrine_q75','ScalingF')

%%