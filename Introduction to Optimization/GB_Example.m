clc;clear;close all
%X = -40:80;
syms X
Y = X.^4 - 50*X.^3 -1800*X.^2 - 800*X;
%plot(X,Y);grid on
Yprime = diff(Y,X);
Xopt = vpasolve(Yprime == 0 , X);

% Find Global Min
fun = @(x) x.^4 - 50*x.^3 -1800*x.^2 - 800*x;
rng default % For reproducibility
opts = optimoptions(@fmincon,'Algorithm','sqp');
problem = createOptimProblem('fmincon','objective',...
    fun,'x0',3,'lb',-40,'ub',80,'options',opts);
gs = GlobalSearch;
[x,f] = run(gs,problem);
plot(x,f,'b*')

grid on
hold on
% Find extreme

fplot(Y,[-40 80])
for i=1:length(Xopt)
Yopt(i) = subs(Y,X,Xopt(i));
plot(Xopt(i),Yopt(i),'o')
end

