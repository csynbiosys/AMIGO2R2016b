% Simulate one of the experiments using the correct parameters and also
% simulate it with the final best theta.  How different are the
% simulations?

% Read the model into the model variable
gal1_load_model;


% Compile the model
clear inputs;
results_folder = 'Gal1-noDelay-correct';
short_name     = 'gal1noD'
inputs.model = model;
in1 = inputs.model.par;
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'simulate';
AMIGO_Prep(inputs);

inputs.exps.n_exp = 1;     
inputs.exps.n_obs{1}=3;                                        % Number of observed quantities per experiment                         
inputs.exps.obs_names{1}=char('mRNA','FoldedProtein', 'Fluorescence');  % Name of the observed quantities per experiment    
inputs.exps.obs{1}=char('mRNA=gal1_mrna','FoldedProtein=gal1_foldedP', 'Fluorescence=gal1_fluo'); % Observation function
inputs.exps.exp_y0{1}=gal1_initial_conditions(inputs.model.par);   % Initial conditions for each experiment       
inputs.exps.t_f{1}=1200;         % Experiment duration
inputs.exps.n_s{1}=241;                    % Number of sampling times

inputs.exps.u_interp{1}='pulse-down';                   
inputs.exps.n_pulses{1}=20; 
inputs.exps.u_min{1}=0;                               % Minimum value for the input
inputs.exps.u_max{1}=2;                               % Maximum value for the input
inputs.exps.t_con{1}=[ 0 29.1646444306808 49.1068928675286 69.3896286330276 112.244761713886  138.667281666524  165.537819855777  201.433081872975 229.538585403736  247.522988671521  298.595262378282  320.709642345546 354.580242446267  382.612930428771  418.724076094957  429.694399588511 471.419856648725  504.146412955163  531.327040852083  566.261907696751 580.4172458447  620.756030085162  639.620878121614  668.000257290462 718.549924456601  744.128851219931  762.233749921176  809.721818300189  818.569368652602  866.585329212888  885.927766621492  915.296468081753 940.859828537996  984.517465242893  999.239650206518  1037.9865024685 1074.20479477728  1103.52786241747  1125.61909316613  1152.79818453515 1200 ];

sim1 = AMIGO_SModel(inputs);

% Compile the model
clear inputs;
results_folder = 'Gal1-noDelay-best_theta';
short_name     = 'gal1noD'
inputs.model = model;
inputs.model.par =  [ 0.00175982202803376 1.8988904786864 4.3936521638427 5.67732700873252 0.0100612501143424 1.00026264648675 1.00081137576336 0.999708746671504 0.999708779886091];
inputs.pathd.results_folder = results_folder;                        
inputs.pathd.short_name     = short_name;
inputs.pathd.runident       = 'simulate';
AMIGO_Prep(inputs);

inputs.exps.n_exp = 1;  
inputs.exps.n_obs{1}=3;                                        % Number of observed quantities per experiment                         
inputs.exps.obs_names{1}=char('mRNA','FoldedProtein', 'Fluorescence');  % Name of the observed quantities per experiment    
inputs.exps.obs{1}=char('mRNA=gal1_mrna','FoldedProtein=gal1_foldedP', 'Fluorescence=gal1_fluo'); % Observation function
inputs.exps.exp_y0{1}=gal1_initial_conditions(inputs.model.par);   % Initial conditions for each experiment       
inputs.exps.t_f{1}=1200;         % Experiment duration
inputs.exps.n_s{1}=241;                    % Number of sampling times

inputs.exps.u_interp{1}='pulse-down';                   
inputs.exps.n_pulses{1}=20; 
inputs.exps.u_min{1}=0;                               % Minimum value for the input
inputs.exps.u_max{1}=2;                               % Maximum value for the input
inputs.exps.t_con{1}=[ 0 29.1646444306808 49.1068928675286 69.3896286330276 112.244761713886  138.667281666524  165.537819855777  201.433081872975 229.538585403736  247.522988671521  298.595262378282  320.709642345546 354.580242446267  382.612930428771  418.724076094957  429.694399588511 471.419856648725  504.146412955163  531.327040852083  566.261907696751 580.4172458447  620.756030085162  639.620878121614  668.000257290462 718.549924456601  744.128851219931  762.233749921176  809.721818300189  818.569368652602  866.585329212888  885.927766621492  915.296468081753 940.859828537996  984.517465242893  999.239650206518  1037.9865024685 1074.20479477728  1103.52786241747  1125.61909316613  1152.79818453515 1200 ];


sim2 = AMIGO_SModel(inputs);

for i=1:3
    figure;
    plot(sim1.sim.states{1}(:,i));
    hold all;
    plot(sim2.sim.states{1}(:,i));
    hold off;
    legend('correct','best theta');
    title(strrep(model.st_names(i,:),'_', ' '));
end

[ 0 29.1646444306808 49.1068928675286 69.3896286330276 112.244761713886  138.667281666524  165.537819855777  201.433081872975 229.538585403736  247.522988671521  298.595262378282  320.709642345546 354.580242446267  382.612930428771  418.724076094957  429.694399588511 471.419856648725  504.146412955163  531.327040852083  566.261907696751 580.4172458447  620.756030085162  639.620878121614  668.000257290462 718.549924456601  744.128851219931  762.233749921176  809.721818300189  818.569368652602  866.585329212888  885.927766621492  915.296468081753 940.859828537996  984.517465242893  999.239650206518  1037.9865024685 1074.20479477728  1103.52786241747  1125.61909316613  1152.79818453515 1200 ];

                      
