function [TargetGO,index]=TargetGOMin(target_label)
%%

%���ȶ�Ŀ���������ı������������������
[TLnew,index]= labelSort( target_label ,15 );%��ȡ��Ŀ����������������100�ı�ǣ��Ӵ�С���򣬱�������洢��index�С�


TargetLabelName='C:\Users\֣ï\Desktop\ʵ��\test2\�㷨\code\data\TargetDomain\RAT\all_mf_gos.txt';
% SourceLableName='C:\Users\֣ï\Desktop\ʵ��\test2\�㷨\code\data\SourceDomain\Saccharomyces_cerevisiae\all_gos.txt';
fidin=fopen(TargetLabelName,'r');
% fidoutname=fopen('TargetLabelName_min.txt','w');

%%
% %�˴���Ŀ�������еı�Ǵ洢Ϊcell��ʽ
t=0;
GOname=cell(2600,1);
while ~feof(fidin)
    t=t+1;
    tline=fgetl(fidin);
    GOname{t,:}=tline;
 
end

%%
TargetGO=cell(15,1);
for i=1:15
    TargetGO{i,:}=GOname{index(:,i),:}
end

