function dX = lorenz(t,X,Beta)
% X = [x y z]'
% Beta = [sigma gamma beta]
% the system
dX = [
Beta(1)*(X(2) - X(1));
X(1)*(Beta(2) - X(3)) - X(2);
X(1)*X(2) - Beta(3)*X(3);
];
