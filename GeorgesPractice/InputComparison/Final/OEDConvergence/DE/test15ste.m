function test15ste(index,numtrials,CR,S)
F=0.7;
results=OEDlhsTF(15,numtrials,1,F,CR,S);

save(['allresuls150',num2str(10*F),'0',num2str(10*CR),'S',num2str(S),num2str(index),'.mat'],'results');
end