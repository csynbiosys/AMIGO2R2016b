y0=0;
u=1;
for i=0:4000
    sol=ode45(@(t,y) Linearized_IRMA(t,y,u),[i i+1],y0);
    y0=sol.y(end);
    yout(i+1)=sol.y(end);
end

%%
y0=0.1;
u=0;
for i=0:2000
    sol=ode45(@(t,y) Linearized_IRMA_Down(t,y,u),[i i+1],y0);
    y0=sol.y(end);
    yout(i+1)=sol.y(end);
end
yout_shift(1:100)=0.0467;
yout_shift(101:2101)=yout;