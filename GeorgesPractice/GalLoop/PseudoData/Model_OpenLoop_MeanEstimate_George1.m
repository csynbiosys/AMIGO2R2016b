function model = Model_OpenLoop_MeanEstimate_George1()
% Gal1 model but here we have eliminated parameter Vm1 using the fact
% that the output is 1 when at steady state.  Thus we can cast Vm in
% term of the other parameters.
cprintf('loading open loop model MeanEstimate\n');

model=Model_OpenLoop_BestFit_George1();

k1=5.92e-4;
k_1=9e-3;
k2=1.77e-6;
k_2=0.014;
kC=0.0559;
lk=6.195e-4;
kcat=13.08;
kout=47.121;
kLacI=0.006;
kLac12=0.3021;
kTP1=8.395e-4;
scLacI=1.265;
scCitrine=0.8761;
scmolec=25.5;
Km=2800;
kd=7.75e-5;

model.par=[k1,k_1,k2,k_2,kC,lk,kcat,kout,kLacI,kLac12,kTP1,scLacI,scCitrine,scmolec,Km,kd];
end