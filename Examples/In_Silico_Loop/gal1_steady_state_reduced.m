function [ res ] = gal1_steady_state_reduced(theta, gal )
%gal1_steady_state Calculates the steady state for theta and gal
%   Computes analitically the stady state for the gal1 model, given theta
%   and the galactose value
    
r = theta(1);
h1 = theta(2);
Km1 = theta(3);
d1 = theta(4);
alpha2 = theta(5);
d2 = theta(6);
Kf = theta(7);

% Define the values for alpha1 and Vm1
alpha1=d1*d2*(d2+Kf)*r/(Kf*alpha2);
Vm1=(d1*d2*(Kf+d2)/(alpha2*Kf) - alpha1) * (Km1^h1 + 2^h1)/2^h1;

gal1_mrna = (alpha1 + Vm1*(gal^h1/(Km1^h1+gal^h1)))/d1;
gal1_foldedP = (alpha2*gal1_mrna)/(Kf+d2);
gal1_fluo = (Kf*gal1_foldedP)/d2;

res = [gal1_mrna gal1_foldedP gal1_fluo];

end

