%% Question 1

oil_future_1 = 22;
oil_future_2 = 23;
rate_1 = .06;
rate_2 = .065;

PV = oil_future_1* exp(-rate_1 * 1) + oil_future_2* exp(-rate_2 * 2);

year_2_swap = (PV - oil_future_2* exp(-rate_2 * 2)) / exp(rate_1 * 1);

syms x

year_2 = x * exp(rate_1 * 1) + oil_future_2* exp(-rate_2 * 2) == PV;

X = linsolve(year_2);