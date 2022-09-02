function f=Cov(X)
%求协方差矩阵
%X为装载着行向量数据的矩阵
%X为M×n
%求均值后再转置
m=mean(X)';
TX=X';
[x,y]=size(TX);
Cov=zeros(x,x);
for i = 1:y
    Cov=Cov+(TX(:,i)-m)*((TX(:,i)-m)');
end
%求均值
Cov=Cov./(y-1);
f=Cov;
end
