clc;
clear;

% coefficients of quadratic polynomial p(x) = a*x^2 + b*x + c
a = 1;
b = -5;
c = 6;

discriminant = b.^2 - 4*a*c;
root1 = (-b - sqrt(discriminant))/(2*a)
root2 = (-b + sqrt(discriminant))/(2*a)