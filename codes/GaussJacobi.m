function [ X] = GaussJacobi( A,B,Y,n,e )
A=input('Matrix')
B=input('Answer')
[m,m]=size(A);
S=zeros(m,1);
for i=1:m
    for j=1:m
    S(i)=S(i)+A(i,j)
    end
    if S(i)>2*A(i,i)
        disp('Not Diag Dom')
        return
    end
end
e=input('Error')
n=input ('Iterations')
Y=input ('Intial Value')
count = 0;
for p=1:n
    count=count+1;
    Z=Y;
    for i=1:m
        a=0;
        for j=1:m
            if i~=j
               a=a-A(i,j)*Z(j);
            end
        end
            Y(i)=(a+B(i))/A(i,i);
    end
     W=Y-Z;
     if norm(W)<e
         break
     end
end
X=Y
count
end
        
        