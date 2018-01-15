function corr = loadResult(filename)
names=char('d1',...
    'alpha2','d2','Kf','Kb');

%load('result.mat');
load(filename);
par=output{1,1}(:,4:end);
guess=output{1,3}(:,4:end);

n=size(names,1);
for i=1:n
    figure(i);
    hold on;
    plot(1,guess(:,i),'o');
    plot(2,par(:,i),'o');
    boxplot([guess(:,i),par(:,i)]);
    title(['Initial Guess vs. Estimated ',names(i,:)]);
    hold off;
end

corr=corrcoef(par);

figure(n+1);
hold on;
corr(end+1,end+1)=-1;
pcolor(corr);
set(gca,'xticklabel',[])
ticks = (1+0.5):(n+1);
labels = cellstr(names);
text(ticks,0.9*ones(size(ticks)), labels, 'rotation',-90,'horizontalalignment','left');
set(gca,'ytick',ticks);
set(gca,'yticklabel',labels);
colorbar;
hold off;

corr=corr(1:end-1,1:end-1);
end