function [ ] = plotExperimentResult( oed_results, pe_results, exps, inputs, true_param_values)
%PLOTEXPERIMENTRESULT Summary of this function goes here
%   Detailed explanation goes here

    nExps = exps.n_exp;
    exp = nExps;
    
    figure;
    
    for exp=1:nExps;
        
        index = 1;
    
        for i=1:length(oed_results{nExps}.oed.u{exp})
            if i>1
                x(index) = oed_results{nExps}.oed.t_con{exp}(i);
                y(index) = oed_results{nExps}.oed.u{exp}(i-1);
                index = index + 1;            
            end

            x(index) = oed_results{nExps}.oed.t_con{exp}(i);
            y(index) = oed_results{nExps}.oed.u{exp}(i);
            index = index + 1;
        end
        x(index) = 360;
        y(index) = y(index-1)
        subplot(ceil(nExps/2),2,exp);
        plot(x,y);
        title(strcat('Expt: ',int2str(exp)));
    end
    suptitle('Input stimulus');
    
    % now plot the outputs of the experiments and the final fitted data
    figure;
    for exp=1:nExps;
        subplot(ceil(nExps/2),2,exp);
        plot(exps.t_s{exp},exps.exp_data{exp}, 'r', pe_results{nExps}.sim.tsim{exp},pe_results{nExps}.sim.obs{exp}, 'b');
        title(int2str(exp));
    end
    suptitle('Florescence red=expt, blue=fitted');

    
    % now we plot the best value for each of the parameters over iterations
    figure;
    nParams = length(pe_results{1}.fit.global_theta_estimated); 
    for p=1:nParams
        subplot(ceil(nParams/2),2,p);
        x = [];
        y = [];
        z = [];
        for exp=1:nExps
           x(exp) = exp;
           y(exp) = pe_results{exp}.fit.thetabest(p);
           z(exp) = true_param_values(p);
           plot(x,y,'b',x,z,'r');
           title( inputs.PEsol.id_global_theta(p,:) );
        end
    end
    suptitle('Parameter values (red = truth)');


    % now relative confidence interval for each parameter over iterations
    figure;
    nParams = length(pe_results{1}.fit.global_theta_estimated); 
    for p=1:nParams
        subplot(ceil(nParams/2),2,p);
        x = [];
        y = [];
        for exp=1:nExps
           x(exp) = exp;
           y(exp) = pe_results{exp}.fit.rel_conf_interval(p);
           semilogy(x,y);
           title(inputs.PEsol.id_global_theta(p,:));
        end
    end
    suptitle('Relative confidence intervals');
    
end

