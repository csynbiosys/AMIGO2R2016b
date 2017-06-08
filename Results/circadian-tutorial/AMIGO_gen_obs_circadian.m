function ms=AMIGO_gen_obs_circadian(y,inputs,par,iexp)
	CL_m=y(:,1);
	CL_c=y(:,2);
	CL_n=y(:,3);
	CT_m=y(:,4);
	CT_c=y(:,5);
	CT_n=y(:,6);
	CP_n=y(:,7);
	n1=par(1);
	n2=par(2);
	g1=par(3);
	g2=par(4);
	m1=par(5);
	m2=par(6);
	m3=par(7);
	m4=par(8);
	m5=par(9);
	m6=par(10);
	m7=par(11);
	k1=par(12);
	k2=par(13);
	k3=par(14);
	k4=par(15);
	k5=par(16);
	k6=par(17);
	k7=par(18);
	p1=par(19);
	p2=par(20);
	p3=par(21);
	r1=par(22);
	r2=par(23);
	r3=par(24);
	r4=par(25);
	q1=par(26);
	q2=par(27);
 

switch iexp

case 1
Lum=CL_m  ;
mRNAa=CT_m;
ms(:,1)=Lum  ;ms(:,2)=mRNAa;

case 2
Lum=CL_m  ;
mRNAa=CT_m;
ms(:,1)=Lum  ;ms(:,2)=mRNAa;
end

return