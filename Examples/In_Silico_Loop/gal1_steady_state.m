function [ res ] = PLac_SteadyState( theta, IPTG )
%PLac_SteadyState Calculates the steady state for theta and IPTGe
%   Computes the steady state of the Stelling model for the given values of
%   theta and the input IPTG.
%  'kLacI','k2','kd','km2','k1','km1','kLac12','kTP1','kcat','Km','kout','kC','lk','Scale_molec');    
              
model.par=[0.005,2.79e-6,7.75e-5,0.012,2.7e-4,0.0049,0.929,5.4e-4,1.5, 2800, 54.93,0.049,1e-10,27.18];
model.par_names=char('kLacI','k2','kd','km2','k1','km1',...
                     'kLac12','kTP1',...
                     'kcat','Km','kout',...
                     'kC','lk',...
                     'Scale_molec');     
kLacI = theta(1);
k2 = theta(2);
kd = theta(3);
km2 = theta(4);
k1 = theta(5);
km1 = theta(6);
kLac12 = theta(7);
kTP1 = theta(8);
kcat = theta(9);
Km = theta(10);
kout = theta(11);
kC = theta(12);
lk = theta(13);
Scale_molec = theta(14);

K2 = km2/k2; 
K1 = km1/k1;

Ltot = kLacI/kd; 
L0 = Ltot/(1+(IPTGi/K2))^2; 
L1 = 2*L0/K2*IPTGi; 
L2 = L0/(K2^2)*(IPTGi)^2

gal1_mrna = (a1 + Vm1*(gal^h1/(Km1^h1+gal^h1)))/d1;

gal1_foldedP = (a2*gal1_mrna)/(Kf+d2);

gal1_fluo = (Kf*gal1_foldedP)/Kb;

res = [gal1_mrna gal1_foldedP gal1_fluo ];

end

