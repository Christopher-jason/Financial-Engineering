%% Question 1

r = .10;
sigma = .25;
T = .5;


d1 = (log(1)+(r+(sigma^2/2))*T)/(sigma*sqrt(T));

delta = normcdf(d1);

disp(d1);
disp(delta);

%% Question 5

S0 = .80;
k = .81;
r_us = .08;
r_jp = .05;
sigma = .15;
T = 7/12;

d1 = (log(S0/k)+(r_us - r_jp+(sigma^2/2))*T)/(sigma*sqrt(T));

d2 = d1 - sigma * sqrt(T);

nd1 = normcdf(d1); nd2 = normcdf(d2);
disp(nd1); disp(nd2);

% Delta

delta = exp(-r_jp*T)*nd1;

disp("delta");
disp(delta);

% Gamma

nd1p = (1/sqrt(2*pi))*exp(-(d1^2/2));

gamma = (nd1p*exp(-r_jp*T)/(S0 * sigma * sqrt(T)));

disp("gamma");
disp(gamma);

% Vega

vega = S0 * sqrt(T) * nd1p * exp(-r_jp*T);
disp("Vega");
disp(vega);

%Theta

theta = - ((S0*nd1p*sigma*exp(-r_jp*T))/(2*sqrt(T))) + (r_jp * S0*nd1*exp(-r_jp*T)) - (r_us *k* exp(-r_us*T) * nd2);
disp("Theta");
disp(theta);

%Rho

rho = k * T * exp(-r_us*T) * nd2;
disp("Rho");
disp(rho);


