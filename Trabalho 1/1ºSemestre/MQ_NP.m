% Tabela de dados : A 1ªa Coluna corresponde ao dia e a 2ªa ao valor da
% bitcoin em Euros nesse mesmo dia 
dataTable = xlsread('BitCoin_Semestre.xlsx');
dia = dataTable (:,1);
valor = dataTable (:,2);
%transformar as linhas em colunas
x = dia.';
f = valor.';

c0 = [1 1 1];
c02 = [ 1 1 1 1];

plot(x,f,'or')

[c1,S1] = lsqcurvefit('MQ_NP_f1',c0,x,f)
MQ_NP_f1(c1,367)

newx = 0:1:200;
newy = MQ_NP_f1(c1,newx);
plot(x, f, 'o', newx, newy, 'r');
hold on;

[c2,S2] = lsqcurvefit('MQ_NP_f2',c0,x,f)
MQ_NP_f2(c2,367)

newy2 = MQ_NP_f2(c2,newx);
plot(newx, newy2, 'b');
hold on;

[c3,S3] = lsqcurvefit('MQ_NP_f3',c02,x,f)
MQ_NP_f3(c3,367)

newy3 = MQ_NP_f3(c3,newx);
plot(newx, newy3, 'g');


