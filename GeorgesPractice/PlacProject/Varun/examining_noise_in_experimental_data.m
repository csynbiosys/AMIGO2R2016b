SD_combined=[];

load('StellingData.mat');

% Populating Standard deviation values from all the experiments
for i=1:24
    SD_combined=[SD_combined;Data.standard_dev{1,i}'];
end


% Plotting standard deviation in Citrine levels in each experiment
figure(1)
for i=1:24
    subplot(6,4,i);
    plot(SD_combined(i,:)); 
    xlabel('Different sampling times');
    ylabel('standard deviation');

end


% Plotting standard deviation in Citrine levels from different experiments for the same time point 
figure(2)
for i=1:5
    subplot(2,3,i);
    plot(SD_combined(:,i));
    title(num2str(i));
    xlabel('Different experiments');
    ylabel('standard deviation');

end


