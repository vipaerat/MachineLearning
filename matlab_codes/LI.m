


 A8=input('Enter The Coefficient Matrix')
[n,m]=size(A8);
if n==m
    a=det(A8)
    if a==0
        disp('The System of Equations is Linearly Dependent.')
    else 
        disp('The System of Equations is Linearly Independent.')
    end
    
elseif n~=m
     b=rank(A8)
     if b<n
         disp('The System of Equations is Linearly Dependent.')
     else 
         disp('The System of Equations is Linearly Independent.')
     end
end

    