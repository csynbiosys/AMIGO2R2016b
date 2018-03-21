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

function dy = testt(t,y,Z,u,step)

dy(1) = y(1)-z(1);
dy(2) = y(1)+z(2)+u(step*floor(t/step));
dy(3) = y(3)+y(2);
end