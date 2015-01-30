clc
clear all
F=inline('[x+y;2*x-y;3*x+5*y]')
b=[1 1;0 -1];
c=[1 1 1;1 0 1;0 0 1];
B=transpose(b)
C=transpose(c)
d=feval(F,1,1);
e=feval(F,0,-1);
C=inv(C);
x=C*d;
y=C*e;
T=[x y]