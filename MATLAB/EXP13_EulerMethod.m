// Experiment 13: Euler's Method
clc
clear all
close all
fprintf('Aniruddh -018\n');
fprintf('Exp-8 \n');
syms x y
f = input('Enter function f(x,y) = ');
f = inline(f);
x0 = input('Enter value of x0 = ');
y0 = input('Enter value of y0 = ');
xn = input('Enter value of xn = ');
h = input('enter step size h = ');
n = (xn - x0) / h;
for i = 1:n
    y = y0 + h * f(x0, y0);
    x0 = x0 + h;
    y0 = y;
end
fprintf('Solution of given Eqn at x = %f is %f\n', x0, y);
