load good_response;
Actual_Input_Record_Shifted=[Denormalized_Input_to_IRMA(1:120),Actual_Input_Record];
Actual_Fluo_Out=yout(1:Experiment_Length)-0.004;
x=1:Experiment_Length;
hold on;
%plot(x,y0_math_model(1:Experiment_Length));
%plot(x,r(1:1000));
plot(x,Denormalized_Input_to_IRMA(1:Experiment_Length));
plot(x,Actual_Fluo_Out);
%plot(x,Normalized_Fluo_Out);    
%plot(x,Actual_Input_Record_Shifted(1:Experiment_Length));
%plot(x,Denormalized_Error_Added_to_Input);
hold off;

%%
load rampsim;
Actual_Input_Record_Shifted=[Denormalized_Input_to_IRMA(1:120),Actual_Input_Record];
Actual_Fluo_Out=yout(1:Experiment_Length)-0.004;
x=1:Experiment_Length;
hold on;
%plot(x,y0_math_model(1:Experiment_Length));
%plot(x,r(1:1000));
plot(x,Denormalized_Input_to_IRMA(1:Experiment_Length));
plot(x,Actual_Fluo_Out);
%plot(x,Normalized_Fluo_Out);    
%plot(x,Actual_Input_Record_Shifted(1:Experiment_Length));
%plot(x,Denormalized_Error_Added_to_Input);
hold off;
