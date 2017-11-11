t_con = [0];
t = 0;
while t<3000
    a = t+190
    b = 3000;
    if a<3000-190
        t = floor(a+(b-a)*rand(1,1))
        t_con = [t_con t];
    else
        break
    end
end
t_con = [t_con 3000]
round(rand(1,length(t_con)-1)).*2