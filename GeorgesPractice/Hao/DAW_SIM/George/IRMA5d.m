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

function dy = IRMA5d(t,y,Z,u,step)
a=u(step*floor(t/step)+1);

dy(1,1) = y(1,1)-Z(1,1);
dy(2,1) = y(1,1)+Z(2,1)+a;
dy(3,1) = (y(3,1)+y(2,1))/2;
end