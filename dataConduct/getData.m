%�ú���������ʦ�������ı��ĵ������ݴ洢�ɽṹ��
%ÿ���ṹ����һ�������������֣����ı��

function  [Domain] =getData(instance_files,label_files)
clc

%��ȡinstances

fidin=fopen(instance_files,'r');
%fidoutname=fopen('instancesName.txt','w');
numName=0; 
j=0;
while ~feof(fidin)              %�����ļ�ָ���Ƿ����ļ��Ľ���λ��
    tline=fgetl(fidin);         %���ļ��ж�ȡһ������

    if tline(1)=='>'
        numName=numName+1;      %�����ȡ�������ŵ����ƣ��򽫸��е����ƴ洢��lable_name.txt��
        Domain(numName).name=tline;
        j=0;
    else
        j=j+1;
       Domain(numName).instance(j).data=str2num(tline);
%          Domain(numName).instance(j).data=tline;
    end
end
fclose(fidin);




%��ȡlabel

fidin=fopen(label_files,'r');
Lnum=0;
while ~feof(fidin)
    tline=fgetl(fidin);
    
    if tline(1)=='>'
        Lnum=Lnum+1;
    else
        Domain(Lnum).label=str2num(tline);
    end
end


fclose(fidin);








%fclose(fidoutname);