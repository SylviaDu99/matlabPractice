
dxdt = @(x,v) v;
dvdt = @(x,v) x;


xvec = [0 1 2];
vvec = [2.0 2.5 3.0];
[x,v] = meshgrid(xvec, vvec);

clf
quiver(x,v, dxdt(x,v), dvdt(x,v));
hold on
axis equal
