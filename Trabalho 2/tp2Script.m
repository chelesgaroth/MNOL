
%Parâmetros
c = [72,82];


%Desenho
%x = ezmesh('-X*(85 - 0.07*X - 0.02*Y) - Y*(97 - 0.01*X - 0.1*Y) + (10000 + 3.5*(X+Y))',[0,1000],[0,1000])


%Aplicação da Rotina
[xmin,fmin,options,exitflag,output]=fminunc('tp2func1',[300,400],[],c)



