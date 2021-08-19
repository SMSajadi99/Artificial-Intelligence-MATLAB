function OF=fitnessF1(x)

OF(1)=1.5-x(1)*(1-x(2));
OF(2)=2.25-x(1)*(1-x(2)^2);
OF(3)=2.625-x(1)*(1-x(2)^3);