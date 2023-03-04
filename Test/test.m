%% Progress Test

f = 100;
c = 3;
rf = .05; % 5 percent

s0 = .79;
k = 0.84;
sigma = 0.12;
r = 5/100;
T = 8/12;
q1 = .04;
q2 = .06;

d1 = (log(s0/k) + (r+(sigma^2 / 2) * T)) / (sigma * sqrt(T));

d1q = (log(s0/k) + (q2 - q1 +(sigma^2 / 2) * T)) / (sigma * sqrt(T));

nd1 = normcdf(d1);
nd1q = normcdf(d1q);

d2 = d1 - sigma* sqrt(T);

delta = exp(-q1*T)*nd1q;
