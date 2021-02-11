%Parâmetros
c = [85,97];

options=optimset('display','iter');

%Aplicação da Rotina
[xmin,fmin,exitflag,output]=fminsearch('tp2func1',[300,400],options,c)

