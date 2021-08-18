clc;clear;close all

%X = -40:80;
syms X
Y = X.^4 - 50*X.^3 -1800*X.^2 - 800*X;
%plot(X,Y);grid on
Yprime = diff(Y,X)
Xopt = vpasolve(Yprime == 0 , X)

