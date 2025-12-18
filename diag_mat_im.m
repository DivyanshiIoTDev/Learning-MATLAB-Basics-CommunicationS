%make diagonals of a square matrix with diagonals having gradual increase
%in value from 0 to 255 
clc;
clear all;
close all;
hold on;
m=512;
mat_rq=zeros(m,m);
k=0;
for i=1:m
    k=0;
    for j=i:m
          k=i;
          mat_rq(i,j)=k+2;
          k=k+2;
    end
end
% for i=1:m
%     for j=1:i
%             k=j;
%           mat_rq(i,j)=k+2;
%           k=k+2;
%     end
% end

imshow(uint8(mat_rq));
colormap("gray");
hold off;

