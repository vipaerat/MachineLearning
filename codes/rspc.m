clear all
clc
a=input('enter the elements of set:')
c=a;
[m,n]=size(c);
for i=1:min(m,n)
    if c(i,i)==0
        for k=i:m-1
            if c(k+1,i)~=0
                b=c(k+1,:);
                c(k+1,:)=c(k,:);
                c(k,:)=b;
            end
        end
    end
    if c(i,i)~=0
                c(i,:)=c(i,:)/c(i,i);
        for j=1:m
            if i~=j
        c(j,:)=c(j,:)-c(j,i)*c(i,:);
            end
        end
    end
end        
c
disp('c is the row reduced echlon form of a')
a;
k=1;
for i=1:m
    if c(i,i)~=0
        colm(k,:)=a(:,i);
        k=k+1;
    end
end
colm
disp('colm is the coloumn space of a');
d=a';
for i=1:min(m,n)
    if d(i,i)==0
        for k=i:m-1
            if d(k+1,i)~=0
                b=d(k+1,:);
                d(k+1,:)=d(k,:);
                d(k,:)=b;
            end
        end
    end
    if d(i,i)~=0
                d(i,:)=d(i,:)/d(i,i);
        for j=1:m
            if i~=j
        d(j,:)=d(j,:)-d(j,i)*d(i,:);
            end
        end
    end
end
d;
k=1;
for i=1:m
    if d(i,i)==1
        row(k,:)=a(i,:);
        k=k+1;
    end
end
row
disp('row is row space of a');