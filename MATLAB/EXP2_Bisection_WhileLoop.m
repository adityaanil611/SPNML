// Experiment 2: Bisection Method using a while-loop
clc
clear all
close all
disp(22070123018)
disp('Aniruddh -018')
syms x
f = input(' enter function- ');
f = inline(f);
a = input('Enter upper limit ');
b = input('Enter lower limit -');
tol = input('enter allowed error ');
if f(a) * f(b) < 0
    fprintf(' Correct Interval!\n')
else
    fprintf(' Please enter correct limits\n');
    a = input(' Enter upper limit ');
    b = input(' Enter lower limit -');
end
err = b - a;
n = 1;
while tol < err
    h = (a + b) / 2;
    if f(a) * f(h) < 0
        b = h;
    else
        a = h;
    end
    n = n + 1;
    err = b - a;
end
fprintf(' Result - %f\n', h);
diary off;
