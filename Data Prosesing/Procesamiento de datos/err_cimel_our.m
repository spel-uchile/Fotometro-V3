clc
load('Calb/10.mat')

n1 = length(out.stg1)
abs1 = out.stg1-out.aer1;
avr1 = mean(abs1)
std1 = std(abs1)

n2 = length(out.stg2)
abs2 = out.stg2-out.aer2;
avr2 = mean(abs2)
std2 = std(abs2)

n3 = length(out.stg3)
abs3 = out.stg3-out.aer3;
avr3 = mean(abs3)
std3 = std(abs3)

n4 = length(out.stg4)
abs4 = out.stg4-out.aer4;
avr4 = mean(abs4)
std4 = std(abs4)

