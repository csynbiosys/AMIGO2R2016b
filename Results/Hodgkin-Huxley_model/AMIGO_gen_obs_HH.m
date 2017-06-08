function ms=AMIGO_gen_obs_HH(y,inputs,par,iexp)
	yv=y(:,1);
	yn=y(:,2);
	ym=y(:,3);
	yh=y(:,4);
	gNa=par(1);
	gK =par(2);
	gL =par(3);
	VNa=par(4);
	VK =par(5);
	VL =par(6);
	Cm =par(7);
 

switch iexp

case 1
obsV=yv;
ms(:,1)=obsV;

case 2
obsV=yv;
ms(:,1)=obsV;
end

return