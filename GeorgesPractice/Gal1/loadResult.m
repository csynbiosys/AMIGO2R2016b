function corr = loadResult(filename)
%load('result.mat');
load(filename);
par=output{1,1};
guess=output{1,3};

n=length(names);
for i=1:n
    figure(i);
    subplot(1,2,1);
    hold on;
    plot(1,par(:,i),'o');
    boxplot(par(:,i));
    title(['Estimated ',names(i,:)]);
    hold off;
    
    subplot(1,2,2);
    hold on;
    plot(1,guess(:,i),'o');
    boxplot(guess(:,i));
    title(['Initial Guess ',names(i,:)]);
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
hold off;

corr=corr(1:end-1,1:end-1);
end