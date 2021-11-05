clc;
clear();
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

[data11, date11, adata11, adate11] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
[data12, date12, adata12, adate12] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data13, date13, adata13, adate13] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data14, date14, adata14, adate14] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig1 = plot_aod(data11, date11, adata11, adate11,1);
%fig2 = plot_aod(data12, date12, adata12, adate12,2);
%fig3 = plot_aod(data13, date13, adata13, adate13,3);
%fig4 = plot_aod(data14, date14, adata14, adate14,4);

%Archivo de Calibracion
load('Calb/02.mat')
%Archivo de Datos
load('Stgo/02.mat')
%Datos Aeronet
load('Aero/aero_02_C.mat')

[data21, date21, adata21, adate21] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
[data22, date22, adata22, adate22] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data23, date23, adata23, adate23] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data24, date24, adata24, adate24] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig5 = plot_aod(data21, date21, adata21, adate21,5);
%fig6 = plot_aod(data22, date22, adata22, adate22,6);
%fig7 = plot_aod(data23, date23, adata23, adate23,7);
%fig8 = plot_aod(data24, date24, adata24, adate24,8);

%Archivo de Calibracion
load('Calb/03.mat')
%Archivo de Datos
load('Stgo/03.mat')
%Datos Aeronet
load('Aero/aero_03_C.mat')

[data32, date32, adata32, adate32] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data33, date33, adata33, adate33] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data34, date34, adata34, adate34] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig9 = plot_aod(data32, date32, adata32, adate32,9);
%fig10 = plot_aod(data33, date33, adata33, adate33,10);
%fig11 = plot_aod(data34, date34, adata34, adate34,11);

%Archivo de Calibracion
load('Calb/04.mat')
%Archivo de Datos
load('Stgo/04.mat')
%Datos Aeronet
load('Aero/aero_04_C.mat')

[data41, date41, adata41, adate41] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
[data42, date42, adata42, adate42] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data43, date43, adata43, adate43] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data44, date44, adata44, adate44] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig12 = plot_aod(data41, date41, adata41, adate21,18);
%fig13 = plot_aod(data42, date42, adata42, adate22,17);
%fig14 = plot_aod(data43, date43, adata43, adate23,16);
%fig15 = plot_aod(data44, date44, adata44, adate24,15);

%Archivo de Calibracion
load('Calb/07.mat')
%Archivo de Datos
load('Stgo/07.mat')
%Datos Aeronet
load('Aero/aero_07_C.mat')


[data72, date72, adata72, adate72] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data73, date73, adata73, adate73] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data74, date74, adata74, adate74] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig16 = plot_aod(data72, date72, adata72, adate72,16);
%fig17 = plot_aod(data73, date73, adata73, adate73,17);
%fig18 = plot_aod(data74, date74, adata74, adate74,18);
%Archivo de Calibracion
load('Calb/08.mat')
%Archivo de Datos
load('Stgo/08.mat')
%Datos Aeronet
load('Aero/aero_08_C.mat')

[data81, date81, adata81, adate81] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
[data82, date82, adata82, adate82] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data83, date83, adata83, adate83] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data84, date84, adata84, adate84] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig19 = plot_aod(data81, date81, adata81, adate81,19);
%fig20 = plot_aod(data82, date82, adata82, adate82,20);
%fig21 = plot_aod(data83, date83, adata83, adate83,21);
%fig22 = plot_aod(data84, date84, adata84, adate84,22);

%Archivo de Calibracion
load('Calb/10.mat')
%Archivo de Datos
load('Stgo/10.mat')
%Datos Aeronet
load('Aero/aero_10_C.mat')

% [data101, date101, adata101, adate101] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
% [data102, date102, adata102, adate102] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data103, date103, adata103, adate103] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);

% fig23 = plot_aod(data101, date101, adata101, adate101,23);
% fig24 = plot_aod(data102, date102, adata102, adate102,24);
% fig25 = plot_aod(data103, date103, adata103, adate103,25);

m2 = minutes(2);
k = 1;
for i=1:1:length(adate11)
    j=1;
    
    index = find(date11 >(adate11(i)-m2) & date11 < (adate11(i)+ m2));
    if ~isempty(index) && (data11(index) > 0)
        data(j) = data11(index);
        date(j) = date11(index);
        j = j+1;
    end

    index = find(date12 >(adate11(i)-m2) & date12 < (adate11(i)+ m2));
    if ~isempty(index) && (data12(index) > 0)
        data(j) = data12(index);
        date(j) = date12(index);
        j = j+1;
    end
    
    index = find(date13 >(adate11(i)-m2) & date13 < (adate11(i)+ m2));
    if ~isempty(index) && (data13(index) > 0)
        data(j) = data13(index);
        date(j) = date13(index);
        j = j+1;
    end 
    
    index = find(date14 >(adate11(i)-m2) & date14 < (adate11(i)+ m2));
    if ~isempty(index) && (data14(index) > 0)
        data(j) = data14(index);
        date(j) = date14(index);
        j = j+1;
    end    
    
    index = find(date21 >(adate11(i)-m2) & date21 < (adate11(i)+ m2));
    if ~isempty(index) && (data21(index) > 0)
        data(j) = data21(index);
        date(j) = date21(index);
        j = j+1;
    end

    index = find(date22 >(adate11(i)-m2) & date22 < (adate11(i)+ m2));
    if ~isempty(index) && (data22(index) > 0)
        data(j) = data22(index);
        date(j) = date22(index);
        j = j+1;
    end
    
    index = find(date23 >(adate11(i)-m2) & date23 < (adate11(i)+ m2));
    if ~isempty(index) && (data23(index) > 0)
        data(j) = data23(index);
        date(j) = date23(index);
        j = j+1;
    end 
    
    index = find(date24 >(adate11(i)-m2) & date24 < (adate11(i)+ m2));
    if ~isempty(index) && (data24(index) > 0)
        data(j) = data24(index);
        date(j) = date24(index);
        j = j+1;
    end  
    
    index = find(date32 >(adate11(i)-m2) & date32 < (adate11(i)+ m2));
    if ~isempty(index) && (data32(index) > 0)
        data(j) = data32(index);
        date(j) = date32(index);
        j = j+1;
    end
    
    index = find(date33 >(adate11(i)-m2) & date33 < (adate11(i)+ m2));
    if ~isempty(index) && (data33(index) > 0)
        data(j) = data33(index);
        date(j) = date33(index);
        j = j+1;
    end 
    
    index = find(date34 >(adate11(i)-m2) & date34 < (adate11(i)+ m2));
    if ~isempty(index) && (data34(index) > 0)
        data(j) = data34(index);
        date(j) = date34(index);
        j = j+1;
    end   

    index = find(date41 >(adate11(i)-m2) & date41 < (adate11(i)+ m2));
    if ~isempty(index) && (data41(index) > 0)
        data(j) = data41(index);
        date(j) = date41(index);
        j = j+1;
    end

    index = find(date42 >(adate11(i)-m2) & date42 < (adate11(i)+ m2));
    if ~isempty(index) && (data42(index) > 0)
        data(j) = data42(index);
        date(j) = date42(index);
        j = j+1;
    end
    
    index = find(date43 >(adate11(i)-m2) & date43 < (adate11(i)+ m2));
    if ~isempty(index) && (data43(index) > 0)
        data(j) = data43(index);
        date(j) = date43(index);
        j = j+1;
    end 
    
    index = find(date44 >(adate11(i)-m2) & date44 < (adate11(i)+ m2));
    if ~isempty(index) && (data44(index) > 0)
        data(j) = data44(index);
        date(j) = date44(index);
        j = j+1;
    end 
    
    index = find(date72 >(adate11(i)-m2) & date72 < (adate11(i)+ m2));
    if ~isempty(index) && (data72(index) > 0)
        data(j) = data72(index);
        date(j) = date72(index);
        j = j+1;
    end
    
    index = find(date73 >(adate11(i)-m2) & date73 < (adate11(i)+ m2));
    if ~isempty(index) && (data73(index) > 0)
        data(j) = data73(index);
        date(j) = date73(index);
        j = j+1;
    end 
    
    index = find(date74 >(adate11(i)-m2) & date74 < (adate11(i)+ m2));
    if ~isempty(index) && (data74(index) > 0)
        data(j) = data74(index);
        date(j) = date74(index);
        j = j+1;
    end  
    
    index = find(date81 >(adate11(i)-m2) & date81 < (adate11(i)+ m2));
    if ~isempty(index) && (data81(index) > 0)
        data(j) = data81(index);
        date(j) = date81(index);
        j = j+1;
    end

    index = find(date82 >(adate11(i)-m2) & date82 < (adate11(i)+ m2));
    if ~isempty(index) && (data82(index) > 0)
        data(j) = data82(index);
        date(j) = date82(index);
        j = j+1;
    end
    
    index = find(date83 >(adate11(i)-m2) & date83 < (adate11(i)+ m2));
    if ~isempty(index) && (data83(index) > 0)
        data(j) = data83(index);
        date(j) = date83(index);
        j = j+1;
    end 
    
    index = find(date84 >(adate11(i)-m2) & date84 < (adate11(i)+ m2));
    if ~isempty(index) && (data84(index) > 0)
        data(j) = data84(index);
        date(j) = date84(index);
        j = j+1;
    end 
    
%         index = find(date101 >(adate11(i)-m2) & date101 < (adate11(i)+ m2));
%     if ~isempty(index) && (data101(index) > 0)
%         data(j) = data101(index);
%         date(j) = date101(index);
%         j = j+1;
%     end

%     index = find(date102 >(adate11(i)-m2) & date102 < (adate11(i)+ m2));
%     if ~isempty(index) && (data102(index) > 0)
%         data(j) = data102(index);
%         date(j) = date102(index);
%         j = j+1;
%     end
    
%     index = find(date103 >(adate11(i)-m2) & date103 < (adate11(i)+ m2));
%     if ~isempty(index) && (data103(index) > 0)
%         data(j) = data103(index);
%         date(j) = date103(index);
%         j = j+1;
%     end  
    
    if j > 2
        
        [ol_data, ol_date] = rm_outlier(data(1:j-1),date(1:j-1),1);
        
        avge(k) = mean(data(1:j-1));
        sdv(k) = std(data(1:j-1));
        mdt(k) = mean(date(1:j-1));
        amdt(k) = adata11(i);
        
        ol_avg(k) = mean(ol_data);
        ol_std(k) = std(ol_data);
        ol_mdt(k) = mean(ol_date);
 
        i3 = find((data<=(avge(k)+3*sdv(k))) & data>=(avge(k)-3*sdv(k)));
        i2 = find((data<=(avge(k)+2*sdv(k))) & data>=(avge(k)-2*sdv(k)));
        i1 = find((data<=(avge(k)+1*sdv(k))) & data>=(avge(k)-1*sdv(k)));
        d3 = data(i3);
        d2 = data(i2);
        d1 = data(i1);
        l1 = date(i1);
        l2 = date(i2);
        l3 = date(i3);
        figure(31)
        hold on
        plot(l3,d3,'.b');
        plot(l2,d2,'.g');
        plot(l1,d1,'.r');
        
        
        text = mat2str(d3);
        tiempo = strcat(mat2str(hour(l3(1))),'_',mat2str(minute(l3(1))));
        fileID = fopen('textfile.txt','a+');           
        fprintf(fileID, strcat(tiempo,'_',text(2:end-1),'\n'));     
        fclose(fileID);
        
        k = k+1;
    end
end
figure(31)
plot(ol_mdt,amdt,'k')
grid on

figure(23)
plot(datenum(mdt),amdt,'r')
grid on
hold on
errorbar(datenum(mdt),avge,sdv)
datetick('x',15)

figure(24)
plot(datenum(ol_mdt),amdt,'r')
grid on
hold on
errorbar(datenum(ol_mdt),ol_avg,ol_std)
datetick('x',15)

figure(25)
plot(mdt, sdv,'.')
grid on

figure(26)
plot(ol_mdt,ol_std,'.')
grid on

%% 
clc;
clear();
%LF 16062018
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

[data11, date11, adata11, adate11] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
[data12, date12, adata12, adate12] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data13, date13, adata13, adate13] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data14, date14, adata14, adate14] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig1 = plot_aod(data11, date11, adata11, adate11,1);
%fig2 = plot_aod(data12, date12, adata12, adate12,2);
%fig3 = plot_aod(data13, date13, adata13, adate13,3);
%fig4 = plot_aod(data14, date14, adata14, adate14,4);

%Archivo de Calibracion
load('Calb/02.mat')
%Archivo de Datos
load('Stgo/02.mat')
%Datos Aeronet
load('Aero/aero_02_C.mat')

[data21, date21, adata21, adate21] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
[data22, date22, adata22, adate22] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data23, date23, adata23, adate23] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data24, date24, adata24, adate24] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig5 = plot_aod(data21, date21, adata21, adate21,5);
%fig6 = plot_aod(data22, date22, adata22, adate22,6);
%fig7 = plot_aod(data23, date23, adata23, adate23,7);
%fig8 = plot_aod(data24, date24, adata24, adate24,8);

%Archivo de Calibracion
load('Calb/03.mat')
%Archivo de Datos
load('Stgo/03.mat')
%Datos Aeronet
load('Aero/aero_03_C.mat')

[data32, date32, adata32, adate32] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data33, date33, adata33, adate33] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data34, date34, adata34, adate34] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig9 = plot_aod(data32, date32, adata32, adate32,9);
%fig10 = plot_aod(data33, date33, adata33, adate33,10);
%fig11 = plot_aod(data34, date34, adata34, adate34,11);

%Archivo de Calibracion
load('Calb/04.mat')
%Archivo de Datos
load('Stgo/04.mat')
%Datos Aeronet
load('Aero/aero_04_C.mat')

[data41, date41, adata41, adate41] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
[data42, date42, adata42, adate42] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data43, date43, adata43, adate43] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data44, date44, adata44, adate44] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig12 = plot_aod(data41, date41, adata41, adate21,18);
%fig13 = plot_aod(data42, date42, adata42, adate22,17);
%fig14 = plot_aod(data43, date43, adata43, adate23,16);
%fig15 = plot_aod(data44, date44, adata44, adate24,15);

%Archivo de Calibracion
load('Calb/07.mat')
%Archivo de Datos
load('Stgo/07.mat')
%Datos Aeronet
load('Aero/aero_07_C.mat')


[data72, date72, adata72, adate72] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data73, date73, adata73, adate73] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data74, date74, adata74, adate74] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig16 = plot_aod(data72, date72, adata72, adate72,16);
%fig17 = plot_aod(data73, date73, adata73, adate73,17);
%fig18 = plot_aod(data74, date74, adata74, adate74,18);
%Archivo de Calibracion
load('Calb/08.mat')
%Archivo de Datos
load('Stgo/08.mat')
%Datos Aeronet
load('Aero/aero_08_C.mat')

[data81, date81, adata81, adate81] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
[data82, date82, adata82, adate82] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data83, date83, adata83, adate83] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);
[data84, date84, adata84, adate84] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 4);

%fig19 = plot_aod(data81, date81, adata81, adate81,19);
%fig20 = plot_aod(data82, date82, adata82, adate82,20);
%fig21 = plot_aod(data83, date83, adata83, adate83,21);
%fig22 = plot_aod(data84, date84, adata84, adate84,22);

%Archivo de Calibracion
load('Calb/10.mat')
%Archivo de Datos
load('Stgo/10.mat')
%Datos Aeronet
load('Aero/aero_10_C.mat')

% [data101, date101, adata101, adate101] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 1);
% [data102, date102, adata102, adate102] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 2);
[data103, date103, adata103, adate103] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, 3);

% fig23 = plot_aod(data101, date101, adata101, adate101,23);
% fig24 = plot_aod(data102, date102, adata102, adate102,24);
% fig25 = plot_aod(data103, date103, adata103, adate103,25);

m2 = minutes(2);
k = 1;
for i=1:1:length(adate11)
    j=1;
    
    index = find(date11 >(adate11(i)-m2) & date11 < (adate11(i)+ m2));
    if ~isempty(index) && (data11(index) > 0)
        data(j) = data11(index);
        date(j) = date11(index);
        j = j+1;
    end

    index = find(date12 >(adate11(i)-m2) & date12 < (adate11(i)+ m2));
    if ~isempty(index) && (data12(index) > 0)
        data(j) = data12(index);
        date(j) = date12(index);
        j = j+1;
    end
    
    index = find(date13 >(adate11(i)-m2) & date13 < (adate11(i)+ m2));
    if ~isempty(index) && (data13(index) > 0)
        data(j) = data13(index);
        date(j) = date13(index);
        j = j+1;
    end 
    
    index = find(date14 >(adate11(i)-m2) & date14 < (adate11(i)+ m2));
    if ~isempty(index) && (data14(index) > 0)
        data(j) = data14(index);
        date(j) = date14(index);
        j = j+1;
    end    
    
    index = find(date21 >(adate11(i)-m2) & date21 < (adate11(i)+ m2));
    if ~isempty(index) && (data21(index) > 0)
        data(j) = data21(index);
        date(j) = date21(index);
        j = j+1;
    end

    index = find(date22 >(adate11(i)-m2) & date22 < (adate11(i)+ m2));
    if ~isempty(index) && (data22(index) > 0)
        data(j) = data22(index);
        date(j) = date22(index);
        j = j+1;
    end
    
    index = find(date23 >(adate11(i)-m2) & date23 < (adate11(i)+ m2));
    if ~isempty(index) && (data23(index) > 0)
        data(j) = data23(index);
        date(j) = date23(index);
        j = j+1;
    end 
    
    index = find(date24 >(adate11(i)-m2) & date24 < (adate11(i)+ m2));
    if ~isempty(index) && (data24(index) > 0)
        data(j) = data24(index);
        date(j) = date24(index);
        j = j+1;
    end  
    
    index = find(date32 >(adate11(i)-m2) & date32 < (adate11(i)+ m2));
    if ~isempty(index) && (data32(index) > 0)
        data(j) = data32(index);
        date(j) = date32(index);
        j = j+1;
    end
    
    index = find(date33 >(adate11(i)-m2) & date33 < (adate11(i)+ m2));
    if ~isempty(index) && (data33(index) > 0)
        data(j) = data33(index);
        date(j) = date33(index);
        j = j+1;
    end 
    
    index = find(date34 >(adate11(i)-m2) & date34 < (adate11(i)+ m2));
    if ~isempty(index) && (data34(index) > 0)
        data(j) = data34(index);
        date(j) = date34(index);
        j = j+1;
    end   

    index = find(date41 >(adate11(i)-m2) & date41 < (adate11(i)+ m2));
    if ~isempty(index) && (data41(index) > 0)
        data(j) = data41(index);
        date(j) = date41(index);
        j = j+1;
    end

    index = find(date42 >(adate11(i)-m2) & date42 < (adate11(i)+ m2));
    if ~isempty(index) && (data42(index) > 0)
        data(j) = data42(index);
        date(j) = date42(index);
        j = j+1;
    end
    
    index = find(date43 >(adate11(i)-m2) & date43 < (adate11(i)+ m2));
    if ~isempty(index) && (data43(index) > 0)
        data(j) = data43(index);
        date(j) = date43(index);
        j = j+1;
    end 
    
    index = find(date44 >(adate11(i)-m2) & date44 < (adate11(i)+ m2));
    if ~isempty(index) && (data44(index) > 0)
        data(j) = data44(index);
        date(j) = date44(index);
        j = j+1;
    end 
    
    index = find(date72 >(adate11(i)-m2) & date72 < (adate11(i)+ m2));
    if ~isempty(index) && (data72(index) > 0)
        data(j) = data72(index);
        date(j) = date72(index);
        j = j+1;
    end
    
    index = find(date73 >(adate11(i)-m2) & date73 < (adate11(i)+ m2));
    if ~isempty(index) && (data73(index) > 0)
        data(j) = data73(index);
        date(j) = date73(index);
        j = j+1;
    end 
    
    index = find(date74 >(adate11(i)-m2) & date74 < (adate11(i)+ m2));
    if ~isempty(index) && (data74(index) > 0)
        data(j) = data74(index);
        date(j) = date74(index);
        j = j+1;
    end  
    
    index = find(date81 >(adate11(i)-m2) & date81 < (adate11(i)+ m2));
    if ~isempty(index) && (data81(index) > 0)
        data(j) = data81(index);
        date(j) = date81(index);
        j = j+1;
    end

    index = find(date82 >(adate11(i)-m2) & date82 < (adate11(i)+ m2));
    if ~isempty(index) && (data82(index) > 0)
        data(j) = data82(index);
        date(j) = date82(index);
        j = j+1;
    end
    
    index = find(date83 >(adate11(i)-m2) & date83 < (adate11(i)+ m2));
    if ~isempty(index) && (data83(index) > 0)
        data(j) = data83(index);
        date(j) = date83(index);
        j = j+1;
    end 
    
    index = find(date84 >(adate11(i)-m2) & date84 < (adate11(i)+ m2));
    if ~isempty(index) && (data84(index) > 0)
        data(j) = data84(index);
        date(j) = date84(index);
        j = j+1;
    end 
    
%         index = find(date101 >(adate11(i)-m2) & date101 < (adate11(i)+ m2));
%     if ~isempty(index) && (data101(index) > 0)
%         data(j) = data101(index);
%         date(j) = date101(index);
%         j = j+1;
%     end

%     index = find(date102 >(adate11(i)-m2) & date102 < (adate11(i)+ m2));
%     if ~isempty(index) && (data102(index) > 0)
%         data(j) = data102(index);
%         date(j) = date102(index);
%         j = j+1;
%     end
    
%     index = find(date103 >(adate11(i)-m2) & date103 < (adate11(i)+ m2));
%     if ~isempty(index) && (data103(index) > 0)
%         data(j) = data103(index);
%         date(j) = date103(index);
%         j = j+1;
%     end  
    
    if j > 2
        
        [ol_data, ol_date] = rm_outlier(data(1:j-1),date(1:j-1),1);
        
        avge(k) = mean(data(1:j-1));
        sdv(k) = std(data(1:j-1));
        mdt(k) = mean(date(1:j-1));
        amdt(k) = adata11(i);
        
        ol_avg(k) = mean(ol_data);
        ol_std(k) = std(ol_data);
        ol_mdt(k) = mean(ol_date);
         
        k = k+1;
    end
end
figure(23)
grid on
hold on
plot(date11, data11)
plot(date12, data12)
plot(date13, data13)
plot(date14, data14)
plot(date21, data21)
plot(date22, data22)
plot(date23, data23)
plot(date24, data24)
plot(date32, data32)
plot(date33, data33)
plot(date34, data34)
plot(date41, data41)
plot(date42, data42)
plot(date43, data43)
plot(date44, data44)
plot(date72, data72)
plot(date73, data73)
plot(date74, data74)
plot(date81, data81)
plot(date82, data82)
plot(date83, data83)
plot(date84, data84)
plot(adate11,adata11,'r')
%errorbar(datenum(mdt),avge,sdv)
%datetick('x',15)

%figure(24)
%plot(datenum(ol_mdt),amdt,'r')
%grid on
%hold on
%errorbar(datenum(ol_mdt),ol_avg,ol_std)
%datetick('x',15)

