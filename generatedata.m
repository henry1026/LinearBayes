function a=generatedata(n)
[T,L1,L2]=tarparadam();
for j=1:n
    tt=randi(3,1,10);
    tc=randi(6,1,10);
    for i=1:10
        %a(i,1,j)=unidrnd(3);%任务类型
        a(i,1,j)=tt(i);
        a(i,2,j)=tc(i);%目标类型
        v=randi(T(tc(i),2));%价值索引
        a(i,3,j)=L1(tc(i),v);
        d=randi(T(tc(i),3));%摧毁概率索引
        a(i,4,j)=L2(tc(i),d);
        a(i,5,j)=T(a(i,2,j),a(i,1,j)*2+2);%a
        a(i,6,j)=T(a(i,2,j),a(i,1,j)*2+3);%b
        a(i,7,j)=T(a(i,2,j),10);%c
        a(i,8,j)=1/(T(tc(i),2)*T(tc(i),3));
    end
end
