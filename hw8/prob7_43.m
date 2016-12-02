%% Problem 7.43
clear; close all; clc;

%% Set up RVs

N=1000000; % Set number of samples
z=[0:0.1:20]; % define variable for horizontal axis
w=randn(3,N).*4 + 3; % generate uniform random samples
W = sqrt(w(1,:).^2 + w(2,:).^2 + w(3,:).^2);
F=zeros(1,length(z)); % initialize CDF estimate
for n=1:N % estimate CDF
F=F+(W(n)<z);
end
F=F/N;

%% Plots
% CDF
figure(1)
plot(z,F) % plot results
xlabel('x'); ylabel('F_X(x)')

% PDF
figure(2)
fx = diff(F);
plot(z(1:end-1),fx)
xlabel('x'); ylabel('f_X(x)')