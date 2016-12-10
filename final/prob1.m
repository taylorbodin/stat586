%% Final - Problem 1
% Taylor Bodin

%% Setup up Random Variables
X = randn(1000)+1;
Y = randn(1000)+2;

U = X + Y;
V = X - Y;

%% Descriptive Stats

% X
mu = mean(X); % Should be 1
mu = mean(mu);

std_x = std(X);
std_x = std(std_x);
var_x = std_x^2;

% Y
tau = mean(Y); % Should be 2
tau = mean(tau);

std_y = std(Y);
std_y = std(std_y);
var_y = std_y^2;

% U
mu_u = mean(U);
mu_u = mean(mu_u);

std_u = std(U);
std_u = std(std_u);
var_u = std_u^2;

% V
mu_v = mean(V);
mu_v = mean(mu_v);

std_v = std(V);
std_v = std(std_v);
var_v = std_v^2;

%% Plots
figure(1)
histogram(U,'Normalization','PDF')
title('PDF of U')

figure(2)
histogram(V,'Normalization','PDF')
title('PDF of V')