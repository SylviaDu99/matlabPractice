clf
hold on; box on
daspect([1 1 1]);
axis([0 2 0 1]);

xticks(0:.2:2);
yticks(0:.2:1);

B = [0.4 0.6; 0.8 0.2; 1.4 0.4; 1.6 0.6]; % input B here!

plot(B(:,1), B(:,2),'ko','markersize',20,'markerfacecolor','w','linewidth',1.5);