%�����µı�ǿռ䣬Դ���Ŀ����ı�ǿռ�����ͬ��
function [SLnew,TLnew]=LabelConduct(source_label,target_label)
[A,i,j]=labelCommen();%A�д洢����Դ���Ŀ������ͬ�ı�ǣ�i�д洢Դ���ǵ�λ�ã�j�洢�ñ����Ŀ�����λ��

SL=source_label;
TL=target_label;
t=size(i,1);
SLnew=zeros(size(SL,1),t);
TLnew=zeros(size(TL,1),t);
% TLnew=zeros(t);


for m=1:t
   SLnew(:,m)= SL(:,i(m));
   TLnew(:,m)= TL(:,j(m)); 
end



