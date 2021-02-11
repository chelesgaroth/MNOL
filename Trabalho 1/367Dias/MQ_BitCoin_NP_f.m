function [m] = MQ_BitCoin_NP_f(c,x)

m = (c(1) * cos(x)) + (c(2) * sin(x)) + (c(3)* x.^2) + 4000;
end

