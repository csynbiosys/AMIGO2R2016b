function states = SteadyStates_CloseLoop(inputs,IPTGext)

par=containers.Map(cellstr(inputs.model.par_names),inputs.model.par);

Ltotal=par('kLacI')/par('kd');
Gtotal=1;

K1=par('k_1')/par('k1');
K2=par('k_2')/par('k2');
F=par('kTP1')/par('kd');
alpha=par('kC')/(par('kd')+par('kTP1'));
beta=Ltotal/K1;
LK=par('lk')*alpha;
gamma=par('kcat')/(par('kd')*par('kout'));

% alpha=519;
% beta=16;
% gamma=12.99e3;
% K2=5.4e4;
% F=1.135;
% LK=20;

syms x;
Lac12m=double(vpasolve(x==F*((alpha-LK)*(1+beta*(1+(gamma*IPTGext*x)/(K2*(par('Km')+IPTGext)))^-2)^-2+LK),x,[0,5e4]))

states=zeros(length(Lac12m),inputs.model.n_st);

for i=1:length(Lac12m)
    state=containers.Map(cellstr(inputs.model.st_names),zeros(1,inputs.model.n_st));
    cellstr(inputs.model.st_names)
    x=Lac12m(i);
    F*((alpha-LK)*(1+beta*(1+(gamma*IPTGext*x)/(K2*(par('Km')+IPTGext)))^-2)^-2+LK)-x
    state('Lac12m')=Lac12m(i);
    cell2mat(state.values)
    state('IPTGint')=gamma*Lac12m(i)*IPTGext/(par('Km')+IPTGext);
    cell2mat(state.values)
    state('L0')=Ltotal*(1+state('IPTGint')/K2)^-2;
    cell2mat(state.values)
    state('L1')=2*state('IPTGint')*state('L0')/K2;
    cell2mat(state.values)
    state('L2')=state('L1')/4;
    cell2mat(state.values)
    state('G10')=Gtotal*(1+state('L0')/K1)^-2;
    cell2mat(state.values)
    state('G11')=2*state('L0')*state('G10')/K1;
    cell2mat(state.values)
    state('G12')=state('L0')^2*state('G10')/K1^2;
    cell2mat(state.values)
    state('G20')=state('G10');
    cell2mat(state.values)
    state('G21')=state('G11');
    cell2mat(state.values)
    state('G22')=state('G12');
    cell2mat(state.values)
    state('Lac12')=state('Lac12m')/F;
    cell2mat(state.values)
    state('Citrine')=par('kC')/par('kd')*(state('G20')+par('lk')*(state('G21')+state('G22')));
    states(i,:)=cell2mat(state.values)
end

end