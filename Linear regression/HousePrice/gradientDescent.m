function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
  m = length(y); % number of training examples
  J_history = zeros(num_iters, 1);
  for iter = 1:num_iters
    predictions = X * theta;
    XErrors = (predictions - y).*X;
    delta = 1/m * sum(XErrors);
    theta = (theta' - alpha * delta)';
    J_history(iter) = costFunction(X, y, theta);
  end
end