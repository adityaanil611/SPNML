// Experiment 6: Newton's Backward Interpolation
clc
clear all
close all
fprintf(' Aniruddh Tilak\n')
fprintf('22070123018\n')
n = input('Enter number of datapoints n-');
h = input(' Enter step size ');
x = input('Enter data x - ');
y = input('inter data y -');
Kreq = input(' enter x for which y is required-');
p = (Kreq - x(n)) / h;
a = zeros(n, n);
for i = 1:n
    a(i, 1) = y(i);
end
for j = 2:n
    for i = n:-1:j
        a(i, j) = a(i, j - 1) - a(i - 1, j - 1);
    end
end
q = y(n);
for i = 1:n-1
    term = 1;
    for s = 1:i
        term = term * (p + s - 1) / s;
    end
    q = q + term * a(n, i + 1);
end
fprintf(' The back difference table is-\n')
disp(a)
fprintf('The value of y at x = %f is %f\n', Kreq, q);
