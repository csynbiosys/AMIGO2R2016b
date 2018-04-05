t=1:1000;
u=sin(t*2*pi/500);

y(1)=u(1);
for i=1:1000
    y(i+1)=(1-1/20)*y(i)+1/20*u(i);
end
plot(u);
hold on;
plot(y)