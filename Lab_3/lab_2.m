call_op_n = 1000;
T = 8/12;
r = .12;
sigma = .18;
S0 = 8;
k = 8;

d1 = (log(S0/k)+(sigma^2/2)*T)/(sigma * sqrt(T));

delta = exp(-r*T) * normcdf(d1);

delta_short = -call_op_n * delta;

disp(d1);
disp(delta);
disp(delta_short);