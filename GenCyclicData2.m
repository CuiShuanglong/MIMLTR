function [x] = GenCyclicData2(inner_radius,band_width,num_points)
rot_deg = -rand(num_points,1)*pi;
% rot_deg = rand(num_points,1)*2*pi;
% ��������ĽǶ�
radius = inner_radius + band_width*rand(num_points,1);
% ��������İ뾶
x = [radius.*sin(rot_deg),radius.*cos(rot_deg)];%�������յĶ�������
end