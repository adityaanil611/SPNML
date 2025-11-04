// Experiment 11: Fourth Order Runge-Kutta Method (RK4)
clc
clear all
close all
f = input('Enter function -');
f = inline(f);
x0 = input('Enter the value of x0 -');
y0 = input('Enter the value of y0 -');
h = input('Enter the value of h -');
xn = input('Enter the value of xn -');
n = (xn - x0) / h;
for i = 1:n
    k1 = h * f(x0, y0);
    k2 = h * f(x0 + h / 2, y0 + k1 / 2);
    k3 = h * f(x0 + h / 2, y0 + k2 / 2);
    k4 = h * f(x0 + h, y0 + k3);
    y = y0 + (k1 + 2 * k2 + 2 * k3 + k4) / 6;
    x0 = x0 + h;
    y0 = y;
end
fprintf('Result is %f\n', y)
