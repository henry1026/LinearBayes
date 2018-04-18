function [param11,param22,param33,param44]=bayes(as,n)
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
for j=1:3
    [nn param11(j)]=max(p1(:,j));
end

for j=1:6
    [nn param22(j)]=max(p2(:,j));
end

for j=1:10
    [nn param33(j)]=max(p3(:,j));
end

for j=1:5
    [nn param44(j)]=max(p4(:,j));
end
%对每个属性值对应序号存在重复的进行处理
%1111
for i=1:5
    temps=find(param11==i);
    if(length(temps)>1)
        [zmax,loc]=max(p1(i,temps));
        temps(loc)=[];
        param11(temps)=aram1(temps)+1;
    end
end
for i=10:-1:6
    temps=find(param11==i);
    if(length(temps)>1)
        [zmax,loc]=max(p1(i,temps));
        temps(loc)=[];
        param11(temps)=param11(temps)-1;
    end
end

%2222
for i=1:5
    temps=find(param22==i);
    if(length(temps)>1)
        [zmax,loc]=max(p2(i,temps));
        temps(loc)=[];
        param22(temps)=param22(temps)+1;
    end
end
for i=10:-1:6
    temps=find(param22==i);
    if(length(temps)>1)
        [zmax,loc]=max(p2(i,temps));
        temps(loc)=[];
        param22(temps)=param22(temps)-1;
    end
end

%3333
for i=1:5
    temps=find(param33==i);
    if(length(temps)>1)
        [zmax,loc]=max(p3(i,temps));
        temps(loc)=[];
        param33(temps)=param33(temps)+1;
    end
end
for i=10:-1:6
    temps=find(param33==i);
    if(length(temps)>1)
        [zmax,loc]=max(p3(i,temps));
        temps(loc)=[];
        param33(temps)=param33(temps)-1;
    end
end

%44444
for i=1:5
    temps=find(param44==i);
    if(length(temps)>1)
        [zmax,loc]=max(p4(i,temps));
        temps(loc)=[];
        param44(temps)=param44(temps)+1;
    end
end
for i=10:-1:6
    temps=find(param44==i);
    if(length(temps)>1)
        [zmax,loc]=max(p4(i,temps));
        temps(loc)=[];
        param44(temps)=param44(temps)-1;
    end
end