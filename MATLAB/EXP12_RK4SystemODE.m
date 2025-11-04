// Experiment 12: RK4 for Systems of First Order ODEs
clc
clear all
close all
disp('Aniruddh-018')
syms x y z
f1 = input('Enter dy/dx as function f1(x,y,z) -');
f2 = input('Enter dz/dx as function f2(x,y,z) -');
f1 = inline(f1, 'x', 'y', 'z');
f2 = inline(f2, 'x', 'y', 'z');
x0 = input('Enter initial value x0 -');
y0 = input('Enter initial value of y0 -');
z0 = input('Enter initial value of z0 -');
xn = input('Enter value of xn -');
h = input('Enter step size h -');
n = (xn - x0) / h;
for i = 1:n
    k1 = h * f1(x0, y0, z0);
    l1 = h * f2(x0, y0, z0);
    k2 = h * f1(x0 + h / 2, y0 + k1 / 2, z0 + l1 / 2);
    l2 = h * f2(x0 + h / 2, y0 + k1 / 2, z0 + l1 / 2);
    k3 = h * f1(x0 + h / 2, y0 + k2 / 2, z0 + l2 / 2);
    l3 = h * f2(x0 + h / 2, y0 + k2 / 2, z0 + l2 / 2);
    k4 = h * f1(x0 + h, y0 + k3, z0 + l3);
    l4 = h * f2(x0 + h, y0 + k3, z0 + l3);
    y = y0 + (k1 + 2 * k2 + 2 * k3 + k4) / 6;
    z = z0 + (l1 + 2 * l2 + 2 * l3 + l4) / 6;
    x0 = x0 + h;
    y0 = y;
    z0 = z;
end
fprintf('At x = %f, y = %f, z = %f\n', x0, y, z);
