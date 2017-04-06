function [ res ] = gal1_steady_state( theta, gal)
% Calculates the steady state for the parameters and galactose level

a1 = theta(1);
Vm1 = theta(2);
h1 = theta(3);
Km1 = theta(4);
d1 = theta(5);
a2 = theta(6);
d2 = theta(7);
Kf = theta(8);
Kb = theta(9);

gal1_mrna = (a1 + Vm1*(gal^h1/(Km1^h1+gal^h1)))/d1;

gal1_foldedP = (a2*gal1_mrna)/(Kf+d2);

gal1_fluo = (Kf*gal1_foldedP)/Kb;

res = [gal1_mrna gal1_foldedP gal1_fluo ];

end