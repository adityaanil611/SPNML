// Experiment 4: Gauss-Seidel Method
clc
clear all
close all
A = input('enter matrix A-');
b = input('enter matrix B-');
[M, N] = size(A);
if M == N
    fprintf(' Square Matrix \n')
else
    fprintf(' Not a sq Matrix\n')
end
for m = 1:M
    row = abs(A(m, :));
    d = sum(row) - row(m);
    if row(m) >= d
        fprintf('Row %d is Diagonally dominant\n', m)
    else
        fprintf('Row %d is Not Diagonally dominant\n', m)
    end
end
x = zeros(M, 1);
for i = 1:5
    for k = 1:M
        xold = x(k);
        sum1 = A(k, 1:k-1) * x(1:k-1);
        sum2 = A(k, k+1:M) * x(k+1:M);
        num = b(k) - sum1 - sum2;
        x(k) = num / A(k, k);
        er = abs(xold - x(k)); %#ok<NASGU>
    end
end
s = sprintf(' %f %f %f\n', x);
disp(s)
fprintf(' the required root = \n');
disp(x);
