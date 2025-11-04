// Experiment 5: Newton's Forward Interpolation
clc
clear all
close all
fprintf(' Aniruddh Tylak-018 \n')
n = input(' Number of data points -');
h = input('step size-');
x = input(' Enter data x - ');
y = input(' Enter data y ');
xred = input('Enter x for which value of y is required ');
p = (xred - x(1)) / h;
a = zeros(n, n);
for i = 1:n
    a(i, 1) = y(i);
end
for j = 2:n
    for i = 1:n - j + 1
        a(i, j) = a(i + 1, j - 1) - a(i, j - 1);
    end
end
q = y(1);
for i = 1:n-1
    term = 1;
    for s = 1:i
        term = term * (p - s + 1) / s;
    end
    q = q + term * a(1, i + 1);
end
fprintf(' The difference table is given below-\n')
disp(a)
fprintf(' The value of y at %f is %f\n', xred, q);
