clc
clear all
a=input('enter a square matrix:')
[c,d]=size(a);
if c==d
    x=real(roots(poly(a)));
[k,l]=size(x);
for i=1:k
    for j=1:k
        if (i~=j)&&(x(i,1)>x(j,1)&&j>i)
                c=x(i,1);
                x(i,1)=x(j,1);
                x(j,1)=c;
        end
    end
end
x
am=[];
b=1;
l=1;
i=b;
[k,l]=size(x);
for i=i:k
    for j=i:k
        if i~=j&&x(i,1)==x(j,1)
            b=b+1;
        end
    end
    am(l,1)=b;
    l=l+1;
    b=i;
    b=0;
end
am
else
    disp('It is not a square matrix')
end

