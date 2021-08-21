clc;clear;close all

fis1=newfis('fis1','mamdani','min','max','min','sum');
fis1=addvar(fis1,'input','in1',[0 20]);
fis1=addvar(fis1,'input','in2',[5 10]);
fis1=addvar(fis1,'output','out1',[15 30]);
% fis1=rmvar(fis1,'input',2)

% setfis() , getfis() 

fis1=addmf(fis1,'input',1,'weak','trimf',[0 5 10]);
fis1=addmf(fis1,'input',1,'normal','trapmf',[5 8 11 15]);
fis1=addmf(fis1,'input',1,'strong','trimf',[10 15 20]);

fis1=addmf(fis1,'input',2,'weak','trimf',[5 6 7]);
fis1=addmf(fis1,'input',2,'normal','trimf',[8 9 10]);

% fis1=rmmf(fis1,'input',1,'mf',1);

fis1=addmf(fis1,'output',1,'average','gaussmf',[1 22.5]);
fis1=addmf(fis1,'output',1,'high','gaussmf',[1 27.5]);

% plotmf(fis1,'output',1)
% figure
% plotmf(fis1,'input',1)
RL=[1 1 1 1  1;
    2 1 2 1  1];
fis1=addrule(fis1,RL);
showrule(fis1)


y=evalfis([10 8],fis1);
% plotfis(fis1)
% figure
% surfview(fis1)
% figure
% gensurf(fis1)
showfis(fis1)