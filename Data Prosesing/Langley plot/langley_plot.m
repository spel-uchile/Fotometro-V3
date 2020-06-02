clc
clear
format long g

% leer csv de datos
data = csvread('DATA.txt');

% Coordenadas de la calibracion
latitude = -33.355808;
longitude = -70.246929;

%Valores de referencia de voltaje
ref0 = 5;
ref1 = 5;
ref2 = 5;
ref3 = 5;

% Periodo calibracion
% Inicio
Y = 2018;
M = 5;
D = 18;
H = 0;
MN = 0;
S = 0;

Start = datenum(Y,M,D,H,MN,S);

% Termino
Y = 2018;
M = 5;
D = 18;
H = 23;
MN = 59;
S = 59;

End = datenum(Y,M,D,H,MN,S);
% Air-mass
m = [];

%mediciones
lnv0 = [];
lnv1 = [];
lnv2 = [];
lnv3 = [];
k = 1;

%extraccion de datos

for i = 1:1:length(data(:,1))
    dato = data(i,:);
    Y = dato(10);
    M = dato(9);
    D = dato(8);
    H = dato(11);
    MN = dato(12);
    S = dato(13);

    muestra = datenum(Y,M,D,H,MN,S);
    
  %altura: se prefiere la del GPS por sobre el BMP  
    elevation = dato(14);
    if  elevation == 0
        elevation = dato(17);
    end
   %temperatura y presion: de BMP
    temperature = dato(15);
    pressure = dato(16);
    
    if (Start <= muestra) && (End >= muestra)
        %Valores de las mediciones
        v0 = dato(2);
        v1 = dato(3);
        v2 = dato(4);
        v3 = dato(5);
        
        
        spa_const

        % declare the SPA structure
        % enter required input values into SPA structure
        spa.year          = Y;
        spa.month         = M;
        spa.day           = D;
        spa.hour          = H;
        spa.minute        = MN;
        spa.second        = S;
        spa.timezone      = 0;
        spa.delta_ut1     = 0;
        spa.delta_t       = 64.797;
        spa.longitude     = longitude;
        spa.latitude      = latitude;
        spa.elevation     = elevation;
        spa.pressure      = pressure;
        spa.temperature   = temperature;
        spa.slope         = 0;
        spa.azm_rotation  = 0;
        spa.atmos_refract = 0.5667;
        spa.function      = SPA_ALL;

        solar_position = spal(spa);
        
        % Guardado de air_mass y valores de medicion
        m(k) = a_mass(solar_position.zenith);
        vln0(k) = log(v0-ref0);
        vln1(k) = log(v1-ref1);
        vln2(k) = log(v2-ref2);
        vln3(k) = log(v3-ref3);
        
        k = k+1;
             
        

    end  
end
%Subplots ascenso
indice = find(m==min(m));

figure(1)

sp1 = subplot(2,2,1);
plot(sp1, m(1:indice), vln0(1:indice),'.');
title(sp1, 'Sensor 0 ascenso' );
xlabel(sp1,'Airmass');
ylabel(sp1,'ln(v)');
grid on;
lsline;
legend(sp1, 'Mediciones', 'Regresión');

        
sp2 = subplot(2,2,2);
plot(sp2, m(1:indice), vln1(1:indice),'.');
title(sp2, 'Sensor 1 ascenso');
xlabel(sp2,'Airmass');
ylabel(sp2,'ln(v)');
grid on;
lsline;
legend(sp2, 'Mediciones', 'Regresión');


sp3 = subplot(2,2,3);
plot(sp3, m(1:indice), vln2(1:indice),'.');
title(sp3, 'Sensor 2 ascenso');
xlabel(sp3,'Airmass');
ylabel(sp3,'ln(v)');
grid on;
lsline;
legend(sp3, 'Mediciones', 'Regresión');


sp4 = subplot(2,2,4);
plot(sp4, m(1:indice), vln3(1:indice),'.');
title(sp4, 'Sensor 3 ascenso');
xlabel(sp4,'Airmass');
ylabel(sp4,'ln(v)');
grid on;
lsline;
legend(sp4, 'Mediciones', 'Regresión');


% plots descesno
figure(2)

sp1 = subplot(2,2,1);
plot(sp1, m(indice:end), vln0(indice:end),'.');
title(sp1, 'Sensor 0 descenso' );
xlabel(sp1,'Airmass');
ylabel(sp1,'ln(v)');
grid on;
lsline;
legend(sp1, 'Mediciones', 'Regresión');

        
sp2 = subplot(2,2,2);
plot(sp2, m(indice:end), vln1(indice:end),'.');
title(sp2, 'Sensor 1 descenso');
xlabel(sp2,'Airmass');
ylabel(sp2,'ln(v)');
grid on;
lsline;
legend(sp2, 'Mediciones', 'Regresión');


sp3 = subplot(2,2,3);
plot(sp3, m(indice:end), vln2(indice:end),'.');
title(sp3, 'Sensor 2 descenso');
xlabel(sp3,'Airmass');
ylabel(sp3,'ln(v)');
grid on;
lsline;
legend(sp3, 'Mediciones', 'Regresión');


sp4 = subplot(2,2,4);
plot(sp4, m(indice:end), vln3(indice:end),'.');
title(sp4, 'Sensor 3 descenso');
xlabel(sp4,'Airmass');
ylabel(sp4,'ln(v)');
grid on;
lsline;
legend(sp4, 'Mediciones', 'Regresión');

[pa0 ra0] = regresion(m(1:indice),vln0(1:indice))
[pa1 ra1] = regresion(m(1:indice),vln1(1:indice))
[pa2 ra2] = regresion(m(1:indice),vln2(1:indice))
[pa3 ra3] = regresion(m(1:indice),vln3(1:indice))

[pd0 rd0] = regresion(m(indice:end),vln0(indice:end))
[pd1 rd1] = regresion(m(indice:end),vln1(indice:end))
[pd2 rd2] = regresion(m(indice:end),vln2(indice:end))
[pd3 rd3] = regresion(m(indice:end),vln3(indice:end))