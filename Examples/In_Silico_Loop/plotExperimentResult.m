function [ ] = plotExperimentResult( oed_results, pe_results, pe_results2, exps, inputs, true_param_values)
%PLOTEXPERIMENTRESULT Summary of this function goes here
%   Detailed explanation goes here

    figure;
    
    index = 1;

    for i=1:length(exps.u{1})
        if i>1
            x(index) = exps.t_con{1}(i);
            y(index) = exps.u{1}(i-1);
            index = index + 1;            
        end

        x(index) = exps.t_con{1}(i);
        y(index) = exps.u{1}(i);
        index = index + 1;
    end
    x(index) = 3600;
    y(index) = y(index-1);
    plot(x,y);
    title('Expt');
    suptitle('Input stimulus');

    
    % now plot the outputs of the experiments and the final fitted data
    figure;
    numLoops = size(pe_results,2)
    plot(exps.t_s{1},exps.exp_data{1}, 'r', pe_results{numLoops}.sim.tsim{1},pe_results{numLoops}.sim.obs{1}, 'b');
    suptitle('Florescence red=expt, blue=fitted');
 
     
    % now we plot the best value for each of the parameters over iterations
    figure;
    nParams = length(pe_results2{1}.fit.global_theta_estimated);
    numPERuns = size(pe_results2,2);
    
    for p=1:nParams
        subplot(ceil(nParams/2),2,p);
        x = [];
        y = [];
        z = [];
        for exp=1:numPERuns
           x(exp) = exp*6;  % times 6 because we run this after every 6 hours of data
           y(exp) = pe_results2{exp}.fit.thetabest(p);
           z(exp) = true_param_values(p);
           plot(x,y,'b',x,z,'r');
           title( inputs.PEsol.id_global_theta(p,:) );
        end
    end
    suptitle('Parameter values (red = truth)');
% 
% 
%     % now relative confidence interval for each parameter over iterations
%     figure;
%     nParams = length(pe_results{1}.fit.global_theta_estimated); 
%     for p=1:nParams
%         subplot(ceil(nParams/2),2,p);
%         x = [];
%         y = [];
%         for exp=1:nExps
%            x(exp) = exp;
%            y(exp) = pe_results{exp}.fit.rel_conf_interval(p);
%            semilogy(x,y);
%            title(inputs.PEsol.id_global_theta(p,:));
%         end
%     end
%     suptitle('Relative confidence intervals');
    
end

