// Experiment 7: Trapezoidal Rule
clc
clear all
close all
fprintf('Aniruddh Tilak -018 \n');
syms x
f = input('Enter function f(x) -');
f = inline(f);
a = input('enter lower limit - ');
b = input('enter upper limit - ');
n = input('enter number of subintervals -');
h = (b - a) / n;
sum = 0;
for i = 1:n-1
    x = a + i * h;
    sum = sum + f(x);
end
result = (h / 2) * (f(a) + f(b) + 2 * sum);
fprintf(' Result = %f\n', result);
