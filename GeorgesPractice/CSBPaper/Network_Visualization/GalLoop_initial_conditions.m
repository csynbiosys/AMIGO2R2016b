function condition = GalLoop_initial_conditions( theta, IPTGext )
%GAL1_INITIAL_CONDITIONS Calculates the steady state for theta and gal
%   Computes the steady state of the gal1 model for the given values of
%   theta and the input gal.

condition=zeros(1,13);
condition(8)=1;
condition(11)=1;

end