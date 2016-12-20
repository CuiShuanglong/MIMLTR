function [Pre,Rec,F1,Ap,Cov,Hloss,OError,RLoss] = MIMLTR( sourcesInstancesPath ,sourcesLabelPath,targetInstancesPath, targetLabelPath,labelnumber,r)
% Pre: ����
% Rec���ٻ���
% F1 ��F1ֵ
% Ap ��ƽ������
% Cov��������
% Hloss��������ʧ
% OError��0-1��ʧ
% RLoss ��������ʧ
% sourcesInstancesPath ��Դ������·��
% sourcesLabelPath ��Դ���������·��
% targetInstancesPath ��Ŀ��������·��
% targetLabelPath ��Ŀ�����������·��
% labelnumber ��Ԥ�⹲���Ǹ���
% r ����˹������˰뾶

%�ı��ĵ�ת��ΪcellԪ����ʽ
[source_data,source_label]=Cell_get(sourcesInstancesPath,sourcesLabelPath);
[target_data,target_label]=Cell_get(targetInstancesPath,targetLabelPath);
%
target_data1 =transData_MIMLfast(target_data);
source_data1 =transData_MIMLfast(source_data);

 % ����miFV�㷨
fv_sourceInstance=mifv_1(source_data);
fv_targetInstance=mifv_1(target_data);

% ���������ǵ����ݼ�
[SLnew,TLnew]=LabelConduct(source_label,target_label);
[SLnew_min,index]= labelSort( SLnew ,labelnumber );
TLnew_min=TLnew(:,index);

[Sd_fast]=data2fast(fv_sourceInstance);
[Td_fast]=data2fast(fv_targetInstance);


% KMM�㷨��Դ��������Ȩ
[beta,EXITFLAG] = KMM(fv_sourceInstance,fv_targetInstance,1.8);
[test_outputs,test_labels]=MIMLfast(Sd_fast,SLnew_min,Td_fast,beta);
test_output2=test_outputs(:,1:10);
[Pre,Rec,F1,Ap,Cov,Hloss,OError,RLoss]=standerd(test_output2',test_labels',TLnew_min');
end

