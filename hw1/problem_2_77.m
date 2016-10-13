function flips = problem_2_77(p)

trial = 2; % You'll get at least one flip
flips = 0;

while((p <= trial) & (flips < 10e6))
    trial = rand();
    flips = flips + 1;
end

return