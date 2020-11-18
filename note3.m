r = 2;
f = @(p) r * p .*(1-p);
ps = linspace(0, 1);
hold on
plot(ps, f(ps))
plot(ps, ps)

axis equal;
axis square;
grid on;

p0 = 0.9;
pcur = f(p0);

plot([p0, p0], [0, pcur], 'k')
plot([p0, pcur], [pcur, pcur], 'k')

for n = 1:100
    pnext = f(pcur);
    plot([pcur, pcur], [pcur, pnext], 'k')
    plot([pcur, pnext], [pnext, pnext], 'k')
    pcur = pnext;
end
