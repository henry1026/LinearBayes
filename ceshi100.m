n=80000;
global param1;
global param2;
global param3;
global param4;

%sorteddata=data1_sorted_80000(:,:,:,2);%93.7
sorteddata=data2_sorted_80000(:,:,:,5);%90.2
[param1,param2,param3,param4]=bayes(sorteddata,n);
data_train=process2(sorteddata,n);
X=ones(10*n,5);
for i=1:n
    X(10*i-9:10*i,2:5)=data_train(:,:,i);
    Y(10*i-9:10*i)=1:10;
end
[b,bint,r,rint,s]=regress(Y',X,0.05);

for i=1:100
    ratiore(i)=xianxingceshi(b,as1(:,:,:,i));
end