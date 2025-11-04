// Experiment 9: Simpson's 3/8 Rule
clc
clear all
close all
fprintf('Aniruddh -018\n');
syms x
f = input(' Enter function -');
f = inline(f);
a = input(' enter lower limit -');
b = input(' enter upper limit -');
n = input(' enter no of intervals - ');
h = (b - a) / n;
sum = 0;
sum1 = 0;
for i = 1:n-1
    x = a + i * h;
    if rem(i, 3) == 0
        sum = sum + 2 * f(x);
    else
        sum1 = sum1 + 3 * f(x);
    end
end
result = (3 * h / 8) * (f(a) + f(b) + sum + sum1);
fprintf(' Result - %f\n', result);
