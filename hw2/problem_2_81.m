function comb = problem_2_81(n,k)

num = n;

for l = 1:k-1
    num = num*(n-l);
end

den = factorial(k);

comb = num/den;

return
    