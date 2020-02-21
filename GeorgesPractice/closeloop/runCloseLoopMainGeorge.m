clear inputs;
inputs.model=Model_ForStellingData_Lucia_George();
inputs=loadExperimentSettings_Lucia_George(inputs);

result=closeLoopMain_George(inputs.model,inputs.exp,600,500,2);