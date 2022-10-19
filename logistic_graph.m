p0=.02;
tspan=0:0.001:20;
K=10;
N0=1;
[t,p]=ode23s(@(t,p) N0*p*(1-p./K),tspan,p0,odeset('AbsTol',1e-8,'RelTol',1e-10'));
plot(t,p)
grid on
xlabel('t')
ylabel('X')
title('Logistic graph')