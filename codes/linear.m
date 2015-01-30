clear all
clc
a=input('enter the elements of set:');
c=a;
[m,n]=size(c);
b=[];
for i=1:m
if c(i,i)==0
 for k=1:m-1
    c(k+1,:)=b;
    c(k+1,:)=c(k,:);
    c(k,:)=b;
 end
     c(i,:)=c(i,:)/c(i,i);
    for j=1:n-1  
        c(j+1,:)=c(j+1,:)-c(j+1,i)*c(i,:);
    end
elseif c(i,i)~=0
    c(i,:)=c(i,:)/c(i,i);
     for j=1:n-1
         if j~=i
        c(j,:)=c(j,:)-c(j,i)*c(i,:);
         end
     end
end
end
c
disp('c is the row reduced echlon form of a')
a;
j=1;

for i=1:m
    if c(i,i)~=0
        r(j,:)=a(:,i);
        j=j+1;
    end
end
r
disp('r is the coloumn space of a');
d=a'
for i=1:min(m,n)
    d(i,:)=d(i,:)/d(i,i);
     for j=1:m-1
         if j~=i
        d(j,:)=d(j,:)-d(j,i)*d(i,:)
         end
     end
end
d