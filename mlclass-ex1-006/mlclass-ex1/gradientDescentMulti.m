function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    temp=zeros(size(theta,1),1);

    for i=1:size(theta,1)
        
        for j=1:m
            temp(i)=temp(i)+(X(j,:)*theta-y(j))*X(j,i);
        end

        temp(i)=temp(i)/m;
        temp(i)=theta(i)-alpha*temp(i);
    end

    theta=temp;

    J = computeCostMulti(X, y, theta);
    % ============================================================

    % Save the cost J in every iteration    
    
    if (iter-1)> 0 && J_history(iter-1)<J
        fprintf('not converging...\n')
        break;
    else
        J_history(iter)=J;
    end

end

end
