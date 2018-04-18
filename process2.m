function data=process2(data1,n)
data=data1(:,[1 2 3 4],:);
global param1;
global param2;
global param3;
global param4;
for i=1:n
    data(:,1,i)=param1(data(:,1,i));
    data(:,2,i)=param2(data(:,2,i));
    data(:,3,i)=param3(data(:,3,i));
    data(:,4,i)=param4(data(:,4,i)*10-4);
end