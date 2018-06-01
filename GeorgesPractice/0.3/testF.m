F=0.3:0.2:0.9;
results=cell(size(F),1);

for i=1:length(F)
    results{i}=OEDlhsTF(3,30,1,F(i));
end

save('allresuls03.mat','results');