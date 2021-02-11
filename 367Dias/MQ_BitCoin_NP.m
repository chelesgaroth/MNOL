% Tabela de dados : A 1ªa Coluna corresponde ao dia e a 2ªa ao valor da
% bitcoin em Euros nesse mesmo dia 
dataTable = xlsread('BitCoin_Amostras.xlsx');
dia = dataTable (:,1);
valor = dataTable (:,2);
%transformar as linhas em colunas
x = dia.';
f = valor.';

c0 = [368 369 370];


plot(x,f,'or')

[c,S] = lsqcurvefit('MQ_BitCoin_NP_f',c0,x,f)

MQ_BitCoin_NP_f(c,367)

newx = 0:1:367;
newy = MQ_BitCoin_NP_f(c,newx);
plot(x, f, 'o', newx, newy, 'r');



