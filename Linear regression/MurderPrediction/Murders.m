%% Clear and Close Figures
clear ; close all; clc

fprintf('Loading data ...\n');

%% Load Data
data = load('Murders.txt');
X = data(:, 1:end-1);
y = data(:, end);
m = length(y);
n = length(X(1,:));

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
x(1, 1) = 1;
x(1, 2) = input('Enter the number of inhabitants: ');
x(1, 3) = input('Enter the percent of population below income $5000:  ');
x(1, 4) = input('Enter the percent unemployed: ');
Y = x * theta;
fprintf('Murders per annum per 1,000,000 inhabitants %f \n', Y);