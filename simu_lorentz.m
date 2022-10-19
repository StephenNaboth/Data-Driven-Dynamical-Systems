% Parameters - chaotic
Beta = [20; 28; 8/3];
% Initial Condition
X0 = [0; 1; 20];
dt = 0.004; % time difference
tspan = dt:dt:60;
options = odeset('RelTol', 1e-12,'AbsTol', 1e-12*ones(1,3));
% solve the system usin ode45
[t, X] = ode45(@(t, X) lorenz(t,X,Beta), tspan, X0, options);
plot3(X(:,1),X(:,2),X(:,3));
grid on
xlabel('x')
ylabel('y')
zlabel('z')
title('Lorenz System - chaotic trajectories')




