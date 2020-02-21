%% Steady State of the Model

% Function that calculates the steady state for the state variabes (res)
% given a determined IPTG concentration and parameter values (theta) 
% introduced as inputs in the function

function [ res ] = InduciblePromoter_steady_state( theta, IPTG )

% Assignment of the different parameter values to their variables

a1 = theta(1);
Vm1 = theta(2);
h1 = theta(3);
Km1 = theta(4);
d1 = theta(5);
a2 = theta(6);
d2 = theta(7);
Kf = theta(8);

% Calculation of the steady states of the different vavriables setting the
% time derivative to 0.

Cit_mrna = (a1 + Vm1*(IPTG^h1/(Km1^h1+IPTG^h1)))/d1;

Cit_foldedP = (a2*Cit_mrna)/(Kf+d2);

Cit_fluo = (Kf*Cit_foldedP)/d2;

% Results included in a vector so it can be used outside the function.

res = [Cit_mrna Cit_foldedP Cit_fluo];

end
