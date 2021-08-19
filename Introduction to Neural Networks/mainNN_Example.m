clc;clear;close all

w1=[.15 .2 ;.25 .3];
w1=w1';
w2=[.4 .45; .5 .55];
w2=w2';
b1=[.35;.35];
b2=[.6;.6];
in=[.05 .1];
hidenlayersize=2;
Target=[.01 .99];
for i=1:hidenlayersize
neth(i)=in*w1(:,i)+b1(i);
end

for i=1:hidenlayersize
outh(i)=1/(1+exp(-neth(i)));
end

for i=1:length(Target)
neto(i)=outh*w2(:,i)+b2(i);
end

for i=1:length(Target)
outo(i)=1/(1+exp(-neto(i)));
end


%%%%%%error calculation
ErrorT=.5*sum((Target-outo).^2)