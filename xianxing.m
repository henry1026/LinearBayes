n=60000;
global param1;
global param2;
global param3;
global param4;
for k=1:20
    sorteddata=data2_sorted_60000(:,:,:,k);
    [param1,param2,param3,param4]=bayes(sorteddata,n);
    data_train=process2(sorteddata,n);
    X=ones(10*n,5);
    for i=1:n
        X(10*i-9:10*i,2:5)=data_train(:,:,i);
        Y(10*i-9:10*i)=1:10;
    end
    [b,bint,r,rint,s]=regress(Y',X,0.05);
    ratiore(k)=xianxingceshi(b,as);
end