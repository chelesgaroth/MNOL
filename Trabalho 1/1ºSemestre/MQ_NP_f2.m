function [m] = MQ_NP_f2(c,x)

m= c(1)*sin((x./14) + 1.5) + c(2)*(x.^2) + c(3)*cos(x./76);
end

