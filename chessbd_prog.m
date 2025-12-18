%chessboard matrix generation
n=512;
chessbd=zeros(n,n);
for i=1:n
    for j=1:n
        if (floor(i/2)*2 == i && floor(j/2)*2 ~= j) || (floor(i/2)*2 ~= i && floor(j/2)*2 == j)
            chessbd(i,j)=1;
        else
            chessbd(i,j)=0;
        end
    end
end
subplot(2,2,1);
hold on;
imshow(chessbd);
colormap(gray);
hold off;

%make diagonals of a square matrix with diagonals having gradual increase
%in value from 0 to 255 
subplot(2,2,2);
hold on;
m=512;
mat_rq=zeros(m,m);
k=0;
for i=1:m
    for j=1:m
        if(i==j)
          mat_rq(i,j)=k;
          k=k+1;
        else
            mat_rq(i,j)=0;
        end
    end
end
imshow(uint8(mat_rq));
colormap("gray");
hold off;

