clc;clear;close all


fitnessF=@(x) (-8+x(1))^2+(-2+x(2))^2;
lb=[0;0];
ub=[200;200];
% plot(xx,fitnessF(xx));grid on 
A=[1/3,1;.1,-1]; b=[4.5;0];
% xopt=ga(fitnessF,1,A,b,Aeq,beq,lb,ub,nonlinerC,INgerDv,options)
%[xopt,yopt]=ga(fitnessF,2,A,b,[],[],lb,ub)
[xopt,yopt]=ga(fitnessF,2,A,b,[],[],lb,ub,[],[1 2])

% hold on;plot(xopt,yopt,'o')