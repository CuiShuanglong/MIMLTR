%����һ��������ʹ�øú������Խ����ݾ���ת����Ϊmimlfast���Դ�������ݸ�ʽ
function [data_fast]=data2fast(data)

A=data;
[instance_num,feature_num]=size(A);
data_fast=cell(instance_num,1);

for i=1:instance_num
   data_fast{i}=A(i,:)';
end