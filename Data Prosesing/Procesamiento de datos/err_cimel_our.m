% This program calculates the arror between the AERONET CIMEL equivalent
% measurement and our measurement
clc
load('Calb/10.mat')

k=1;

n1 = length(out.stg1)
abs1 = out.stg1-out.aer1;
avr1 = mean(abs1)
std1 = std(abs1)

rmse1 = sqrt(sum(abs1.^2)./length(abs1))

mae1 = sum(abs(abs1))./length(abs1)

k1 = kurtosis(abs1)
p1 = length(find(abs1 >= -k*rmse1 & abs1<=k*rmse1))/length(abs1)*100

n2 = length(out.stg2)
abs2 = out.stg2-out.aer2;
avr2 = mean(abs2)
std2 = std(abs2)

rmse2 = sqrt(sum(abs2.^2)./length(abs2))

mae2 = sum(abs(abs2))./length(abs2)

k2 = kurtosis(abs2)
p2 = length(find(abs2 >= -k*rmse2 & abs2<=k*rmse2))/length(abs2)*100

n3 = length(out.stg3)
abs3 = out.stg3-out.aer3;
avr3 = mean(abs3)
std3 = std(abs3)

rmse3 = sqrt(sum(abs3.^2)./length(abs3))

mae3 = sum(abs(abs3))./length(abs3)

k3 = kurtosis(abs3)
p3 = length(find(abs3 >= -k*rmse3 & abs3<=k*rmse3))/length(abs3)*100

n4 = length(out.stg4)
abs4 = out.stg4-out.aer4;
avr4 = mean(abs4)
std4 = std(abs4)

rmse4 = sqrt(sum(abs4.^2)./length(abs4))
mae4 = sum(abs(abs4))./length(abs4)

k4 = kurtosis(abs4)
p4 = length(find(abs4 >= -k*rmse4 & abs4<=k*rmse4))/length(abs4)*100

