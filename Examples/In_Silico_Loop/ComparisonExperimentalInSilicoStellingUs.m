clc, clear all, close all; 
% Load Experimental data (corrected and normalised)
Stelling_DataExtraction; 
figure; 
errorbar(IPTG, Citrine_Median,Citrine_iqr/2,'ob'); hold on;

% Import IPTG and Citrine SS data obtained in simulations using the
% best parameter values fitted on the OL circuit (see Table S6 in the stelling paper)
% The data have been obtained running run_in_silico_experiment.m using
% PLac_load_model
T1 = readtable('Stelling_Fig2OLPar-1.dat'); 
plot(T1{:,1},T1{:,3},'b'); hold on; 

% Import IPTG and Citrine SS data obtained in simulations using the
% best parameter values fitted on the OL circuit (see Table S6 in the stelling paper)
% The data have been obtained running run_in_silico_experiment.m using
% PLac_load_model
load('DoseResponse_CrossValidationEqual.mat');
plot(T2{:,1},T2{:,3},'r'); hold on; 
xlim([1e-2,1e5])
title('Fitting using the Stelling Model')
xlabel('IPTG \muM')
ylabel('Citrine (AU)')
%legend('Experimental Data', 'Fitting (OL+CL)','Fitting (OL)','Analytical SS (Stelling)','Analytical SS (OL)')
set(gca,'XScale','log')

%% Adding steady state analytical solutions
% OL optimised parameters Stelling
Theta = [0.005,2.79e-6,7.75e-5,0.012,2.7e-4,0.0049,0.929,5.4e-4,1.5, 2800, 54.93,0.049,1e-10,27.18];
ss_24_Stel = zeros(1,length(IPTG));
for i=1:length(IPTG)
    rp = PLac_Compute_SteadyState(Theta,IPTG(i));
    ss_24_Stel(1,i) = rp(1,end); 
end

% OL optimised parameters crossValidation 
Theta = [0.0325733538256257 5.46705566202220e-10 7.75000000000000e-05 0.000654809767818206 0.00490818296698615 0.0307309277630367 0.840871329334178 0.00132658139648501 9593.67726098644 2800 106.300183525726 0.0967056122710768 0.0432774760580804 13.7502726488295]; % results of the fitting performed using CrossValidation equal
ss_24_Cross = [746.132711035860,753.048801963460,867.498871404476,1324.10120300904,4298.29089134863,8866.84652501873,12834.4625743124,16349.1129369728,16746.9460914524,17050.6913640823,17087.6469046077,17120.7058583226];
% ss_24_Cross = zeros(1,length(IPTG));
% for i=1:length(IPTG)
%     rp = PLac_Compute_SteadyState(Theta,IPTG(i)); 
%     ss_24_Cross(1,i) = rp(1,end); 
% end
hold on;
plot(IPTG,ss_24_Stel/492,'*b'); hold on;
plot(IPTG,ss_24_Cross/492,'*r'); hold on;
xlim([1e-2,1e5])
%%
title('Fitting using the Stelling Model')
xlabel('IPTG \muM')
ylabel('Citrine (AU)')
legend('Experimental Data', 'Fitting (OL+CL)','Fitting (OL)','Analytical SS (Stelling)','Analytical SS (OL)')
set(gca,'XScale','log')