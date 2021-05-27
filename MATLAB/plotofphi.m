%% Plot of Euler's totient function and limits
clear all
close all

% MISTA MIHIN
% isot n
FROM = 9900;
TO = 10000;
% pienet n
from = 1;
to = 100;
% EULERIN-MASCHERONIN VAKION LIKIARVO
gamma = 0.57721566490153286;
% LASKETAAN FUNKTION ARVOT (JA RAJOJEN ARVOT)
% isot n
N = FROM:TO;
PHI = totientfunction(FROM,TO); % funktion arvot
UPPER = N-1; % ylarajan arvot
LOWER = N./log(log(N))./exp(gamma); % alarajan arvot
% pienet n
n = from:to;
phi = totientfunction(from,to); % funktion arvot
upper = n-1; % ylarajan arvot
lower = n./log(log(n))./exp(gamma); % alarajan arvot

% PLOTATAAN ALKUPÄÄ ILMAN RAJOJA
figure
plot(n,phi,'-k*')
xlabel('n')
ylabel('\phi(n)')
%legend('\phi-function, n\in[1,100]', 'location', 'northwest')
% PLOTATAAN ARVOJA RAJOJEN KANSSA
figure
% pienia n
subplot(2,1,1)
hold on
plot(n,upper,'linewidth',2);
plot(n,lower,'linewidth',2);
plot(n,phi,'-k*');
legend('upper growth rate', 'lower growth rate', 'location', 'northwest')
% isoja n
subplot(2,1,2)
hold on
plot(N,UPPER,'linewidth',2);
plot(N,LOWER,'linewidth',2);
plot(N,PHI,'-k*');
axis ([9900 10000 1000 11000])

