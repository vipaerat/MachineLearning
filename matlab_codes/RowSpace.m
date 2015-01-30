clc
clear all
A=input('Enter The Coefficient Matrix')
B=A;
[m,n]=size(B);
p=min(m,n);
for i = 1:p
    if B(i,i)~=0 
    B(i,:)=B(i,:)/B(i,i);
    for j = i+1:m
        B(j,:)=B(j,:)-B(j,i)*B(i,:)/B(i,i);
    end
        for j= 1:i-1
            B(j,:)=B(j,:)-B(j,i)*B(i,:)/B(i,i);
    end
    end
end
B;
k=0;
for i=1:m
    for j=1:n
        if B(i,j)~=0
            k=k+1;
        D(k,:)=A(i,:);
        break
        end
    end
end
disp('The basis of Row Space is')
D

F=transpose(A);
C=F;
for i = 1:p
    if C(i,i)~=0 
    C(i,:)=C(i,:)/C(i,i);
    for j = i+1:n
        C(j,:)=C(j,:)-C(j,i)*C(i,:)/C(i,i);
    end
        for j= 1:i-1
            C(j,:)=C(j,:)-C(j,i)*C(i,:)/C(i,i);
       
    end
    end
end
C;
k=0;
for i=1:n
    for j=1:m
        if C(i,j)~=0
            k=k+1;
        E(k,:)=F(i,:);
        break
        end
    end
end
disp('The basis of Column Space is')
transpose(E)
    
    