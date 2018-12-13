
%% Clear and Close Figures
clear ; close all; clc

fprintf('Loading data ...\n');

%% Load Data
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Scale features and set them to zero mean
fprintf('Normalizing Features ...\n');

X = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];

fprintf('Running gradient descent ...\n');

% Choose some alpha value
alpha = 0.000001;
num_iters = 400;

% Init Theta and Run Gradient Descent 
theta = zeros(3, 1);
[theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters);

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf('theta =  %f \n', theta);
fprintf('\n');

%user input prediction
x(1, 1) = 1;
x(1, 2) = input('Enter the size of house: ');
x(1, 3) = input('Enter the number of bedrooms in the house:  ');
Y = x * theta;
fprintf('You can sell the house in $ %f \n', Y);