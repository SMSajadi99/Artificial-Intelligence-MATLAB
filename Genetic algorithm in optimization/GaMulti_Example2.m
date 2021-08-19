clc;clear;close all


% fitnessF=@(x) (-100-(x(1)-5)^2-(x(2)-5)^2+(x(3)-5)^2)/100;
% lb=zeros(1,3);
% ub=10*ones(1,3);
% plot(xx,fitnessF(xx));grid on 
fitnessF2=@(x)[4*x(1)^2+4*x(2)^2;(x(1)-5)^2-(x(2)-5)^2]
% xopt=ga(fitnessF,1,A,b,Aeq,beq,lb,ub,nonlinerC,INgerDv,options)
opt1= optimoptions('gamultiobj','PopulationSize',500,'MaxGenerations',50, 'PlotFcn',@gaplotpareto);

[xopt,yopt]=gamultiobj(fitnessF2,2,[],[],[],[],[],[],@nonlinearC1,opt1)
% yopt=fitnessF(xopt);
% hold on;plot(xopt,yopt,'o')

%plot(yopt(:,1),yopt(:,2),'*');grid on;xlabel('OF#1');ylabel('OF#2')