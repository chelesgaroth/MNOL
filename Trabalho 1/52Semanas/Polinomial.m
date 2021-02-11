% Tabela de dados : A 1ªa coluna corresponde à semana e a 2ªa ao valor da
% média da bitcoin em Euros nessa semana
dataTable = xlsread('BitCoin_Semanas.xlsx');
x = dataTable (:,1);
f = dataTable (:,2);

plot(x,f,'or')
%legend('Data','Fitted exponential')
title('Data and Fitted Curve')

[p1,s1] = polyfit(x,f,4); %Maior grau possível
xaux = 1:1:60;
yaux = polyval (p1,xaux);
hold on;
plot(xaux,yaux,'b')

[p2,s2] = polyfit(x,f,7); %Maior grau possível
xaux = 1:1:60;
yaux2 = polyval (p2,xaux);
hold on;
plot(xaux,yaux2,'g')