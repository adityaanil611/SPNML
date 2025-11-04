// Experiment 15: Lagrange's Interpolation
clc
clear all
close all
fprintf('Aniruddh Telak \n')
fprintf('22070123018\n')
n = input('Enter no of data points - ');
x = input('Enter data x - ');
y = input('Enter data y - ');
a = input('Enter required x -');
sum = 0;
for i = 1:n
    num = 1;
    deno = 1;
    for j = 1:n
        if i ~= j
            num = num * (a - x(j));
            deno = deno * (x(i) - x(j));
        end
    end
    sum = sum + (num / deno) * y(i);
end
fprintf('Value of y at x = %f is %f\n', a, sum);
