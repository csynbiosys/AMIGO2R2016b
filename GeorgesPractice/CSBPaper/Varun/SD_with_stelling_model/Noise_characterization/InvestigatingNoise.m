clc, clear all, close all; 
% Load Experimental data (corrected and normalised)
Stelling_DataExtraction; 
% figure; 
% plot(Citrine_Median, Citrine_iqr,'*');


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
sum(Citrine_std_comp == Citrine_std_calc);

% %% Applying test for homoscedasticity to the M matrix
% cd 'Homvar'
% %%
% Homvar(M)

%% Plot standard deviation of citrine as a function of the median
figure; 
plot(Citrine_Median,Citrine_std_calc,'*k' );
xlabel('Normalised Citrine (AU)');
ylabel('Citrine Standard deviation (AU)');

%% Fit with a linear model

% p = polyfit(Citrine_Median,Citrine_std_calc,1);
% yfit = polyval(p,Citrine_Median);
% yres = Citrine_std_calc-yfit;
% SS_resid = sum(yres.^2);
% SS_total = (length(Citrine_std_calc)-1)*var(Citrine_std_calc);
% rsq = 1- SS_resid/SS_total
% 
% figure; 
% plot(Citrine_Median,Citrine_std_calc,'*k' ); hold on; 
% plot(Citrine_Median, yfit,'ob'); hold on; 
% plot(min(Citrine_Median):0.1:max(Citrine_Median),polyval(p,min(Citrine_Median):0.1:max(Citrine_Median)),'b');
% xlabel('Normalised Citrine (AU)');
% ylabel('Citrine Standard deviation (AU)');
% legend('Experimental Data','linear fit - rsq 0.9055','linear fit')
% 

% %% Fit using the power of the mean variance
% 
% v = Citrine_vars;
% 
% figure; 
% plot(Citrine_Median,v,'*k' ); hold on; 
% xlabel('Normalised Citrine (AU)');
% ylabel('Citrine variance (AU)');
%%
F = @(x,xdata)(abs(x(1).*xdata).^x(2)).^0.5;
x0 = [0.5,1];
%[x,resnorm, residual, exitflag, output] = lsqcurvefit(F,x0,Citrine_Median, v);
[x,resnorm, residual, exitflag, output] = lsqcurvefit(F,x0,Citrine_Median, Citrine_std_calc);


figure; 
plot(Citrine_Median,Citrine_std_calc,'*k' ); hold on; 
plot(min(Citrine_Median):0.1:max(Citrine_Median),F(x,min(Citrine_Median):0.1:max(Citrine_Median)),'b');
%plot(min(Citrine_Median):0.1:max(Citrine_Median),F([1.2309,2],min(Citrine_Median):0.1:max(Citrine_Median)),'r');

xlabel('Normalised Citrine (AU)');
ylabel('Citrine variance (AU)');

%% 
% Perc = Citrine_std_calc*100./Citrine_Median
