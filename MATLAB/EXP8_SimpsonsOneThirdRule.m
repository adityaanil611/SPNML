// Experiment 8: Simpson's 1/3 Rule
clc
clear all
close all
syms x
 a = input(' lower limit - ');
 b = input(' Upper limit - ');
 n = input(' Enter no of intervals - ');
 f = input(' enter function - ');
 f = inline(f);
 h = (b - a) / n;
 sum = 0;
 sum1 = 0;
 for i = 1:n-1
a = input(' lower limit - ');
     if rem(i, 2) == 0
