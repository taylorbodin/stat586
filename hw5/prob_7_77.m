%% Problem 5.77

%% Setup
clear; close all; clc

trials = 1000000;

X = randn(trials,1) + 1; % Mean 1 - Variance = 1
Y = randn(trials,1); % Mean = 0 - Variance = 1

%% Experiment

hits = sum((X.^2 + Y.^2) <= 1,1);
p_exp = hits/trials;

%% Theory
fxy = @(x,y) (1/(2*pi)).*exp(-((x.*cos(y)-1).^2+(x.*sin(y)).^2)./2).*x;

p_theory = integral2(fxy,0,1,0,2.*pi);


disp(p_exp);
disp(p_theory);