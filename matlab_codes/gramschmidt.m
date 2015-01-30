clc
clear all
basis=input('enter linearly independent vectors:');
[m,n]=size(basis);
ortho=zeros(n);
for i=1:n
    ortho(:,i)=basis(:,i);
    j=0;
    while(j<i-1)
        ortho(:,i)=ortho(:,i)-((dot(basis(:,i),ortho(:,j+1))/dot(ortho(:,j+1),ortho(:,j+1)))*ortho(:,j+1));
        j=j+1;
    end
end
ortho
orthonorm=[];
for i=1:n
    orthonorm(:,i)=ortho(:,i)/norm(ortho(:,i));
end
orthonorm