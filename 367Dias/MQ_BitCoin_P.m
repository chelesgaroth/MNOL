% Tabela de dados : A 1ªa Coluna corresponde ao dia e a 2ªa ao valor da
% bitcoin em Euros nesse mesmo dia 
dataTable = xlsread('BitCoin_Amostras.xlsx');
x = dataTable (:,1);
f = dataTable (:,2);

plot(x,f,'or')
%legend('Data','Fitted exponential')
title('Data and Fitted Curve')

[p1,s1] = polyfit(x,f,4);
xaux = 1:1:370;
yaux = polyval (p1,xaux);
hold on;
plot(xaux,yaux,'b')


[p2,s2] = polyfit(x,f,30);
yaux2 = polyval (p2,xaux);
hold on;
plot(xaux,yaux2,'g')




