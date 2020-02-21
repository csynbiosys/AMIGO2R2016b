function ms=AMIGO_gen_obs_IndProm2(y,inputs,par,iexp)
	Cit_mrna   =y(:,1);
	Cit_foldedP=y(:,2);
	Cit_fluo   =y(:,3);
	Cit_AU     =y(:,4);
	alpha1  =par(1);
	Vm1     =par(2);
	h1      =par(3);
	Km1     =par(4);
	d1      =par(5);
	alpha2  =par(6);
	d2      =par(7);
	Kf      =par(8);
	sc_molec=par(9);
 

switch iexp

case 1
Fluorescence = Cit_AU;
ms(:,1)=Fluorescence;

case 2
Fluorescence = Cit_AU;
ms(:,1)=Fluorescence;

case 3
Fluorescence = Cit_AU;
ms(:,1)=Fluorescence;

case 4
Fluorescence = Cit_AU;
ms(:,1)=Fluorescence;

case 5
Fluorescence = Cit_AU;
ms(:,1)=Fluorescence;

case 6
Fluorescence = Cit_AU;
ms(:,1)=Fluorescence;

case 7
Fluorescence = Cit_AU;
ms(:,1)=Fluorescence;

case 8
Fluorescence = Cit_AU;
ms(:,1)=Fluorescence;

case 9
Fluorescence = Cit_AU;
ms(:,1)=Fluorescence;

case 10
Fluorescence = Cit_AU;
ms(:,1)=Fluorescence;
end

return