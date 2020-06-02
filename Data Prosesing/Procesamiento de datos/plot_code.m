%% LF 16062018
%Archivo de Calibracion
load('Calb/01.mat')
%Archivo de Datos
load('Stgo/01.mat')
%Datos Aeronet
load('Aero/aero_01_C.mat')

% Extracion de datos del dia
day = 27;
month = 11;
year = 2018;

% Datos de calibracion
cday= 27;
cmonth = 11;
cyear = 2018;

c1 = 1;

[data, date, adata, adate] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);

fig1 = figure(2);
plot(adate,adata,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date, data, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%% LF LR 30072018
%Archivo de Calibracion

% %09
% load('Calb/09.mat')
% %Archivo de Datos
% load('Stgo/09.mat')
% %Datos Aeronet
% load('Aero/aero_09_ML.mat')
% % Datos de calibracion 08
% cday= 10;
% cmonth = 01;
% cyear = 2019;

% %08
% load('Calb/08.mat')
% %Archivo de Datos
% load('Stgo/08.mat')
% %Datos Aeronet
% load('Aero/aero_08_CI.mat')
% % Datos de calibracion 08
% cday= 27;
% cmonth = 11;
% cyear = 2018;

% % 07
% %Archivo de Calibracion
% load('Calb/07.mat')
% %Archivo de Datos
% load('Stgo/07.mat')
% %Datos Aeronet
% load('Aero/aero_07_MA.mat')
% % Datos de calibracion 07
% cday= 04;
% cmonth = 01;
% cyear = 2019;

% % 06
% %Archivo de Calibracion
% load('Calb/06.mat')
% %Archivo de Datos
% load('Stgo/06.mat')
% %Datos Aeronet
% load('Aero/aero_06_PL.mat')
% % Datos de calibracion 08
% cday= 04;
% cmonth = 01;
% cyear = 2019;

% % 05
% %Archivo de Calibracion
% load('Calb/05.mat')
% %Archivo de Datos
% load('Stgo/05.mat')
% %Datos Aeronet
% load('Aero/aero_05_LF.mat')
% % Datos de calibracion 08
% cday= 04;
% cmonth = 01;
% cyear = 2019;

% % 04
% %Archivo de Calibracion
% load('Calb/04.mat')
% %Archivo de Datos
% load('Stgo/04.mat')
% %Datos Aeronet
% load('Aero/aero_04_CC.mat')
% % Datos de calibracion 08
% cday= 27;
% cmonth = 11;
% cyear = 2018;

% % 03
% %Archivo de Calibracion
% load('Calb/03.mat')
% %Archivo de Datos
% load('Stgo/03.mat')
% %Datos Aeronet
% load('Aero/aero_03_CT.mat')
% % Datos de calibracion 03
% cday= 10;
% cmonth = 01;
% cyear = 2019;

% %02
% %Archivo de Calibracion
% load('Calb/02.mat')
% %Archivo de Datos
% load('Stgo/02.mat')
% %Datos Aeronet
% load('Aero/aero_02_GA.mat')
% %Datos de calibracion 08
% cday= 10;
% cmonth = 01;
% cyear = 2019;


%01
%Archivo de Calibracion
load('Calb/01.mat')
%Archivo de Datos
load('Stgo/01.mat')
%Datos Aeronet
load('Aero/aero_01_C.mat')
%Datos de calibracion 08
cday= 21;
cmonth = 01;
cyear = 2019;


% Extracion de datos del dia
day = 21;
month = 01;
year = 2019;


c1 = 1;

[data, date, adata, adate] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear,2);

fig1 = figure(3);
plot(adate,adata,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date, data, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
%hold off;

% 1 malloco
% 2 maipú
% 3 cerro calan
% 4 Calera de tango
% 5 gran avenida
% 6 calibracion
date6 = date;
data6 = data; 

%% LAngley
%Archivo de Calibracion
load('Calb/01.mat')
%Archivo de Datos
load('Stgo/01.mat')
%Datos Aeronet
load('Aero/aero_01_C.mat')

% Extracion de datos del dia
day = 24;
month = 05;
year = 2018;

% Datos de calibracion
cday= 24;
cmonth = 05;
cyear = 2018;

c1 = 1;

[data1, date1, adata1, adate1] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
[data2, date2, adata2, adate2] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data3, date3, adata3, adate3] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data4, date4, adata4, adate4] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);


adatai1 = interp1(adate1, adata1, date1,'nearest','extrap'); 
adatai2 = interp1(adate2, adata2, date2,'nearest','extrap'); 
adatai3 = interp1(adate3, adata3, date3,'nearest','extrap'); 
adatai4 = interp1(adate4, adata4, date4,'nearest','extrap'); 

figure(1)

sp1 = subplot(2,2,1);
plot(data1, adatai1,'.');
title(sp1, 'Scatter Sensor 0' );
xlabel(sp1,'Sensor 0');
ylabel(sp1,'CIMEL');
grid on;
xlim([0 0.5]);
ylim([0 0.5]);
lsline;
%legend(sp1, 'Mediciones', 'Regresi0n');

        
sp2 = subplot(2,2,2);
plot(data2, adatai2,'.');
title(sp2, 'Scatter Sensor 1' );
xlabel(sp2,'Sensor 1');
ylabel(sp2,'CIMEL');
grid on;
xlim([0 0.5]);
ylim([0 0.5]);
lsline;
%legend(sp2, 'Mediciones', 'Regresión');


sp3 = subplot(2,2,3);
plot(data3, adatai3,'.');
title(sp3, 'Scatter Sensor 2' );
xlabel(sp3,'Sensor 2');
ylabel(sp3,'CIMEL');
grid on;
xlim([0 0.5]);
ylim([0 0.5]);
lsline;
%legend(sp3, 'Mediciones', 'Regresión');


sp4 = subplot(2,2,4);
plot(data4, adatai4,'.');
title(sp4, 'Scatter Sensor 3' );
xlabel(sp4,'Sensor 3');
ylabel(sp4,'CIMEL');
grid on;
xlim([0 0.5]);
ylim([0 0.5]);
lsline;
%legend(sp4, 'Mediciones', 'Regresión');

