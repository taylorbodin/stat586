clear; close all; clc;

P_binom = @(x) nchoosek(10,x).*.2^x.*(1-.2)^(10-x);
P_pois = @(x,a) a^x/factorial(x)*exp(-1);

x = 0:10;

for l = 0:10
    p_b(l+1) = P_binom(l);
    p_p(l+1) = P_pois(l,2);
end

figure(1)
h1 = stem(x,p_b)
h1.Marker = 'diamond';
h1.Color = 'red';
h1.LineStyle = '-';

hold on
h2 = stem(x,p_p);
h2.Color = 'blue';
h2.LineStyle = '--';

title('Binomial Distribution vs. Poisson Distribution for $p = \frac{1}{5}$', 'interpreter', 'latex')
xlabel('Number of Successes')
ylabel('$P(X = x)$', 'interpreter', 'latex')
legend('Binomial Distribution','Poisson Distribution')
