%�ҵ���ǿռ���ͬ���±�
function [A,i,j]=labelCommen()
fid1=fopen('C:\Users\֣ï\Desktop\ʵ��\mao\A-THALIANA(ֲ��-���Ͻ棩\all_gos.txt');
fid2=fopen('C:\Users\֣ï\Desktop\ʵ��\test1\�㷨\data\TargetDomain\RAT\all_gos.txt');
labelNum=0;

while ~feof(fid1)
  tline=fgetl(fid1);
  
  labelNum=labelNum+1;
  l=str2num(tline(4:length(tline)));
  SourceLabel(labelNum)=l;
  
end
 SourceLabel=SourceLabel';
 labelNum=0;
 while ~feof(fid2)
  tline=fgetl(fid2);
  
  labelNum=labelNum+1;
  l=str2num(tline(4:length(tline)));
  TargetLabel(labelNum)=l;
  
end
TargetLabel=TargetLabel';



[A,i,j]=intersect(SourceLabel,TargetLabel);