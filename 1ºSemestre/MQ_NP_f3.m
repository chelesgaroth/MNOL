function [m] = MQ_NP_f3(c,x)

m= c(1)*sin((x./15) + 5616) - c(2)./(x.^2) + c(3)*cos(x./200) + (c(4)*x.^5); 
end

