function ms=AMIGO_gen_obs_gal1noD(y,inputs,par,iexp)
	gal1_mrna   =y(:,1);
	gal1_foldedP=y(:,2);
	gal1_fluo   =y(:,3);
	r     =par(1);
	h1    =par(2);
	Km1   =par(3);
	d1    =par(4);
	alpha2=par(5);
	d2    =par(6);
	Kf    =par(7);
	Kb    =par(8);
 

switch iexp

case 1
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;

case 2
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;

case 3
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;

case 4
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;

case 5
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;

case 6
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;

case 7
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;

case 8
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;

case 9
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;

case 10
Fluorescence=gal1_fluo;
ms(:,1)=Fluorescence;
end

return