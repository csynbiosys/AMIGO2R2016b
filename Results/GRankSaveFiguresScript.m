clear;clc;close all

figFiles=dir('*.fig');

for i=1:length(figFiles)
    fig=openfig(figFiles(i).name);
    set(fig,'position',[1         330        1440         600]);
    fig = gcf;
    fig.PaperPositionMode = 'auto';
    print(strcat(figFiles(i).name(1:(end-4)),'.png'),'-dpng','-r0')
end