// Experiment 3: Newton-Raphson Method
clc
clear all
close all
syms x
f = input('enter function-');
f = inline(f);
x0 = input('Enter initial guess- ');
f1 = diff(f(x));
f1 = inline(f1);
for i = 0:10
    if f1(x0) == 0
        fprintf('Derivative = 0\n')
        return
    end
    x = x0 - f(x0) / f1(x0);
    err = abs(x0 - x); %#ok<NASGU>
    x0 = x;
    s = sprintf(' Iteration - %d , - %f \n', i, x0);
    disp(s)
end
fprintf(' Root - %f \n', x0);
