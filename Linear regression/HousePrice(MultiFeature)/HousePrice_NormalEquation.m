%% Clear and Close Figures
clear ; close all; clc

fprintf('Loading data ...\n');

%% Load Data
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

fprintf('Solving with normal equations...\n');

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');

%user input prediction
x(1, 1) = 0;
x(1, 2) = input('Enter the size of house: ');
x(1, 3) = input('Enter the number of bedrooms in the house:  ');
Y = x * theta;
fprintf('You can sell the house in $ %f \n', Y);