% Tabela de dados : A 1ªa Coluna corresponde ao dia e a 2ªa ao valor da
% bitcoin em Euros nesse mesmo dia 
dataTable = xlsread('BitCoin_Semanas.xlsx');
dia = dataTable (:,1);
valor = dataTable (:,2);
%transformar as linhas em colunas
x = dia.';
f = valor.';

c0 = [1 1 1];

plot(x,f,'or')

[c,S] = lsqcurvefit('MQ_NP_f',c0,x,f)
MQ_NP_f(c,60)

newx = 0:1:60;
newy = MQ_NP_f(c,newx);
plot(x, f, 'o', newx, newy, 'r');



