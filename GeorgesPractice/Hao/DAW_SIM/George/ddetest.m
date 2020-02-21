sol = dde23(@(t,y,Z) IRMA5d(t,y,Z,[-1,2,-3,3,-2,5],1),0.1,[2,3,1]',[0, 5],ddeset('MaxStep',1e-2));
tx=0:0.1:5;
ty=deval(sol,tx);

figure();
plot(sol.x,sol.y,tx,ty);