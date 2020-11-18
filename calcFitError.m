function sum_squares_error = calcFitError(mu, sigma2)
load('fitdata.mat');
y = @(x) 1/(sqrt(2 * pi * sigma2)) * exp((-(x - mu).^2)/(2 * sigma2));
sum_squares_error = 0;
for k = 1:Npts
    xdata = X(k);
    ydata = Y(k);
    sum_squares_error = sum_squares_error + (ydata - y(xdata))^2;
end
end