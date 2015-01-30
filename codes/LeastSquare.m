clc
clear all
C=input('A=')
A=C'*C
[m,n]=size(A);

if n~=m
        return
        end
if A==transpose(A)
 
    L=zeros(m);
    for i=1:n
        B=A(1:i,1:i);
        if det(B)<0||det(B)==0
            return
           
        end
    end
    for i=1:n
        L(i,i)=A(i,i);
        for j=1:i-1
            L(i,i)=L(i,i)-(L(i,j))^2;
        end
        L(i,i)=(L(i,i))^(1/2);
        
        for k=i+1:m
            L(k,i)=A(k,i);
            for j=1:i-1
                L(k,i)=L(k,i)-L(k,j)*L(i,j);
            end
            L(k,i)=L(k,i)/L(i,i);
        end
    end
else
        return
end
B=input('B=')
B=C'*B
Z=inv(L)*B
X=inv(L')*Z
