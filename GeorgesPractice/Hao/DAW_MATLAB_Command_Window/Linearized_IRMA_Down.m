function dy_dt=Linearized_IRMA_Down(t,y,u)
    dy_dt=0.0467/120*u-y/120;
    %dy_dt=0.0467/200*u-y/200;
end