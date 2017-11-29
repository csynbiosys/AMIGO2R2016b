function res = gal1_steady_state_George1( inputs, gal)
% Calculates the steady state for the parameters and galactose level

theta=inputs.model.par;
r = theta(1);
h1 = theta(2);
Km1 = theta(3);
d1 = theta(4);
a2 = theta(5);
d2 = theta(6);
Kf = theta(7);
Kb = theta(8);

a1=d1*Kb*(d2+Kf)*r/(Kf*a2);
Vm1=(d1*Kb*(Kf+d2)/(a2*Kf)-a1)*(Km1^h1+2^h1)/2^h1;

gal1_mrna = (a1 + Vm1*(gal^h1/(Km1^h1+gal^h1)))/d1;

gal1_foldedP = (a2*gal1_mrna)/(Kf+d2);

gal1_fluo = (Kf*gal1_foldedP)/Kb;

res = [gal1_mrna gal1_foldedP gal1_fluo ];

end