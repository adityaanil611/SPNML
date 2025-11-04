// Experiment 2: Bisection Method using a for-loop
clc
clear all
close all
disp(22070123018)
disp('Aniruddh-018')
syms x
f = input('enter Equation- ');
f = inline(f);
a = input('enter upper limit - ');
b = input('enter lower limit - ');
if f(a) * f(b) < 0
    fprintf(' Correct Limits\n')
else
    fprintf('Incorrect Limits!\n')
    a = input(' enter upper limit - ');
    b = input(' enter lower limit -');
end
for i = 1:10
    h = (a + b) / 2;
    if f(a) * f(h) < 0
        c = h;
    else
        a = h;
    end
    fprintf('Iteration %d = %f\n', i, h);
end
fprintf(' Final Solution-\n')
disp(h)
diary('on');
