%�ú������ڽ���ȡ�Ľṹ������ת����MIMLfast���õ�Cell��ʽ�洢����ʽ��ע��ת�ã�


function [data,label]=Cell_get(files1,files2)
%files1='C:\Users\֣ï\Desktop\��Ŀ����\�ҵ��㷨\�㷨1.0\data\SourceDomain\instances.txt'
%files2='C:\Users\֣ï\Desktop\��Ŀ����\�ҵ��㷨\�㷨1.0\data\SourceDomain\labels.txt'
Data_struct=getData(files1,files2);

num_data=length(Data_struct);   %����ʾ�����ĸ���

num_label=length(Data_struct(1).label);   %���б�ǵĸ���


% % ����һ��Cell�洢���е�ʾ������һ��Cell��һ����
% % Cell��ÿһ����Ԫ��һ�����󣬾����ÿһ����һ����ʾ��
data=cell(num_data,1);



label=zeros(num_data,num_label);
for i=1:num_data
    
% num_source_instance(i)=length(Source(i).instance);
%����ÿһ�����������һ������
    data{i}=[];
    for j=1:length(Data_struct(i).instance)

        data{i}=[data{i};Data_struct(i).instance(j).data];


    end
    
    label(i,:)=Data_struct(i).label;
end


