function ms=AMIGO_gen_obs_IndProm(y,inputs,par,iexp)
	Cit_mrna   =y(:,1);
	Cit_foldedP=y(:,2);
	Cit_fluo   =y(:,3);
	cviol      =y(:,4);
	alpha1=par(1);
	Vm1   =par(2);
	h1    =par(3);
	Km1   =par(4);
	d1    =par(5);
	alpha2=par(6);
	d2    =par(7);
	Kf    =par(8);
 

switch iexp

case 1
Fluorescence = Cit_fluo;
ms(:,1)=Fluorescence;

case 2
Fluorescence = Cit_fluo;
ms(:,1)=Fluorescence;
end

return