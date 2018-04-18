clear;
clc;
tic
n=800;
for k=1:100
    a=generatedata(n);
    for i=1:n
        %as(:,:,i,k)=sortby2173(a(:,:,i));
        as1(:,:,i,k)=sortby3241(a(:,:,i));
    end
end 
toc