clc
clear all
A=input('Enter a Matrix')
[m,n]=size(A);
if m~=n
    disp('The Matrix Is not a Square Matrix')
    return
else
B=poly(A);
C=roots(B);
for j=1:n;
    S(j,1)=0;
    for i=1:n;
    
    if C(i,1)==C(j,1);
        S(j,1)=S(j,1)+1;
    end;
    end;
end;end;

   disp('The Eigen Values are')
   C
   disp('The corresponding AM are')
  D=[C,S]