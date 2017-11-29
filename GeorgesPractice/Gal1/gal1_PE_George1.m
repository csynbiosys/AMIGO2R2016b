function result = gal1_PE_George1(inputs,varargin)
% Parameter estimation for general models and experiments,
% varargin is param_including_vector. if not given, assume all parameters
% need to be estimated.

if (isempty(varargin))
    param_including_vector=true(size(inputs.model.par));
else
    param_including_vector=varargin{1};
end

inputs.pathd.runident = strcat('pe');

best_global_theta=inputs.model.par;

% GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)
inputs.PEsol.id_global_theta=inputs.model.par_names(param_including_vector);
inputs.PEsol.global_theta_guess=best_global_theta(param_including_vector);
inputs.PEsol.global_theta_max=10*inputs.PEsol.global_theta_guess;  % Maximum allowed values for the paramters
inputs.PEsol.global_theta_min=0.1*inputs.PEsol.global_theta_guess;  % Minimum allowed values for the parameters

% COST FUNCTION RELATED DATA
inputs.PEsol.PEcost_type='lsq';        % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
inputs.PEsol.lsq_type='Q_I';

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';
inputs.ivpsol.senssolver='cvodes';
inputs.ivpsol.rtol=1.0D-7;
inputs.ivpsol.atol=1.0D-7;


% OPTIMIZATION
inputs.nlpsol.nlpsolver='eSS';
inputs.nlpsol.eSS.maxeval = 200000;
inputs.nlpsol.eSS.maxtime = 100;
inputs.nlpsol.eSS.local.solver = 'lsqnonlin';  % nl2sol not yet installed on my mac
inputs.nlpsol.eSS.local.finish = 'lsqnonlin';  % nl2sol not yet installed on my mac
inputs.rid.conf_ntrials=500;

inputs.plotd.plotlevel='noplot';

pe_start = now;
pe_inputs = inputs;
pe_results = AMIGO_PE(inputs);
pe_end= now;

results.plotd.plotlevel = 'noplot';

%Save the best theta
best_global_theta(param_including_vector)=pe_results.fit.thetabest;

%Write some results to the output file
% fid = fopen(resultFileName,'a');
% used_par_names = model.par_names(param_including_vector,:);
% 
% for j=1:size(used_par_names,1)
%     fprintf(fid,'ITERATION %d PARAM_FIT %s %f\n', i, used_par_names(j,:), results.fit.thetabest(j));
%     if isfield(results.fit,'rel_conf_interval')
%         fprintf(fid,'ITERATION %d REL_CONF %s %f\n',  i, used_par_names(j,:), results.fit.rel_conf_interval(j));
%     end
%     if isfield(results.fit,'residuals')
%         fprintf(fid,'ITERATION %d RESIDUAL %s %f\n', i, used_par_names(j,:), results.fit.residuals{1}(j));
%     end
%     if isfield(results.fit,'rel_residuals')
%         fprintf(fid,'ITERATION %d REL_RESIDUAL %s %f\n', i, used_par_names(j,:), results.fit.rel_residuals{1}(j));
%     end
% end
% 
% Time in seconds
% fprintf(fid,'ITERATION %d PE_TIME %.1f\n',  i, (pe_end-pe_start)*24*60*60);
cprintf(num2str((pe_end-pe_start)*24*60*60));
cprintf('\n');
result=pe_results.fit.thetabest;
% best_global_theta_log{i}=best_global_theta;


end

