clc;clear;close all
xx = -40:80;
%syms x
y =@(x) x.^4 - 50*x.^3 -1800*x.^2 - 800*x;
plot(xx,y(xx));grid on
n=1;
x0 = 120*rand(1,n)-40;
y0 = y(x0);
maxItr = 30;
h = 1;
for i=1:maxItr
   % xnew = 120*rand(1,n)-40;
    xnew = x0 - (-1^(randi(2)))*h
    ynew = y(xnew);
    
    if ynew < y0
        x0 = xnew;
        y0 = ynew;
    end
    hold on;plot(x0,y0,'o');pause(.1);
    
end
    