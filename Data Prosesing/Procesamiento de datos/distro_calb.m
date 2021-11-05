%Archivo de Calibracion
load('Calb/01.mat')

p=1;

figure(1)
histogram(out.x1(2,27:58))
mean(out.x1(2,27:58))
std(out.x1(2,27:58))
kstest((out.x1(2,27:58)-mean(out.x1(2,27:58)))/std(out.x1(2,27:58)),'Alpha',0.01)

figure(2)
histogram(out.x1(1,27:58))
mean(out.x1(1,27:58))
std(out.x1(1,27:58))
kstest((out.x1(1,27:58)-mean(out.x1(1,27:58)))/std(out.x1(1,27:58)),'Alpha',0.01)

figure(3)
histogram(log(out.x1(2,27:58)))
mean(log(out.x1(2,27:58)))
std(log(out.x1(2,27:58)))
kstest((log(out.x1(2,27:58))-mean(log(out.x1(2,27:58))))/std(log(out.x1(2,27:58))),'Alpha',0.01)

figure(4)
histogram(reyleigh(out.x1(1,27:58)))
mean(reyleigh(out.x1(1,27:58)))
std(reyleigh(out.x1(1,27:58)))
kstest((reyleigh(out.x1(1,27:58))-mean(reyleigh(out.x1(1,27:58))))/std(reyleigh(out.x1(1,27:58))),'Alpha',0.01)

count = 1;
for i= 1:0.1:7
    
    figure(13)
    b = log(out.x1(2,27:58))/i-p*reyleigh(out.x1(1,27:58));
    x = (min(b)-0.01):0.001:(max(b)+0.01);
    hold on
    histogram(b);
    me(count) = mean(b);
    st(count) = std(b);
    
    y=gaussmf(x,[st(count) me(count)]);
    
    figure(13);
    hold on;
    plot(x,13*y,'r');
    
    kt(count) = kstest(((b-mean(b))/std(b)),'Alpha',0.01);
    count = count + 1;
end

figure(9)
errorbar(1:0.1:7,me,st)

figure(10)
plot(1:0.1:7,st)

count = 1;
for i= 1:0.1:7
    
    b = log(out.x1(2,27:58))/i-0.5*reyleigh(out.x1(1,27:58));
    x = (min(b)-0.01):0.001:(max(b)+0.01);
    me_05(count) = mean(b);
    st_05(count) = std(b);
    
    kt_05(count) = kstest(((b-mean(b))/std(b)),'Alpha',0.01);
    count = count + 1;
end

count = 1;
for i= 1:0.1:7
    
    b = log(out.x1(2,27:58))/i-0.6*reyleigh(out.x1(1,27:58));
    x = (min(b)-0.01):0.001:(max(b)+0.01);
    me_06(count) = mean(b);
    st_06(count) = std(b);
    
    kt_06(count) = kstest(((b-mean(b))/std(b)),'Alpha',0.01);
    count = count + 1;
end

count = 1;
for i= 1:0.1:7
    
    b = log(out.x1(2,27:58))/i-0.7*reyleigh(out.x1(1,27:58));
    x = (min(b)-0.01):0.001:(max(b)+0.01);
    me_07(count) = mean(b);
    st_07(count) = std(b);
    
    kt_07(count) = kstest(((b-mean(b))/std(b)),'Alpha',0.01);
    count = count + 1;
end

count = 1;
for i= 1:0.1:7
    
    b = log(out.x1(2,27:58))/i-0.8*reyleigh(out.x1(1,27:58));
    x = (min(b)-0.01):0.001:(max(b)+0.01);
    me_08(count) = mean(b);
    st_08(count) = std(b);
    
    kt_08(count) = kstest(((b-mean(b))/std(b)),'Alpha',0.01);
    count = count + 1;
end

count = 1;
for i= 1:0.1:7
    
    b = log(out.x1(2,27:58))/i-0.9*reyleigh(out.x1(1,27:58));
    x = (min(b)-0.01):0.001:(max(b)+0.01);
    me_09(count) = mean(b);
    st_09(count) = std(b);
    
    kt_09(count) = kstest(((b-mean(b))/std(b)),'Alpha',0.01);
    count = count + 1;
end

count = 1;
for i= 1:0.1:7
    
    b = log(out.x1(2,27:58))/i-1*reyleigh(out.x1(1,27:58));
    x = (min(b)-0.01):0.001:(max(b)+0.01);
    me_10(count) = mean(b);
    st_10(count) = std(b);
    
    kt_10(count) = kstest(((b-mean(b))/std(b)),'Alpha',0.01);
    count = count + 1;
end

figure(16)
hold on
grid on
plot(1:0.1:7,st_05)
plot(1:0.1:7,st_06)
plot(1:0.1:7,st_07)
plot(1:0.1:7,st_08)
plot(1:0.1:7,st_09)
plot(1:0.1:7,st_10)

figure(15)
b = log(out.x1(2,27:58))/i-p*reyleigh(out.x1(1,27:58));
x = (min(b)-0.01):0.001:(max(b)+0.01);
hold on
yyaxis left
histogram(b);
me_1 = mean(b);
st_1 = std(b);
    
y=gaussmf(x,[st_1 me_1]);
    
figure(15);
yyaxis right
hold on;
plot(x,y,'r');

kt_1 = kstest(((b-mean(b))/std(b)),'Alpha',0.01);




figure(5)
histogram(out.x2(2,27:58))
mean(out.x2(2,27:58))
std(out.x2(2,27:58))
kstest((out.x2(2,27:58)-mean(out.x2(2,27:58)))/std(out.x2(2,27:58)),'Alpha',0.01)

figure(6)
histogram(out.x2(1,27:58))
mean(out.x2(1,27:58))
std(out.x2(1,27:58))
kstest((out.x2(1,27:58)-mean(out.x2(1,27:58)))/std(out.x2(1,27:58)),'Alpha',0.01)

figure(7)
histogram(log(out.x2(2,27:58)))
mean(log(out.x2(2,27:58)))
std(log(out.x2(2,27:58)))
kstest((log(out.x2(2,27:58))-mean(log(out.x2(2,27:58))))/std(log(out.x2(2,27:58))),'Alpha',0.01)

figure(8)
histogram(reyleigh(out.x2(1,27:58)))
mean(reyleigh(out.x2(1,27:58)))
std(reyleigh(out.x2(1,27:58)))
kstest(reyleigh(out.x2(1,27:58))-mean(reyleigh(out.x2(1,27:58)))/std(reyleigh(out.x2(1,27:58))),'Alpha',0.01)



count = 1;
for i= 1:0.1:7
    
    figure(14)
    b2 = log(out.x2(2,27:58))/i-p*reyleigh(out.x2(1,27:58));
    x = (min(b2)-0.01):0.001:(max(b2)+0.02);
    
    hold on
    histogram(b2);
    me2(count) = mean(b2);
    st2(count) = std(b2);
    
    y=gaussmf(x,[st2(count) me2(count)]);
    
    figure(14);
    hold on;
    plot(x,12*y,'r');
    
    kt2(count) = kstest(((b2-mean(b2))/std(b2)),'Alpha',0.01);
    count = count + 1;
end

figure(11)
errorbar(1:0.1:7,me2,st2)

figure(12)
plot(1:0.1:7,st2)