function [m] = MQ_NP_f(c,x)
%m= (c(1)*sin(x./3))+ 8 + c(2)*cos(x./8)+ c(3)*8*x.^2 ;
%m = (c(1)*sin(x./3))+ 7 + c(2)*cos(x./8 - 0.8)+ c(3)*5*x.^2;
m = (c(1)*sin(x./2))+ 7 + c(2)*cos(x./8 - 0.8)+ c(3)*5*x.^2;

end
