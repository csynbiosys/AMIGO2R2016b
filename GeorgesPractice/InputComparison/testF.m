F=[0.1,0.4,0.5,0.7];
results=cell(size(F));

for i=1:length(F)
    results{i}=OEDlhsTF(3,5,1,F(i));
end

save('allresuls01.mat','results');