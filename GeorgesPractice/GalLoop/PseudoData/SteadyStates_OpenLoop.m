function state = SteadyStates_OpenLoop(inputs,IPTGext)

par=containers.Map(cellstr(inputs.model.par_names),inputs.model.par);

Ltotal=par('kLacI')/par('kd');

K1=par('k_1')/par('k1');
%K1=(par('k_1')+par('kd'))/par('k1');
K2=par('k_2')/par('k2');
%K2=(par('k_2')+par('kd'))/par('k2');
gamma=par('kcat')/(par('kd')*par('kout'));

state=containers.Map(cellstr(inputs.model.st_names),zeros(1,inputs.model.n_st));
state('G10')=1;
state('G11')=0;
state('G12')=0;
state('Lac12')=par('kLac12')/(par('kd')+par('kTP1'));
state('Lac12m')=par('kTP1')/par('kd')*state('Lac12');
state('IPTGint')=gamma*state('Lac12m')*IPTGext/(par('Km')+IPTGext);
state('L0')=Ltotal*(1+state('IPTGint')/K2)^-2;
state('L1')=2*state('IPTGint')*state('L0')/K2;
state('L2')=state('IPTGint')^2*state('L0')/K2^2;
state('G20')=(1+state('L0')/K1)^-2;
state('G21')=2*state('L0')*state('G20')/K1;
state('G22')=state('L0')^2*state('G20')/K1^2;
state('Citrine')=par('kC')/par('kd')*(state('G20')+par('lk')*(state('G21')+state('G22')));

state=cell2mat(values(state,cellstr(inputs.model.st_names)))';
end