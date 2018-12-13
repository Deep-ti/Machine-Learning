function [J, grad] = costFunction(theta, X, y)
  m = length(y);
  J = 0;
  grad = zeros(size(theta));
  prediction = sigmoid(X * theta);
  J = (1/m) * (-1 * y' * log(prediction) - (1 - y)' * log(1 - prediction));
  grad = (1/m) * X' * (prediction - y);
end