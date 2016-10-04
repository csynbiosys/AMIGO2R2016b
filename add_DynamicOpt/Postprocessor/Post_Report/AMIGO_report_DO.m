% AMIGO_report_DO: reports optimal control profile & constraints
%
%******************************************************************************
% AMIGO2: dynamic modeling, optimization and control of biological systems    % 
% Code development:     Eva Balsa-Canto                                       %
% Address:              Process Engineering Group, IIM-CSIC                   %
%                       C/Eduardo Cabello 6, 36208, Vigo-Spain                %
% e-mail:               ebalsa@iim.csic.es                                    %
% Copyright:            CSIC, Spanish National Research Council               %
%******************************************************************************
%
%*****************************************************************************%
%                                                                             %
%  AMIGO_report_DO: reports optimal control profile & constraints             %
%                                                                             %
%*****************************************************************************%

    
    fprintf(fid,'\n\n----------------------------------------\n');
     fprintf(1,'\n\n----------------------------------------\n');
     fprintf(fid,'\t  >>>> DYNAMIC OPTIMIZATION:\n');
     fprintf(1,'\t   >>>> DYNAMIC OPTIMIZATION:\n');
     fprintf(fid,'\n----------------------------------------\n');
     fprintf(1,'\n----------------------------------------\n');
        
     fprintf(fid,'\t   \n\n>>>> Best objective function: %s = %e \n',inputs.DOsol.DOcost_type,results.nlpsol.fbest);
     fprintf(1,'\t   \n\n>>>> Best objective function: %s = %e \n',inputs.DOsol.DOcost_type,results.nlpsol.fbest);
  
     fprintf(fid,'\t   \n\n>>>> Best control profile:\n');
     fprintf(1,'\t   \n\n>>>> Best control profile:\n');
     
      for iu=1:inputs.model.n_stimulus
      fprintf(fid,'\t   \n\n>>>> Control u: %u\n', iu);
      fprintf(1,'\t   \n\n>>>> Control u: %u\n', iu);
      if inputs.DOsol.n_steps==1      
      if size(results.do.u,1)>1
          fprintf(fid,'\t %f ',results.do.u(iu,1));
      fprintf(1,'\t %f ',results.do.u(iu,1));   
      privstruct.u{1}(iu,1)=results.do.u(iu,1);
      else
      fprintf(fid,'\t %f ',results.do.u(1,iu));
      fprintf(1,'\t %f ',results.do.u(1,iu));   
      privstruct.u{1}(iu,1)=results.do.u(1,iu);
      end
      else    
      for icon=1:size(results.do.u,2)
      fprintf(fid,'\t %f ',results.do.u(iu,icon));
      fprintf(1,'\t %f ',results.do.u(iu,icon));
      end 
      end
     end
     
     fprintf(fid,'\n\t   \n\n>>>> Switching times:\n');
     fprintf(1,'\n\t   \n\n>>>> Switching times:\n');
      for icon=1:size(results.do.t_con,2)
      fprintf(fid,'\t %f ',results.do.t_con(icon));
      fprintf(1,'\t %f ',results.do.t_con(icon));
      end   
          
      fprintf(1,'\t   \n\n>>>> Final time: %f\n',results.do.t_f);
      fprintf(fid,'\t   \n\n>>>> Final time: %f\n',results.do.t_f);
     
      fprintf(1,'\t   \n\n>>>> Constraints violation (c<=0): Equality constraints, Inequality constraints, Control constraints\n');
      fprintf(fid,'\t   \n\n>>>> Constraints violation (c<=0): Equality constraints, Inequality constraints, Control constraints\n');
      for icons=1:length(results.do.constraints_viol)
          fprintf(1,'\t c(%u)=%4.2e;\n',icons,results.do.constraints_viol(1,icons));
          fprintf(fid,'\t c(%u)=%4.2e;\n',icons,results.do.constraints_viol(1,icons));
      end

        

    
    