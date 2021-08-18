clc;clear;close all
lb=-40;ub=80;
x=lb:ub;


y= x.^4-50*x.^3-1800*x.^2-800*x;
z=-x.^4+1e7;


OF=y-z


plot(x,y);grid on;hold on;plot(x,z);plot(x,OF)