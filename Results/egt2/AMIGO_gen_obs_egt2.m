function ms=AMIGO_gen_obs_egt2(y,inputs,par,iexp)
	mrna=y(:,1);
	prot=y(:,2);
	fluo=y(:,3);
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
mrna=mrna;
prot=prot;
fluo=fluo;
ms(:,1)=mrna;ms(:,2)=prot;ms(:,3)=fluo;
end

return