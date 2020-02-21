function [std_dev_Cit] = std_calculator(xdata)
% This function takes deterministic data generated from simulations 
% using Stelling model and SObs on AMIGOR2016b. 

% parameters obtained from fitting experimental data submitted by authors
% of the Stelling paper to the function
% std_dev=(a*(median-citrine)^(b))^0.5
a=1.2309; b=1.0693;

% Calculating standard deviation to be applied to deterministic data 
% generated from SObs using Stelling model. 

F = @(x,xdata)(abs(x(1).*xdata).^x(2)).^0.5;
std_dev_Cit=F([a b],(xdata*13.75/492))*492/13.75;

end