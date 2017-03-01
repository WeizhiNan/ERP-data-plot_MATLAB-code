clear all; close all; clc
%% 路径
location='f:';
mlocation=([location,'\2Cannon_ERP\2CannonERP_20150903\data\ERPdata\tcl']);
%datalocation=([location,'\Matlab_Projects\socialDecision\gavg\avg_unuse\asd\']);
datalocation=([location,'\2Cannon_ERP\2CannonERP_20150903\data\ERPdata\avgf\200ms_lvbo100\']);
savelocation=([location,'\2Cannon_ERP\2CannonERP_20150903\data\ERPdata\avgf\200ms_lvbo100\20161203\Results\averageAmplitude\']);
%% 可以修改的参数
schan=[21 20 15 14 4];%对应elcall.txt中的电极；21-FZ，20-FCZ，15-CZ，14-CPZ，4-PZ
condition={'Likely3','Likely4','Likely5','unlikely'};
subj=[1:3 5:17 19:22];%被试序号
% sT(1,1:2)=[266 336];%要处理的时间段N2
% sT(1,1:2)=[336 461];%要处理的时间段P31
% sT(1,1:2)=[461 661];%要处理的时间段P32
sT(1,1:2)=[661 800];%要处理的时间段P32
%%
sT1=sT(1,1);%对应的是开头时间点
sT2=sT(1,2);%对应的是结尾时间点
t1=(sT1+202)/2;%对应的开头时间的位置点
t2=(sT2+202)/2;%对应的结尾时间的位置点
hen=numel(schan)*numel(condition)+1;
da=zeros(numel(subj)+1,hen);
da1=da;
for subno=1:numel(subj);
    for ei=1:numel(condition);
% subno=1
% ei=1
        x=['a_' ,condition{1,ei} ,'_asub' ,int2str(subj(1,subno)), '.avg'];
      % x=['sub',int2str(subj(1,subno)),'-',int2str(condition(1,ei)),'f.avg'] %for unused
      data1=loadavg([datalocation,x]);
      data1=data1';
        a=mean(data1(t1:t2,:),1);
          subn=subno+1;
        for ai=1:numel(schan);
            lie=(ei-1)*numel(schan)+ai+1;
            da(subn,lie)=a(1,schan(1,ai));
        end
     end
    disp(['done  subject ',num2str(subno) ]);
end
da2=num2cell(da);
cd(mlocation);
elcAll = importdata('elcall.txt');%所有电极点
for subno=1:numel(subj);
    subn=subno+1;
    da2(subn,1)=cellstr(strcat('SUB', int2str(subj(1,subno))));
    for ei=1:numel(condition);
        connu=condition(1,ei);
        for ai=1:numel(schan);
            lie=(ei-1)*numel(schan)+ai+1;
            loca=elcAll{schan(1,ai),1};
%             da2{1,lie}=['a_', connu,'_',loca];
            da2(1,lie)=cellstr(strcat('a_', connu,'_',loca));
        end
    end
end
disp('saving');
cd (savelocation);
xlswrite (['SE_',int2str(sT1), '_' ,int2str(sT2),'.xlsx'], da2,'mean');
clear all;
