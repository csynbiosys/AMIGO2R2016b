F=1.5:0.1:2;
results=cell(size(F));

for i=1:length(F)
    results{i}=OEDlhsTF(3,12,1,F(i));
end

save('allresuls.mat','results');