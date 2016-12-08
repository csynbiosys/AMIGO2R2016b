function ms=AMIGO_gen_obs_gal1noD(y,inputs,par,iexp)
	gal1_mrna=y(:,1);
	Vm1=par(1);
	Km1=par(2);
	d1 =par(3);
 

switch iexp

case 1
mRNA=gal1_mrna;
ms(:,1)=mRNA;ms(:,1)=mRNA;ms(:,1)=mRNA;