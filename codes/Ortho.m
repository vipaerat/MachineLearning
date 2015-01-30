clc
clear all
A=input('A=')
[n,m]=size(A);

for i=1:n;
  B(i,:)=A(i,:);
   for j=1:i-1;;
      a=0;
b=0;
      for k=1:m
          a=a+A(i,k)*B(j,k);
          b=b+B(j,k)*B(j,k);
          
      end
      B(i,:)=B(i,:)-a*B(j,:)/b;
  end
  B(i,:)=B(i,:)/norm(B(i,:));
end
B
