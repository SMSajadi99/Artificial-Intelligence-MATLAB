%This code find all prime numbers
%upto the entered number 
clear all;
N=input('Prime Numbers until:');
if N<2
    return;
elseif N==2
    disp(2);
    return;
end
Pr(1)=2;Pr(2)=3;Count=3;
for i=4:N
    C=Check(i);
    if C==1
        Pr(Count)=i;
        Count = Count +1;
    end
end
disp(Pr);
function C=Check(i)
C=1;
for k=2:(ceil(sqrt(i)))
    if mod(i,k)==0
        C=0;
    end        
end
end%displays the primes