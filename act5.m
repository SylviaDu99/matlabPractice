clc
clear
load('fitdata.mat');

clf
plot(X,Y,'ko');
hold on
ylim([-.5 1]);

% A = -.015;
% B = .05;
% C = .3;
% 
% y = @(x) A*x.^2 + B*x + C;

mu = 0;
sigma2 = 1;

y = @(x) 1/(sqrt(2 * pi * sigma2)) * exp((-(x - mu).^2)/(2 * sigma2));

xs = linspace(-6,8);
plot(xs,y(xs));


RMS_error = 0;
for k = 1:Npts
    
    xdata = X(k);
    ydata = Y(k);
    
    RMS_error = RMS_error + (ydata - y(xdata))^2;
    
    plot( xdata,y(xdata),'k.','markersize',20);
    
    plot( [xdata xdata], [ydata y(xdata)], 'r', 'linewidth',2);
    
end

myf = @(x) sin(exp(x));
test = fminsearch(myf, 2);

adapter([0, 1]);
fmin = fminsearch(adapter, [0, 1])

function mymin = adapter(vars)
mymin = calcFitError(vars(1), vars(2));
end



