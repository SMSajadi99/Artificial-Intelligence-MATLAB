clc;clear;close all

fis1=newfis('fis1','mamdani','min','max','min','sum');

fis1=addvar(fis1,'input','in1',[10 35]);
fis1=addvar(fis1,'input','in2',[55 95]);
fis1=addvar(fis1,'output','out1',[1 4]);


fis1=addmf(fis1,'input',1,'weak','gaussmf',[2 14.7]);
fis1=addmf(fis1,'input',1,'normal','gaussmf',[2 18.4]);
fis1=addmf(fis1,'input',1,'good','gaussmf',[2 22.1]);
fis1=addmf(fis1,'input',1,'strong','gaussmf',[2 25.8]);
fis1=addmf(fis1,'input',1,'excellent','gaussmf',[2 29.5]);

fis1=addmf(fis1,'input',2,'weak','trimf',[55 65 75]);
fis1=addmf(fis1,'input',2,'normal','trimf',[65 75 85]);
fis1=addmf(fis1,'input',2,'good','trimf',[75 85 95]);

fis1=addmf(fis1,'output',1,'weak','trimf',[1 1.75 2.5]);
fis1=addmf(fis1,'output',1,'normal','trimf',[1.75 2.5 3.25]);
fis1=addmf(fis1,'output',1,'good','trimf',[2.5 3.25 4]);
fis1=addmf(fis1,'output',1,'strong','trapmf',[1 1.75 2.5 3.25]);
fis1=addmf(fis1,'output',1,'excellent','trapmf',[1.75 2.5 3.25 4]);

plotmf(fis1,'output',1)
figure
plotmf(fis1,'input',1)
figure
plotmf(fis1,'input',2)


RL=[1 1 1 1  1;
    1 2 2 1  1;
    1 3 2 1  1;
    5 1 4 1  1;
    5 2 4 1  2;
    5 3 5 1  2;
    3 1 3 1  2;
    3 2 3 1  2;
    3 3 3 1  2;
    2 1 3 1  1;
    2 2 3 1  2;
    2 3 4 1  2;
    4 1 4 1  1;
    4 2 5 1  2;
    4 3 5 1  2];
    
fis1=addrule(fis1,RL);
showrule(fis1)

y1=evalfis(fis1,[20 67])
y2=evalfis(fis1,[30 88])
y3=evalfis(fis1,[15 94])

plotfis(fis1)
figure
surfview(fis1)
figure
gensurf(fis1)

showfis(fis1)