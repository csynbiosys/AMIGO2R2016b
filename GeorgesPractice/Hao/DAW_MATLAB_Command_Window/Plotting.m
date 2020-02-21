hold on;
plot(r);
%plot(ysimout_Normalized);
plot(Normalized_Fluo_Out);
%plot(Error);
%plot(Controller_Out);
%plot(ys);
%hold off;
axis([0 2000 0 1]);




plot(Controller_Out(200:250));
hold on
plot(PWM_Ref(200:250));
plot(u(200:250))
