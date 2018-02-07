clc, clear all, close all; 
% Load Experimental data (corrected and normalised)
Stelling_DataExtraction; 
figure; 
plot(Citrine_Median, Citrine_iqr,'*');

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
Citrine_vars = zeros(1,length(IPTG));
N_samples = zeros(1,length(IPTG));
M = zeros(1,2);
for i=1:length(unique(IPTG))
    c = FileName_Data_Tagged{FileName_Data_Tagged.iptg == IPTG(i),2};
    c_corrected = (c-FRY11_Citrine_Median)/(yRG88_Citrine_Median-FRY11_Citrine_Median);
    N_samples(1,i) = length(c_corrected);
    Citrine_vars(1,i) = var(c_corrected);
    Citrine_Median(1,i) = median(c_corrected);
    Citrine_q25(1,i) = quantile(c_corrected, 0.25);
    Citrine_q75(1,i) = quantile(c_corrected, 0.75);
    Citrine_iqr(1,i) = iqr(c_corrected);
    Mp = [c_corrected i*ones(size(c_corrected))];
    M = [M; Mp];
end

%% Consideration about standard deviations computation
Citrine_std_comp = Citrine_iqr/(2*0.6745);
Citrine_std_calc = sqrt(Citrine_vars);
sum(Citrine_std_comp == Citrine_std_calc)

%% Applying test for homoscedasticity to the M matrix
cd 'Homvar'
%%
Homvar(M)
