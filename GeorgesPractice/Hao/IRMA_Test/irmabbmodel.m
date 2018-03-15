function [yteor,iflag]=irmabbmodel(t0,tf,ts,y_0,par,u,pend,tu,iexp)

    options = odeset('RelTol',1e-7,'AbsTol',1e-7);

    vtout=union(ts,tu);
    if vtout(1)==t0
        yteor(1,:)=y_0;
        i_int=2;
    else
    i_int=1;
    end
    i_con=1;
    % INTEGRATION LOOP 
    t_old=tu(1);

    for i_out=1:size(vtout,2)-1 
        tin=vtout(i_out);
        tout=vtout(i_out+1);  
%         fprintf('Initial time: %5.2f --- Final time: %5.2f\n',tin, tout);
%         u(:,i_con)
        sol = dde23(@(t,sol,Z) IRMA5(t,sol,Z,par,u(:,i_con)), [100] ,y0,[tt(i) tt(i+1)]);
        t=sol.x;
        yout=sol.y;

%        [t,yout] = ode15s(@odes_gal1,[tin tout],y_0,options,flag,par',u(:,i_con),pend(:,i_con),t_old);
        
        % Keep values to next integration step
        y_0=yout(size(t,1),:);

        % If t out= t measurement, keep information 
        if tout==ts(i_int) 
            yteor(i_int,:)=yout(size(t,1),:);
            i_int=i_int+1;
        end 
        % If t out= t control, update control value
        %    [tout  inputs.exps.t_con{iexp}(i_con)]

        if (size(u,2)>1)               
            if (tout>=tu(i_con+1)) & ((i_con+1)<size(u,2)+1)
                i_con=i_con+1;
            end 
        end
        t_old=tu(i_con); 
    end % END INTEGRATION LOOP
    iflag=1;
return