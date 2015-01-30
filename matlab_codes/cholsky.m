clear all
clc
a=input('enter the matrix:');
[m,n]=size(a);
l=1;
for i=1:n
    for j=1:n
        if a(i,j)~=a(j,i)
            disp('The matrix is not symmetric');
            return;
        end
    end
end
b=[];
for i=1:m
    for k=1:i
        for j=1:i
            b(k,j)=a(k,j);
        end
    end
    if det(b)<=0
        disp('The matrix is not positive definite');
        return;
    end
end
lt=a;
for i=1:n
    for j=i:n-1
        if lt(i,i)==0
            disp('does not exist');
            return;
        end
        lt(j+1,:)=lt(j+1,:)-lt(j+1,i)*(lt(i,:)/lt(i,i));
    end
end
for i=1:m
    lt(i,:)=lt(i,:)/sqrt(lt(i,i));
end
lt
l=lt'

