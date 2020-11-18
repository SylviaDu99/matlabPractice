clear;
M = [-0.835 .716; -.716 -0.835];
[V, D] = eig(M);
D = abs(D);
D
x = randn(2, 1);
clf
shg
daspect([1 1 1]);
grid on
hold on

% Plot x, M!x, A^2x, ..., A^(10)x
for jj = 1:20
    h = compass(x(1),x(2));
    set(h,'Linewidth',2)
    pause(.1)
    x = M*x;
end
