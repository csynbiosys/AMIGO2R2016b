function testF(index,CR,S)
F=0.7;
results=OEDlhsTF(15,2,1,F,CR,S);

save(['allresuls15070',num2str(10*CR),'S',num2str(S),num2str(index),'.mat'],'results');
end