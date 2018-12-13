function p = predict(theta, X)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

z = zeros(m,1);
g = zeros(m,1);
z = X * theta;
p = round(sigmoid(z));

end
