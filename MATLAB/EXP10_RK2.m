// Experiment 10: Second Order Runge-Kutta Method (RK2)
clc
clear all
close all
disp('Aniruddh-018')
syms x y
f = input('Enter function f(x,y) -');
f = inline(f);
x0 = input('Enter value of x0 - ');
y0 = input('Enter value of y0 - ');
h = input('Enter value of stepsize - ');
xn = input('Enter value of xn - ');
n = (xn - x0) / h;
for i = 1:n
    k1 = h * f(x0, y0);
    k2 = h * f(x0 + h, y0 + k1);
    y = y0 + (k1 + k2) / 2;
    x0 = x0 + h;
    y0 = y;
end
fprintf('The output result is %f\n', y);
