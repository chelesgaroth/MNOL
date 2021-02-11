function [m] = MQ_NP_f1(c,x)
m= c(1)*sin((x./15) + 5) + c(2)*(x.^2) + 10*c(3)*cos(x./80);
end
