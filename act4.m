clc
clear

% Define a matrix A and a vector x
A = [-0.125 -1.875
     -0.5    0.375];
% x = [-0.8; 1];

% x = randn(2, 1);

% x = [5;2];

[V,D] = eig(A);

 x = V(:, 1);

% x = V(:, 2);

% Configure the plot window
clf
shg
xlim([-5 5]);
ylim([-5 5]);
daspect([1 1 1]);
grid on
hold on

% Plot x, Ax, A^2x, ..., A^(10)x
for jj = 1:15
    h = compass(x(1),x(2));
    set(h,'Linewidth',2)
    pause(.1)
    x = A*x;
end


