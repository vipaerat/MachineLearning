clear all
clc
a=input('Enter the matrix:');
[m,n]=size(a);
s=0;
for i=1:m
    for j=1:n
    s=s+a(i,j);
    if s>=2*a(i,i)
        disp('The matrix is not diagonally dominant scheme will not converge.');
        return;
    end
    end
end
b=input('Enter the coefficent matrix:');
x=input('Enter the initial solution:');
n=input('Enter the no. of iteration:');

l=zeros(m);
u=zeros(m);
d=zeros(m);
        
for i=1:m
    for j=1:m
        if i==j
            d(i,i)=a(i,i);
        end
        if i>j
           l(i,j)=a(i,j);
       end
       if i<j
           u(i,j)=a(i,j);
       end
    end
end
h=-1*inv(d)*(l+u)
c=inv(d)*b
for i=1:n
   x=h*x+c
end
x