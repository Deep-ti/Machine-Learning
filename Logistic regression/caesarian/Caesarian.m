%% Initialization
clear ; close all; clc

%% Load Data
%  The first two columns contains the exam scores and the third column
%  contains the label.

data = load('caesarian.txt');
X = data(:, [1:end-1]); y = data(:, end);

%  Setup the data matrix appropriately, and add ones for the intercept term
[m, n] = size(X);

% Add intercept term to x and X_test
X = [ones(m, 1) X];

% Initialize fitting parameters
initial_theta = zeros(n + 1, 1);

%% ============= Part 3: Optimizing using fminunc  =============
%  In this exercise, you will use a built-in function (fminunc) to find the
%  optimal parameters theta.

%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost 
[theta, cost] = ...
	fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);

x(1) = 1;
x(2) = input("Enter the age : ");
x(3) = input("Enter the Delivery number: ");
x(4) = input("Enter the Delivary time {0, 1 ,2} :");
x(5) = input("Enter the blood pressure {0, 1, 2} : ");
x(6) = input("Does she have heart problem (1 for 'yes' / 0 for 'no') :");
prob = sigmoid(x * theta)

if (round(prob) == 1)
  fprintf('caesarian. \n');
else
  fprintf('no caesarian. \n');
end

% Compute accuracy on our training set
p = predict(theta, X);

fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);