clc;
clear;

a = 1;
b = sqrt(2);
c = 0.5;
tol = 10^(-12);

discriminant = b^2 - 4*a*c;

if discriminant >= tol
    disp('There are two real roots')
    root1 = (-b - sqrt(discriminant))/(2*a);
    root2 = (-b + sqrt(discriminant))/(2*a);
    roots = [root1 root2];
elseif abs(discriminant) < tol
    disp('There is one real root')
    root1 = -b/(2*a);
    roots = [root1];
else
    disp('There are no real roots')
    roots = [];
end

disp(roots)