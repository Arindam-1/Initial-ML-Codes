function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% theta is 2x1 matrix
% X is mx2 matrix
% y is mx1 matrix

hypothesis = X*theta ; % hypothesis = theta0*x0 + theta1*x1 and is a mx1 matrix
sqrerrors = (hypothesis - y).^2 ; 
J = (1/(2*m))*sum(sqrerrors) ;



% =========================================================================

end
