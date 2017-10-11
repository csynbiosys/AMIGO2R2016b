function ms=AMIGO_gen_obs_gal1noD(y,inputs,par,iexp)
	gal1_mrna   =y(:,1);
	gal1_foldedP=y(:,2);
	gal1_fluo   =y(:,3);
	cviol       =y(:,4);
	alpha1=par(1);
	Vm1   =par(2);
	h1    =par(3);
	Km1   =par(4);
	d1    =par(5);
	alpha2=par(6);
	d2    =par(7);
	Kf    =par(8);
	Kb    =par(9);
 

switch iexp

case 1
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;
end

return