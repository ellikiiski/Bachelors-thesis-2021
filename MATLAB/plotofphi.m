%% Plot of Euler's totient function and limits
clear all
close all

from = 9900;
to = 10000;
gamma = 0.57721566490153286;
n = from:to;
phi = totientfunction(from,to);
upper = n-1;
lower = n./log(log(n))./exp(gamma);
figure
hold on
plot(n,phi,'-');
plot(n,upper);
plot(n,lower);