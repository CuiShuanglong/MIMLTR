function [fv]=mifv_1(data)
opt = InitSystem();
opt.kmeans_num_center = 1;
opt.PCA_energy = 0.0;


addpath('C:\Users\֣ï\Desktop\ʵ��\test2\�㷨\code\data');
addpath('C:\Users\֣ï\Desktop\ʵ��\test2\�㷨\code\miFV');
addpath('C:\Users\֣ï\Desktop\ʵ��\test2\�㷨\code\dataConduct');


% inputname = 'data4.mat';
% load(inputname);
% 
% % %���ȳ�ȡ��ͬ�ı�ǣ������µ�������
% [SLnew,TLnew]=LabelConduct(source_label,target_label);
% 
num_bag = size(data,1);
trainIndex = 1:num_bag;

% Create codebook

instances = [];
for ii = 1:num_bag
    instances = [instances; data{trainIndex(ii),1}]; %#ok<AGROW>
end



[codes opt] = CreateKmeansCodebook(instances,opt);

% Convert data into FV format
dim = opt.PCA_dim * opt.kmeans_num_center * 2;
fv = zeros(num_bag,dim);
labels = zeros(num_bag,1);%�˴�Ϊԭ��ı�ǣ��ǵ���ǣ��ʿ��Լ���һ��������
for ii = 1:num_bag
    fv(ii,:) = ExtractFV(data{ii,1},opt,codes);
    fv(ii,:) = fv(ii,:) / norm(fv(ii,:)); 
end

minv = min(fv(trainIndex,:));
maxv = max(fv(trainIndex,:)) - minv;
maxv = 1./maxv;
fv = (fv -repmat(minv,num_bag,1)) .* repmat(maxv,num_bag,1);
fv(isnan(fv))=0;

