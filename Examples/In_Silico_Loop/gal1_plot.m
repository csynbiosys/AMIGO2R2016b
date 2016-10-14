
% Plot the parameters convergence to truth
figure;
for i=1:length(best_global_theta)

    subplot(3,3,i);
    clear y;
    for j=1:exps.n_exp
        y(j) = best_global_theta_log{j}(i);
    end
    x=[1:exps.n_exp];
	y2 = zeros(1,exps.n_exp)+model.par(i);
    plot(x,y,x,y2);
    title(model.par_names(i,:));

end

% Plot the relative confidence intervals for the parameters using only the
% real part for complex numbers.
figure;
for i=1:length(best_global_theta)
    model.par_names(i,:)
    subplot(3,3,i);
    clear y;
    for j=2:exps.n_exp
        % Some of these numbers are complex which is a little strange
        y(j-1) = real(pe_results{j}.fit.rel_conf_interval(i));
    end
    x=[2:exps.n_exp];
     x
     y
    plot(x,y);
    title(model.par_names(i,:));

end

% Plot the relative confidence intervals for the parameters using the
% complex magnitide for complex numbers.
figure;
for i=1:length(best_global_theta)
    model.par_names(i,:)
    subplot(3,3,i);
    clear y;
    for j=2:exps.n_exp
        % Some of these numbers are complex which is a little strange
        y(j-1) = abs(pe_results{j}.fit.rel_conf_interval(i));
    end
    x=[2:exps.n_exp];
     x
     y
    plot(x,y);
    title(model.par_names(i,:));

end


% Plot the initial conditions convergence to truth
figure;
for i=1:length(used_y0{1})

    correct = gal1_initial_conditions(model.par);
    subplot(3,1,i);
    clear y;
    for j=1:exps.n_exp
        y(j) = used_y0{j}(i);
    end
    x=[1:exps.n_exp];
	y2 = zeros(1,exps.n_exp)+correct(i);
    plot(x,y,x,y2);
    % Underscored lead to subscript in the plots so remove them
    title(strrep(model.st_names(i,:),'_', ' '));

end

% Plot the convergence of the result
figure;
clear y;
clear x;
for j=2:exps.n_exp
    y(j-1) = pe_results{j}.fit.fbest;
    x(j-1) = j;
end
semilogy(x,y);
title('fbest');


% Plot the convergence of the result
figure;
clear y;
clear x;
for j=2:exps.n_exp
    y(j-1) = det(pe_results{j}.fit.g_FIM);
    x(j-1) = j;
end
plot(x,y);
title('det(FIM)');


figure;
clear y;
clear x;
for j=2:exps.n_exp
    y(j-1) = abs(det(pe_results{j}.fit.g_FIM));
    x(j-1) = j;
end
semilogy(x,y)
title('abs(det(FIM))');

