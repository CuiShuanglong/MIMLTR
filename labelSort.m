function [ SLnew_min,index ] = labelSort( SLnew ,k )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   ��ѡ������ǰk����
A=SLnew;
A(A==-1)=0;

B=sum(A,1);
[C,index]=sort(B,'descend');
E=SLnew(:,index(1:k));
index=index(1:k);

SLnew_min=E;

end

