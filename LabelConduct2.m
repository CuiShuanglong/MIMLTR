function [SLnew,TLnew,LabelCommen]=LabelConduct2(source_label,target_label,TargetGO)


SourceLableName='C:\Users\֣ï\Desktop\ʵ��\test2\�㷨\code\data\SourceDomain\Saccharomyces_cerevisiae\all_gos.txt';
 fidin=fopen(SourceLableName,'r');
%%
%���Ƚ�Դ���������еı�����Ƽ��϶�ȡ��cell������
t=0;
SourcesGOname=cell(1566,1);
while ~feof(fidin)
    t=t+1;
    tline=fgetl(fidin);
    SourcesGOname{t,:}=tline;
 
end

%%
%ȡ��Դ���Ǻ�Ŀ�����ǵĽ���
[LabelCommen,Target_index,Source_index]=intersect(TargetGO,SourcesGOname);

%%
%��Դ���ǰ��ս�������
SLnew=source_label(:,Source_index);
% % % % % % A(A==-1)=0;
% % % % % % B=sum(A,1);
SLnew=[SLnew,-ones(3509,3)];


%%
%�����ֶ���ȫTLnew��ʣ����
TLnew=target_label(:,Target_index);
TLnew=[TLnew,target_label(:,318)];
TLnew=[TLnew,target_label(:,259)];
TLnew=[TLnew,target_label(:,1115)];





