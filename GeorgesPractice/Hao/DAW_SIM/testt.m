                                 %IRMA5.m
%                      Smith predictor/FeedBack Control/Relay
%=========================================================================
%|                   Code written by Gianfranco Fiore                     |
%|                       gianfrancofiore@inwind.it                        | 
%=========================================================================      
%|                     Stand Alone Control Algorithm                      |
%|                            code version 0.0.3                          |
%|                               24/07/2011                               |
%=========================================================================

function dy = IRMA5d(t,y,Z,K,u,pend,tlast)
%fprintf('Pend = %f and tlast = %f\n',pend,tlast);
%IRMA
%alfa=teta(2);
%K=[0,0.0404324055000000,1,0.0356000000000000,0.0221812275000000,0.000149286100000000,0.000882735200000000,0.0372000000000000,0.0477845334000000,0.201360986100000,0.00297081400000000,0.00223775600000000,0.200000000000000,0.0937500000000000,0.421662678000000,0.000740000000000000,0.0146950000000000,1.81400000000000,0.0980450000000000,0.167615000000000,0.000610000000000000,0.0181941480000000,1.81400000000000,0.0500000000000000,9,3,9;];
%variabili da minimizzare con il Simulated annealing
% K(28)= 0.0900;
% K(29)= 0.0154;
% K(30)= 0.0154;

%u=u(1)+(t-K(29))*K(28);
% var=load('galtime.mat');
% galtime=var.galtime;
% u=1/2*(sign(t+galtime*60)-sign(t-galtime*60));

%u=1;

v=1;
deg=1;
alfa3=1;
deg3=1;
alfa4=1;
deg4=1;
alfa6=1;
deg6=1;
dec=1;
step=1;
% CBF1 mRNA
dy(1,1)= ((K(1)+ v*K(2)* (Z(3)/( (K(3)+Z(3)) *( 1+(y(5)/K(4)))  ))  -deg* K(5)*y(1))); 
% GAL4 mRNA
dy(2,1) = (K(6)+K(7)*(y(1) /(K(8) +y(1)) ) -  K(9) *y(2));
% SWI5 mRNA (note that the values of 3 parameters change depending on the medium, galactose
% or glucose)
dy(3,1) =(K(11)*alfa3+ (K(12)*(1-u(step*floor(t/step)))+...
    u(step*floor(t/step))*(K(12)*K(25)))*(y(2).^4./(  (K(14)*(1-u(step*floor(t/step)))+u(step*floor(t/step))*(K(14)/K(27))).^4 +...
    y(2).^4.*(1+(y(4).^4./((K(13)*(1-u(step*floor(t/step)))+u(step*floor(t/step))*(K(13)*K(26))).^4)))))-deg3*K(15)*y(3));
% GAL80 mRNA
dy(4,1) =(K(16)+K(17)*(y(3)/(K(18)+y(3)) )- K(19) *y(4) );
% ASH1 mRNA
dy(5,1) =(K(21)*alfa4+ K(22)*(y(3)/(K(23)+y(3)))-K(24)*deg4*y (5));

end