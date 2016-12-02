%% Problem 7.27
clear; close all; clc;

%% Setup
n = 15;
y = 25:35;
markov = n./y;
chebys = n./(y-n).^2;
cherno = exp(n-y).*(y./n).^n;
centlim = qfunc((y-n)./sqrt(n));
prob = cumsum(y.^(n-1).*exp(-y)/factorial(n-1));

%% Plot
figure(1)
semilogy(y,markov,y,chebys,y,cherno,y,centlim,y,prob);
legend('Markov', 'Chebyshev', 'Chernoff', 'Central Limit', 'Actual');
title('Bound Comparison in Log Space');

%%
figure(2)
plot(y,markov,y,chebys,y,cherno,y,centlim,y,prob);
legend('Markov', 'Chebyshev', 'Chernoff', 'Central Limit', 'Actual');
title('Bound Comparison in Linear Space');