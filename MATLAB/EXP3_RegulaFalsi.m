// Experiment 3: Regula-Falsi Method
clc
clear all
close all
diary(' on')
syms x
f = input(' Enter function - ');
a = input(' Enter upper limit - ');
b = input('enter lower limit -');
f = inline(f);
if f(a) * f(b) < 0
    % Valid interval provided
else
    fprintf('Incorrect input\n')
    a = input('enter upper limit ');
    b = input(' enter lower limit =');
end
for i = 1:10
    c = (a * f(b) - b * f(a)) / (f(b) - f(a));
    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
    err = b - a; %#ok<NASGU>
    S = sprintf(' Iteration %d - value of c = %f\n', i, c);
    disp(S)
end
fprintf(' Root = %f\n', c);
