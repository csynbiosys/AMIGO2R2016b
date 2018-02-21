function inputs = subFcnRunExperimentPart1(inputs)
% the first part of the experiment, for this case is just run all the
% experiments and store the simed data. would be different in practical
AMIGO_Prep(inputs);          
result=AMIGO_SObs(inputs);
inputs.exps.exp_data=result.sim.obs;
end

