clc;clear;close all
x=[0:.1:5*pi]';
y=sin(x)./exp(x);
traindata=[x  y];
plot(x,y);
Nmf=5;
mfTin=char('gbellmf');
mfTout='constant';
fis1=genfis1(traindata,Nmf,mfTin,mfTout);
fis2=anfis(traindata,fis1);
outF=evalfis(x,fis2);
hold on;grid on; plot(x,outF)
