clc, clear all, close all; 
% Load Experimental data (corrected and normalised)
Stelling_DataExtraction; 
figure; 
errorbar(IPTG, Citrine_Median,Citrine_iqr/2,'ob');

% Import IPTG and Citrine SS data obtained in simulations using the
% best parameter values fitted on the OL circuit (see Table S6 in the stelling paper)
% The data have been obtained running run_in_silico_experiment.m using
% PLac_load_model
T1 = readtable('Stelling_Fig2OLPar-1.dat'); 
plot(T1{:,1},T1{:,3},'r'); hold on; 

% Import IPTG and Citrine SS data obtained in simulations using the
% best parameter values fitted on the OL circuit (Best value cross validation)
% The data have been obtained running run_in_silico_experiment.m using
% PLac_load_model
%% Adding steady state analytical solutions
% OL optimised parameters
Theta = [0.005,2.79e-6,7.75e-5,0.012,2.7e-4,0.0049,0.929,5.4e-4,1.5, 2800, 54.93,0.049,1e-10,27.18];
ss_24 = zeros(1,length(IPTG));
for i=1:length(IPTG)
    rp = PLacl_SteadyState(Theta,IPTG(i));
    ss_24(1,i) = rp(1,2); 
end

% OL+CL optimised parameters   
Theta = [0.005,2.79e-6,7.75e-5,0.012,2.7e-4,0.0049,0.049,5.4e-4,3.57, 2800, 5,0.049,1e-10,27.18];
ss_24_Stel = zeros(1,length(IPTG));
for i=1:length(IPTG)
    rp = PLacl_SteadyState(Theta,IPTG(i));
    ss_24_Stel(1,i) = rp(1,2); 
end

plot(IPTG,ss_24_Stel,'*k'); hold on;
plot(IPTG,ss_24,'*r'); hold on;
xlim([1e-2,1e5])
title('Fitting using the Stelling Model')
xlabel('IPTG \muM')
ylabel('Citrine (AU)')
legend('Experimental Data', 'Fitting (OL+CL)','Fitting (OL)','Analytical SS (Stelling)','Analytical SS (OL)')
set(gca,'XScale','log')