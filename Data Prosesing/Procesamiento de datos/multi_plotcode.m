%% 30072018
%Archivo de Calibracion
load('Calb/01.mat')
%Archivo de Datos
load('Stgo/01.mat')
%Datos Aeronet
load('Aero/aero_01_LR.mat')

% Extracion de datos del dia
eday = 30;
emonth = 07;
eyear = 2018;

% Datos de calibracion
cday= 24;
cmonth = 07;
cyear = 2018;

c1 = 1;

[data, date, adata, adate] = aod_data(aero, out, stgo, eday,emonth, eyear, cday, cmonth, cyear, 1);

fig1 = figure(1);
ax1 = subplot(2,1,1);
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

%Archivo de Calibracion
load('Calb/02.mat')
%Archivo de Datos
load('Stgo/02.mat')
%Datos Aeronet
load('Aero/aero_02_LF.mat')

[data1, date1, adata1, adate1] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 4);

ax2 = subplot(2,1,2);
plot(adate1,adata1,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date1, data1, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

fig1 = figure(2);
hold on;
grid on;
plot(adate1,adata1,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
plot(date1, data1, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;
%% 12122018

%Archivo de Calibracion
load('Calb/01.mat')
%Archivo de Datos
load('Stgo/01.mat')
%Datos Aeronet
load('Aero/aero_01_C.mat')

% Extracion de datos del dia
eday =12;
emonth = 12;
eyear = 2018;

% Datos de calibracion
cday= 12;
cmonth = 12;
cyear = 2018;

c1 = 1;

[data, date, adata, adate] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

fig1 = figure(1);
ax1 = subplot(3,1,1);
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

%Archivo de Calibracion
load('Calb/04.mat')
%Archivo de Datos
load('Stgo/04.mat')
%Datos Aeronet
load('Aero/aero_04_CC.mat')

% Datos de calibracion
cday= 27;
cmonth = 11;
cyear = 2018;

[data1, date1, adata1, adate1] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(3,1,3);
plot(adate1,adata1,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date1, data1, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/08.mat')
%Archivo de Datos
load('Stgo/08.mat')
%Datos Aeronet
load('Aero/aero_08_CI.mat')

% Datos de calibracion
cday= 28;
cmonth = 11;
cyear = 2018;

[data2, date2, adata2, adate2] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(3,1,2);
plot(adate2,adata2,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date2, data2, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

fig1 = figure(2);
hold on;
grid on;
plot(adate2,adata2,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
plot(date2, data2, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%% 12122018

%Archivo de Calibracion
load('Calb/04.mat')
%Archivo de Datos
load('Stgo/04.mat')
%Datos Aeronet
load('Aero/aero_04_CC.mat')

% Extracion de datos del dia
eday =11;
emonth = 01;
eyear = 2019;

% Datos de calibracion
cday= 27;
cmonth = 11;
cyear = 2018;

c1 = 1;

[data, date, adata, adate] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

fig1 = figure(1);
ax1 = subplot(3,1,1);
plot(adate,adata,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

ax1 = subplot(3,1,3);
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

%Archivo de Calibracion
load('Calb/08.mat')
%Archivo de Datos
load('Stgo/08.mat')
%Datos Aeronet
load('Aero/aero_08_CI.mat')

% Datos de calibracion
cday= 27;
cmonth = 11;
cyear = 2018;

[data1, date1, adata1, adate1] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 4);

ax2 = subplot(3,1,2);
plot(adate1,adata1,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date1, data1, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;


fig1 = figure(2);
hold on;
grid on;
plot(adate,adata,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
plot(date1, data1, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%% 18012019

%Archivo de Calibracion
load('Calb/01.mat')
%Archivo de Datos
load('Stgo/01.mat')
%Datos Aeronet
load('Aero/aero_01_C.mat')

% Extracion de datos del dia
eday =18;
emonth = 01;
eyear = 2019;

% Datos de calibracion
cday= 18;
cmonth = 01;
cyear = 2019;

c1 = 1;

[data, date, adata, adate] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

fig1 = figure(1);
ax1 = subplot(5,1,1);
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


%Archivo de Calibracion
load('Calb/02.mat')
%Archivo de Datos
load('Stgo/02.mat')
%Datos Aeronet
load('Aero/aero_02_GA.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data1, date1, adata1, adate1] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 2);

ax2 = subplot(5,1,3);
plot(adate1,adata1,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date1, data1, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/04.mat')
%Archivo de Datos
load('Stgo/04.mat')
%Datos Aeronet
load('Aero/aero_04_CC.mat')

% Datos de calibracion
cday= 27;
cmonth = 11;
cyear = 2018;

[data2, date2, adata2, adate2] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(5,1,5);
plot(adate2,adata2,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date2, data2, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/08.mat')
%Archivo de Datos
load('Stgo/08.mat')
%Datos Aeronet
load('Aero/aero_08_CI.mat')

% Datos de calibracion
cday= 28;
cmonth = 11;
cyear = 2018;

[data3, date3, adata3, adate3] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 4);

ax2 = subplot(5,1,4);
plot(adate3,adata3,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date3, data3, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/09.mat')
%Archivo de Datos
load('Stgo/09.mat')
%Datos Aeronet
load('Aero/aero_09_ML.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data4, date4, adata4, adate4] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(5,1,2);
plot(adate4,adata4,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date4, data4, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;


fig1 = figure(2);
hold on;
grid on;
plot(adate4,adata4,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
plot(date4, data4, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%% 19012019

%Archivo de Calibracion
load('Calb/01.mat')
%Archivo de Datos
load('Stgo/01.mat')
%Datos Aeronet
load('Aero/aero_01_C.mat')

% Extracion de datos del dia
eday =19;
emonth = 01;
eyear = 2019;

% Datos de calibracion
cday= 19;
cmonth = 01;
cyear = 2019;

c1 = 1;

[data, date, adata, adate] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

fig1 = figure(1);
ax1 = subplot(6,1,1);
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


%Archivo de Calibracion
load('Calb/02.mat')
%Archivo de Datos
load('Stgo/02.mat')
%Datos Aeronet
load('Aero/aero_02_GA.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data1, date1, adata1, adate1] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 3);

ax2 = subplot(6,1,4);
plot(adate1,adata1,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date1, data1, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/04.mat')
%Archivo de Datos
load('Stgo/04.mat')
%Datos Aeronet
load('Aero/aero_04_CC.mat')

% Datos de calibracion
cday= 27;
cmonth = 11;
cyear = 2018;

[data2, date2, adata2, adate2] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(6,1,6);
plot(adate2,adata2,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date2, data2, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/08.mat')
%Archivo de Datos
load('Stgo/08.mat')
%Datos Aeronet
load('Aero/aero_08_CI.mat')

% Datos de calibracion
cday= 28;
cmonth = 11;
cyear = 2018;

[data3, date3, adata3, adate3] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 4);

ax2 = subplot(6,1,5);
plot(adate3,adata3,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date3, data3, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/09.mat')
%Archivo de Datos
load('Stgo/09.mat')
%Datos Aeronet
load('Aero/aero_09_ML.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data4, date4, adata4, adate4] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(6,1,2);
plot(adate4,adata4,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date4, data4, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/03.mat')
%Archivo de Datos
load('Stgo/03.mat')
%Datos Aeronet
load('Aero/aero_03_CT.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data5, date5, adata5, adate5] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 4);

ax2 = subplot(6,1,3);
plot(adate5,adata5,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date5, data5, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;


fig1 = figure(2);
hold on;
grid on;
plot(adate5,adata5,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
plot(date5, data5, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%% 21012019

%Archivo de Calibracion
load('Calb/01.mat')
%Archivo de Datos
load('Stgo/01.mat')
%Datos Aeronet
load('Aero/aero_01_C.mat')

% Extracion de datos del dia
eday =21;
emonth = 01;
eyear = 2019;

% Datos de calibracion
cday= 21;
cmonth = 01;
cyear = 2019;

c1 = 1;

[data, date, adata, adate] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 2);

fig1 = figure(1);
ax1 = subplot(6,1,1);
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


%Archivo de Calibracion
load('Calb/02.mat')
%Archivo de Datos
load('Stgo/02.mat')
%Datos Aeronet
load('Aero/aero_02_GA.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data1, date1, adata1, adate1] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 3);

ax2 = subplot(6,1,5);
plot(adate1,adata1,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date1, data1, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/04.mat')
%Archivo de Datos
load('Stgo/04.mat')
%Datos Aeronet
load('Aero/aero_04_CC.mat')

% Datos de calibracion
cday= 27;
cmonth = 11;
cyear = 2018;

[data2, date2, adata2, adate2] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(6,1,6);
plot(adate2,adata2,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date2, data2, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/07.mat')
%Archivo de Datos
load('Stgo/07.mat')
%Datos Aeronet
load('Aero/aero_07_MA.mat')

% Datos de calibracion
cday= 28;
cmonth = 11;
cyear = 2018;

[data3, date3, adata3, adate3] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 4);

ax2 = subplot(6,1,4);
plot(adate3,adata3,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date3, data3, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/09.mat')
%Archivo de Datos
load('Stgo/09.mat')
%Datos Aeronet
load('Aero/aero_09_ML.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data4, date4, adata4, adate4] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(6,1,2);
plot(adate4,adata4,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date4, data4, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/03.mat')
%Archivo de Datos
load('Stgo/03.mat')
%Datos Aeronet
load('Aero/aero_03_CT.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data5, date5, adata5, adate5] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 3);

ax2 = subplot(6,1,3);
plot(adate5,adata5,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date5, data5, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;


fig1 = figure(2);
hold on;
grid on;
plot(adate5,adata5,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
plot(date5, data5, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%% 23012019

%Archivo de Calibracion
load('Calb/01.mat')
%Archivo de Datos
load('Stgo/01.mat')
%Datos Aeronet
load('Aero/aero_01_C.mat')

% Extracion de datos del dia
eday =23;
emonth = 01;
eyear = 2019;

% Datos de calibracion
cday= 23;
cmonth = 01;
cyear = 2019;

c1 = 1;

[data, date, adata, adate] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

fig1 = figure(1);
ax1 = subplot(6,1,1);
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


%Archivo de Calibracion
load('Calb/02.mat')
%Archivo de Datos
load('Stgo/02.mat')
%Datos Aeronet
load('Aero/aero_02_GA.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data1, date1, adata1, adate1] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(6,1,5);
plot(adate1,adata1,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date1, data1, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/04.mat')
%Archivo de Datos
load('Stgo/04.mat')
%Datos Aeronet
load('Aero/aero_04_CC.mat')

% Datos de calibracion
cday= 27;
cmonth = 11;
cyear = 2018;

[data2, date2, adata2, adate2] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(6,1,6);
plot(adate2,adata2,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date2, data2, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/06.mat')
%Archivo de Datos
load('Stgo/06.mat')
%Datos Aeronet
load('Aero/aero_06_PL.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data3, date3, adata3, adate3] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 2);

ax2 = subplot(6,1,3);
plot(adate3,adata3,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date3, data3, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/09.mat')
%Archivo de Datos
load('Stgo/09.mat')
%Datos Aeronet
load('Aero/aero_09_ML.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data4, date4, adata4, adate4] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 1);

ax2 = subplot(6,1,2);
plot(adate4,adata4,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date4, data4, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;

%Archivo de Calibracion
load('Calb/03.mat')
%Archivo de Datos
load('Stgo/03.mat')
%Datos Aeronet
load('Aero/aero_03_CT.mat')

% Datos de calibracion
cday= 10;
cmonth = 01;
cyear = 2019;

[data5, date5, adata5, adate5] = aod_data(aero, out, stgo, eday, emonth, eyear, cday, cmonth, cyear, 2);

ax2 = subplot(6,1,4);
plot(adate5,adata5,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
hold on;
grid on;
plot(date5, data5, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;


fig1 = figure(2);
hold on;
grid on;
plot(adate5,adata5,'.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
plot(date5, data5, '.-');
c1 = c1+1;
ax.ColorOrderIndex = c1;
ylim([0 0.5]);
legend();
xlabel('Time');
ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
title('Sensor 0');
hold off;