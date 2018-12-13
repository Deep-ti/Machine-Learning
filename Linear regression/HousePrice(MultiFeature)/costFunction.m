function J = costFunction(X, y, theta)
  m = length(y);
  % You need to return the following variables correctly 
  J = 0;
  predictions = X * theta;
  sqrErrors = (predictions - y).^2;

  J = (1/(2*m)) * sum(sqrErrors);
end
