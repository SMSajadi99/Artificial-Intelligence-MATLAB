clc;clear;close all
lb=-40;ub=80;
x=lb:ub;


y= x.^4-50*x.^3-1800*x.^2-800*x;

plot(x,y);grid on

%%%%%%%%%%%%%two variables

[x1,x2]=meshgrid(-20:20,0:10);
z=x1+x2.^2;
figure;
mesh(x1,x2,z)

%%%%%%cons#1 x1+x2=15
x1=-20:20;
x2=0:10;
line1=15-x1;
figure;
plot(x1,line1);grid on
axis([-20 20 0 10])
xlabel('x1')
ylabel('x2')
