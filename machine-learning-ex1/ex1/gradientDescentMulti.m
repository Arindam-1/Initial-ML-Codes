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
    % X is        m   X (n+1) matrix
    % y is        m   X 1     matrix
    % theta is   (n+1)X 1     matrix
    % X*theta is  m	X 1	   matrix
    	

	% Can use : theta = theta - (alpha/m)*((X*theta - y )'*X)' ;
	% Better option :
   
   theta = theta - (alpha/m)*(X'*(X*theta - y)) ;








    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
