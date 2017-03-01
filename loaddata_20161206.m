clc;
clear all;
x='F:\2Cannon_ERP\2CannonERP_20150903\data\ERPdata\avgf\200ms_lvbo100\200group'
y='F:\2Cannon_ERP\2CannonERP_20150903\data\ERPdata\avgf\200ms_lvbo100\'
% cd(x)
files = dir(x);
for i = 3:length(files)
    [signal]=loadavg([x,'\',files(i).name]);
%21-FZ，20-FCZ，15-CZ，14-CPZ，4-PZ
%21-FZ
    data(5*(i-3)+3).name = strcat(files(i).name,'_FZ');
    data(5*(i-3)+3).data = signal(21,:)';
%20-FCZ
    data(5*(i-3)+3+1).name = strcat(files(i).name,'_FCZ');
    data(5*(i-3)+3+1).data = signal(20,:)';
%15-CZ
    data(5*(i-3)+3+2).name = strcat(files(i).name,'_CZ');
    data(5*(i-3)+3+2).data = signal(15,:)';
%14-CPZ
    data(5*(i-3)+3+3).name = strcat(files(i).name,'_CPZ');
    data(5*(i-3)+3+3).data = signal(14,:)';
%4-PZ
    data(5*(i-3)+3+4).name = strcat(files(i).name,'_PZ');
    data(5*(i-3)+3+4).data = signal(4,:)'; 
end

cd(y);
mkdir('plotdata')
cd('plotdata')
save 2cannon_plot_data.mat data

cd('F:\2Cannon_ERP\2CannonERP_20150903\data\ERPdata\avgf\200ms_lvbo100\20161203\Results\averageAmplitude\')
