

function z =coder(xq,L)
L1=sort(xq);
N=length(xq);
disp(N);
z=zeros(1,N);
L2=unique(L1,'stable');
ll=length(L2);
disp(N)
[rows,col]=size(L2);
arr=zeros(N,col);
a=1;
for i=1:N
    for j=1:ll
        if xq(i)==L2(j)
           bin=dec2bin(j,col);
           arr(a,:)=bin=='1';
           a=a+1;
        end
    end
end
z=arr;
end
%gia to erwthma 2 ws enallaktiki lysh