function corratio=xianxingceshi(b,as1)
n=800;
%a=generatedata(n);
% for k=1:n
%     as1(:,:,k)=sortby2173(a(:,:,k));
% end
data_test=process2(as1,n);
for k=1:n
    re(:,k)=b(1)+b(2)*data_test(:,1,k)+b(3)*data_test(:,2,k)+b(4)*data_test(:,3,k)+b(5)*data_test(:,4,k);
end

l=0;
for i=1:n
    data_tongji(:,1,i)=1:10;
    data_tongji(:,2,i)=re(:,i);
    sorted=sortrows(data_tongji(:,:,i),2);
    for j=1:10
        if(sorted(j,1)==j)
            l=l+1;
        end
    end
end
corratio=l/(n*10);