clc;clear;close all

lb=[0;0];
ub=[inf;6];
A = [-1,-3;2,1];
b = [-3;10];
    
% xopt=ga(fitnessF,1,A,b,Aeq,beq,lb,ub,nonlinerC,INgerDv,options)
opt1= optimoptions('gamultiobj','PopulationSize',100,'MaxGenerations',50, 'PlotFcn',@gaplotpareto);

[xopt,yopt]=gamultiobj(@fitnessF1,2,A,b,[],[],lb,ub,@nonlinearC1,opt1)