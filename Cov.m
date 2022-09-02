function f=Cov(X)
%X为装载着行向量数据的矩阵
%X为M×n
m=mean(X)';
TX=X';
[x,y]=size(TX);
Cov=zeros(x,x);
for i = 1:y
    Cov=Cov+(TX(:,i)-m)*((TX(:,i)-m)');
end
Cov=Cov./(y-1);
f=Cov;
end