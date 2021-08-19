clc;clear;close all
% lb=-40;ub=80;
% xx=lb:ub;


% fitnessF= @(x) x.^4-50*x.^3-1800*x.^2-800*x;
fitnessF=@(x) 100*(x(2)-x(1).^2).^2+(1-x(1)).^2;
lb=[0;0];
% plot(xx,fitnessF(xx));grid on 

% xopt=ga(fitnessF,1,A,b,Aeq,beq,lb,ub,nonlinerC,INgerDv,options)
xopt=ga(fitnessF,2,[],[],[],[],lb,[])
% yopt=fitnessF(xopt);
% hold on;plot(xopt,yopt,'o')