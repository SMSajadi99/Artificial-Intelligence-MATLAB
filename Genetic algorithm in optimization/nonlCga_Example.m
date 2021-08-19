clc;clear;close all


fitnessF=@(x) (-100-(x(1)-5)^2-(x(2)-5)^2+(x(3)-5)^2)/100;
lb=zeros(1,3);
ub=10*ones(1,3);
% plot(xx,fitnessF(xx));grid on 

% xopt=ga(fitnessF,1,A,b,Aeq,beq,lb,ub,nonlinerC,INgerDv,options)
[xopt,yopt]=ga(fitnessF,3,[],[],[],[],lb,ub,@nonC1)
% yopt=fitnessF(xopt);
% hold on;plot(xopt,yopt,'o')
