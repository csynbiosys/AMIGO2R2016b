function ms=AMIGO_gen_obs_bbg(y,inputs,par,iexp)
	cb=y(:,1);
	cs=y(:,2);
	mumax=par(1);
	ks   =par(2);
	kd   =par(3);
	yield=par(4);
 

switch iexp

case 1
obsB=cb;
obsS=cs;
ms(:,1)=obsB;ms(:,2)=obsS;

case 2
obsB=cb;
obsS=cs;
ms(:,1)=obsB;ms(:,2)=obsS;
end

return