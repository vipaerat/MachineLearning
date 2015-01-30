clc
clear all
F=inline('[x;-y]')
b=input('Enter B');
c=input('Enter C');
B=transpose(b)
C=transpose(c)
d=feval(F,B(1,1),B(2,1));
e=feval(F,B(1,2),B(2,2));
D=inv(C);
x=D*d;
y=D*e;
TBC=[x y]
d=feval(F,C(1,1),C(2,1));
e=feval(F,C(1,2),C(2,2));
E=inv(B);
x=E*d;
y=E*e;
TCB=[x,y]
d=feval(F,B(1,1),B(2,1));
e=feval(F,B(1,2),B(2,2));
D=inv(B);
x=D*d;
y=D*e;
TBB=[x y]