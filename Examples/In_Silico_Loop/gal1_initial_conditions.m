function [ res ] = gal1_initial_conditions( theta )
%GAL1_INITIAL_CONDITIONS Summary of this function goes here
%   Detailed explanation goes here

Vm1 = theta(1);
Km1 = theta(2);
d1 = theta(3);

gal = 2;

gal1_mrna = (Vm1*(gal/(Km1+gal)))/d1;

res = [gal1_mrna];

end

