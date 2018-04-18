function [param11,param22,param33,param44]=bayes2(as,n)
%bayes
%n=80000;
l=zeros(4,n,10);
for i=1:10%第i位的第一到第四属性的所有值
    l(1,:,i)=as(i,1,1:n);
    l(2,:,i)=as(i,2,1:n);
    l(3,:,i)=as(i,3,1:n);
    l(4,:,i)=as(i,4,1:n);
end
for i=1:10
    for j=1:3
        p1(i,j)=length(find(l(1,:,i)==j))/n;
    end
    
    for j=1:6
        p2(i,j)=length(find(l(2,:,i)==j))/n;
    end
    
    for j=1:10
        p3(i,j)=length(find(l(3,:,i)==j))/n;
    end
    
    for j=1:5
        k=j+4;
        p4(i,j)=length(find(l(4,:,i)*10==k))/n;
    end
end
%获取每个属性值对应的序号
ss=1:10;
for j=1:3
    param11(j)=sum(p1(:,j).*ss');
end

for j=1:6
    param22(j)=sum(p2(:,j).*ss');
end

for j=1:10
    param33(j)=sum(p3(:,j).*ss');
end

for j=1:5
    param44(j)=sum(p4(:,j).*ss');
end