// Experiment 14: Modified Euler's Method (Heun's Method)
clc
clear all
close all
fprintf('Aniruddh-018 \n');
syms x y
f = input('Enter function f(x,y) = ');
f = inline(f);
x0 = input('enter x0 - ');
y0 = input('Enter y0 - ');
xn = input('Enter xn - ');
h = input('enter step size h -');
n = (xn - x0) / h;
for i = 1:n
    x = x0 + h;
    yr = y0 + h * f(x0, y0);
    for j = 1:10
        y = y0 + (h / 2) * (f(x0, y0) + f(x, yr));
        yr = y;
    end
    x0 = x;
    y0 = y;
end
fprintf('Solution is %f\n', y);
