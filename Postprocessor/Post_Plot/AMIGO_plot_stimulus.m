% $Header: svn://.../trunk/AMIGO2R2016/Postprocessor/Post_Plot/AMIGO_plot_stimulus.m 2203 2015-09-24 07:11:27Z evabalsa $
 plot_title=strcat(inputs.plotd.data_plot_title,['; experiment: ',mat2str(iexp)]);
 
switch inputs.exps.u_interp{iexp}
    
    case 'sustained'
        
        for iu=1:inputs.model.n_stimulus
            fig1=stairs(inputs.exps.t_con{iexp},[inputs.exps.u{iexp}(iu,1) inputs.exps.u{iexp}(iu,1)]);
            set(fig1,'color',plot_colors(iu,:))
            set(fig1,'LineWidth',1)
            hold on
        end
        if numel(inputs.model.stimulus_names)>=1
            legend(inputs.model.stimulus_names);
            legend boxoff
        end
        xlabel('Time');
        ylabel('Stimuli');
%          plot_title={inputs.plotd.data_plot_title,['experiment: ',mat2str(iexp)]};
        title(plot_title,'interpreter','none');
        
        
    case {'step','stepf'}
        for iu=1:inputs.model.n_stimulus
            fig1=stairs(inputs.exps.t_con{iexp},[inputs.exps.u{iexp}(iu,1:inputs.exps.n_steps{iexp}) inputs.exps.u{iexp}(iu,inputs.exps.n_steps{iexp})]);
            set(fig1,'color',plot_colors(iu,:))
            set(fig1,'LineWidth',1)
            hold on
        end
        if numel(inputs.model.stimulus_names)>=1
            legend(inputs.model.stimulus_names);
            legend boxoff
        end
        xlabel('Time');
        ylabel('Stimuli');
%         plot_title=strcat(inputs.pathd.short_name,' ; experiment: ',mat2str(iexp));
        title(plot_title,'interpreter','none');
        
        
    case {'pulse-down'}
      
        for iu=1:inputs.model.n_stimulus
            
            fig1=stairs(inputs.exps.t_con{iexp},[inputs.exps.u{iexp}(iu,1:2*inputs.exps.n_pulses{iexp}) inputs.exps.u{iexp}(iu,2*inputs.exps.n_pulses{iexp})],'color',plot_colors(iu,:));
            set(fig1,'LineWidth',1)
            hold on
        end
        if numel(inputs.model.stimulus_names)>=1
            legend(inputs.model.stimulus_names);
            legend boxoff
        end
        xlabel('Time');
        ylabel('Stimuli');
%         plot_title=strcat(inputs.pathd.short_name,' ; experiment: ',mat2str(iexp));
        title(plot_title,'interpreter','none');
        
    case {'pulse-up'}
        for iu=1:inputs.model.n_stimulus
            fig1=stairs(inputs.exps.t_con{iexp},[inputs.exps.u{iexp}(iu,1:2*inputs.exps.n_pulses{iexp}+1) inputs.exps.u{iexp}(iu,2*inputs.exps.n_pulses{iexp}+1)]);
            set(fig1,'color',plot_colors(iu,:))
            set(fig1,'LineWidth',1)
            
            hold on
        end
        if numel(inputs.model.stimulus_names)>=1
            legend(inputs.model.stimulus_names);
            legend boxoff
        end
        xlabel('Time');
        ylabel('Stimuli');
%         plot_title=strcat(inputs.pathd.short_name,' ; experiment: ',mat2str(iexp));
        title(plot_title,'interpreter','none');
        
        
        
        
    case {'linearf','linear'}
        for iu=1:inputs.model.n_stimulus
            plot(inputs.exps.t_con{iexp},[inputs.exps.u{iexp}(iu,1:inputs.exps.n_linear{iexp}-1) inputs.exps.u{iexp}(iu,end)],'color',plot_colors(iu,:));
            hold on
        end
        if numel(inputs.model.stimulus_names)>=1
            legend(inputs.model.stimulus_names);
            legend boxoff
        end
        xlabel('Time');
        ylabel('Stimuli');
%         plot_title=strcat(inputs.pathd.short_name,' ; experiment: ',mat2str(iexp));
        title(plot_title,'interpreter','none');
        
end

