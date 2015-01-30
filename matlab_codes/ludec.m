clear all 
clc
a=input('enter the matrix:');
[m,n]=size(a);
   for i=1:m
      for k=1:i
       for j=1:i
           b(k,j)=a(k,j);
       end
      end
       if det(b)==0
           disp('LU decomposition does not exist.');
           return;
       end
   end
l=zeros(n);
u=a;
for i=1:n
    if u(i,i)==0
       disp('LU decomposition does not exist.');
    return;
    end
    l(i,i)=u(i,i);
    u(i,:)=u(i,:)/u(i,i);
       for j=i:n-1
           l(j+1,i)=-u(j+1,i);
           u(j+1,:)=u(j+1,:)-u(j+1,i)*u(i,:);
       end
end
   u
   l