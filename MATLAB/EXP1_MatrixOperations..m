% Experiment 1: Fundamental Matrix Operations
clc
clear all
close all

disp('Aniruddh Tilak -018')
disp('Matrix Operations Demo')

A = input('Enter matrix A: ');
B = input('Enter matrix B: ');

% Addition and subtraction require matrices of equal size
if all(size(A) == size(B))
	fprintf('A + B = \n')
	disp(A + B)
	fprintf('A - B = \n')
	disp(A - B)
	fprintf('B - A = \n')
	disp(B - A)
else
	fprintf('Addition/Subtraction not possible: matrices have different dimensions.\n')
end

% Matrix multiplication requires matching inner dimensions
if size(A, 2) == size(B, 1)
	fprintf('A * B = \n')
	disp(A * B)
else
	fprintf('Multiplication A*B not possible: inner dimensions do not agree.\n')
end

if size(B, 2) == size(A, 1)
	fprintf('B * A = \n')
	disp(B * A)
else
	fprintf('Multiplication B*A not possible: inner dimensions do not agree.\n')
end

fprintf('Transpose of A (A''): \n')
disp(A')
fprintf('Transpose of B (B''): \n')
disp(B')

% Determinant, inverse, eigenvalues require square matrices
if size(A, 1) == size(A, 2)
	fprintf('det(A) = %f\n', det(A))
	fprintf('rank(A) = %d\n', rank(A))
	fprintf('trace(A) = %f\n', trace(A))
	if det(A) ~= 0
		fprintf('inv(A) = \n')
		disp(inv(A))
	else
		fprintf('inv(A) not defined: determinant is zero.\n')
	end
	fprintf('Eigenvalues of A = \n')
	disp(eig(A))
else
	fprintf('Square-only operations skipped: A is not square.\n')
end

if size(B, 1) == size(B, 2)
	fprintf('det(B) = %f\n', det(B))
	fprintf('rank(B) = %d\n', rank(B))
	fprintf('trace(B) = %f\n', trace(B))
	if det(B) ~= 0
		fprintf('inv(B) = \n')
		disp(inv(B))
	else
		fprintf('inv(B) not defined: determinant is zero.\n')
	end
	fprintf('Eigenvalues of B = \n')
	disp(eig(B))
else
	fprintf('Square-only operations skipped: B is not square.\n')
end

fprintf('Element-wise product A .* B (requires equal size):\n')
if all(size(A) == size(B))
	disp(A .* B)
else
	fprintf('Element-wise product not possible: matrices have different dimensions.\n')
end

fprintf('Hadamard (element-wise) division A ./ B (requires equal size, non-zero B):\n')
if all(size(A) == size(B))
	if all(B(:) ~= 0)
		disp(A ./ B)
	else
		fprintf('Element-wise division not possible: B contains zero entries.\n')
	end
else
	fprintf('Element-wise division not possible: matrices have different dimensions.\n')
end

fprintf('Matrix operations completed.\n')
