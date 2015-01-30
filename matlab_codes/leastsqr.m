clear all
clc
a=input('enter the ods:');
b=input('enter the coefficent matrix');
[m,n]=size(a);
A=a'*a
B=a'*b
 lt=[];
 lt=A;
 [m,n]=size(A);
   for i=1:n
       for j=1:n
           if lt(i,i)~=0&&j>i
              lt(j,:)=lt(j,:)-lt(j,i)*(lt(i,:)/lt(i,i));
           end
           if lt(i,i)==0
               disp('does not exist');
               return;
           end
       end
   end
for i=1:m
    lt(i,:)=lt(i,:)/sqrt(lt(i,i));
end
lt
l=lt'
%forward substitution%
y=zeros(m,1);
y(1,1)=B(1,1)/l(1,1);
s=0;
for i=2:m
    for j=1:m
        s=s+l(i,j)*y(j,1);
    end
    y(i,1)=(B(i,1)-s)/l(i,i);
    s=0;
end
y
%backward substitution%
s=0;
x=zeros(m,1);
x(m,1)=y(m,1)/lt(m,m);
for i=1:m-1
    for j=1:m
        s=s+lt(m-i,m-j+1)*x(m-j+1,1);
    end
    x(m-i,1)=(y(m-i,1)-s)/lt(m-i,m-i);
    s=0;
end
x