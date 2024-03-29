clc
clear
format long g
sps
spa_const

set(0,'defaultFigureVisible','off');
            
pressure = 950;
temperature = 25;

if isfolder('Aeronet') ~= 1
    disp('No folder Aeronet');
end

if isfolder('Stgonet') ~= 1
    disp('No folder Stgonet');
end

if isfolder('Stgo') ~= 1
    disp('No folder Stgo');
    mkdir('Stgo');
    disp('Folder Stgo created');
end

if isfolder('Aero') ~= 1
    disp('No folder Aero');
    mkdir('Aero');
    disp('Folder Aero created');
end

unidad = '01';
%day = 24;
%month = 05;
%year = 2018;

sday = 05;
smonth = 05;
syear = 2018;

eday = 10;
emonth = 04;
eyear = 2019;

day_ind = datenum(syear, smonth, sday,0, 0, 0);
day_end = datenum(eyear, emonth, eday,0, 0, 0);

while day_end >= day_ind
    day_a = day(day_ind);
    month_a = month(day_ind);
    year_a = year(day_ind);
    flag  = 0;
    clf(figure(5));


    %% Cargar dia mes y ango y luego correr por unidad - datenum + 1 fecha -> unidad
    %Construccion de la estructura bruta para los datos de aeronet
    folder = 'Stgo';
    sub_folder = ls(folder);    
    sub_folder = sub_folder(3:length(sub_folder(:,1)),:);
    
    for j=1:1:length(sub_folder(:,1))
        
        direction = strcat(folder,'/',sub_folder(j,:));
        unidad = direction(6:7);
        load(direction);
        %Indice EQUIPO
        index_stgo = find((stgo.date >= datetime(year_a,month_a,day_a,0,0,0))&(stgo.date <= datetime(year_a,month_a,day_a,23,59,59)));

        calibracion = strcat('Calb2/',sub_folder(j,:));
        load(calibracion);
        dif_dat = abs(out.datenum-datenum(year_a,month_a,day_a,0,0,0));

        %Construccion de la estructura bruta para los datos de aeronet
        folder_a = 'Aero';
        sub_folder_a = ls(folder_a);    
        sub_folder_a = sub_folder_a(3:length(sub_folder_a(:,1)),:);
        

        
        for i=1:1:length(sub_folder_a(:,1))
            direction_a = strcat(folder_a,'/',sub_folder_a(i,:));
            place = direction_a(14:15);
            dig = direction_a(11:12);

            if (dig == unidad)

                direction_a
                load(direction_a);
                %Indices AERONET
                index_aero = find((aero.date >= datetime(year_a, month_a, day_a, 0, 0, 0))&(aero.date <= datetime(year_a, month_a, day_a, 23, 59, 59)));
                if ~isempty(index_aero)

                    c1 = 1;
                    c4 = 1;
                    c3 = 1;
                    c2 = 1;
                    c0 = 1;
                    lg1 = {'Aeronet'};
                    lg2 = {'Aeronet'};
                    lg3 = {'Aeronet'};
                    lg4 = {'Aeronet'};
                    lg = {'Aeronet 1'};

                    direction_a(14:15);
                    index_sps = find(points == place);
                    lt = lat(index_sps);
                    ln = lon(index_sps);

                    if ~isempty(index_stgo)
                        flag = 1;
                        lg1{end+1} = strcat(dig, ' ', place);
                        lg1{end+1} = strcat(dig, '_gl_ ', place);
                        lg{end+1} = strcat(dig, ' ','s1',' ', place);
                        lg{end+1} = 'Aeronet 2';
                        %lg1{end+1} = strcat(place,'wl');
                        lg2{end+1} = strcat(dig, ' ', place);
                        lg2{end+1} = strcat(dig, '_gl_ ', place);
                        lg{end+1} = strcat(dig, ' ','s2',' ', place);
                        lg{end+1} = 'Aeronet 3';
                        %lg2{end+1} = strcat(place,'wl');
                        lg3{end+1} = strcat(dig, ' ', place);
                        lg3{end+1} = strcat(dig, '_gl_ ', place);
                        lg{end+1} = strcat(dig, ' ','s3',' ', place);
                        lg{end+1} = 'Aeronet 4';
                        %lg3{end+1} = strcat(place,'wl');
                        lg4{end+1} = strcat(dig, ' ', place);
                        lg4{end+1} = strcat(dig, '_gl_', place);
                        lg{end+1} = strcat(dig, ' ','s4',' ', place);
                        %lg4{end+1} = strcat(place,'wl');

                        for k = min(index_stgo):1:max(index_stgo)
                            elevation = stgo.altitude_gps(1,k);
                            if  elevation == 0
                                elevation = stgo.altitude_bmp(1,k);
                            end

                            if isnan(stgo.pressure(1,k))
                                stgo.pressure(1,k) = pressure;
                            end

                            if isnan(stgo.temp(1,k))
                                stgo.temp(1,k) = temperature;               
                            end
                            end_date = stgo.datenum(1,k)-datenum(0,0,0,0,2,0);
                            % declare the SPA structure
                            % enter required input values into SPA structure
                            spa.year          = year(end_date); 
                            spa.month         = month(end_date); 
                            spa.day           = day(end_date); 
                            spa.hour          = hour(end_date); 
                            spa.minute        = minute(end_date); 
                            spa.second        = second(end_date); 
                            spa.timezone      = 0;
                            spa.delta_ut1     = 0;
                            spa.delta_t       = 64.797;
                            spa.longitude     = ln;
                            spa.latitude      = lt;
                            spa.elevation     = elevation;
                            spa.pressure      = stgo.pressure(1,k);
                            spa.temperature   = stgo.temp(1,k);
                            spa.slope         = 0;
                            spa.azm_rotation  = 0;
                            spa.atmos_refract = 0.5667;
                            spa.function      = SPA_ALL;

                            solar_position = spal(spa);

                        % Guardado de air_mass y zenith
                            stgo.zenith(1,k) = solar_position.zenith;
                            stgo.m(1,k) = a_mass(solar_position.zenith);
                            stgo.r(1,k) = solar_position.r;
                        end  
                    end
                    save(strcat('Stgo/',dig,'.mat'), 'stgo')

                   

                    %Obtencion constantes de calibracion
                    indices1 = find(out.x1(1,:));
                    x1 = out.x1(:,indices1);
                    df1 = dif_dat(indices1);
                    ind_cal1 = find(df1 == min(df1),1);
                    if ~isempty(ind_cal1)
                        %in_fcal_1 = find(df1 == df1(ind_cal1),1);
                        delta1 = x1(1, ind_cal1);
                        global_delta1 = out.x1_s(1);
                        v01 = x1(2, ind_cal1);
                        global_v01 = out.x1_s(2);
                        
                    end
                    aod_aeronet1 = aero_aod(aero, index_aero, 408);
                    
                    indices2 = find(out.x2(1,:));
                    x2 = out.x2(:,indices2);
                    df2 = dif_dat(indices2);
                    ind_cal2 = find(df2 == min(df2),1);
                    if ~isempty(ind_cal2)
                        %in_fcal_2 = find(dif_dat == df2(ind_cal2),1);
                        delta2 = x2(1, ind_cal2);
                        global_delta2 = out.x2_s(1);
                        v02 = x2(2,ind_cal2);
                        global_v02 = out.x2_s(2);

                    end
                    aod_aeronet2 = aero_aod(aero, index_aero, 408);
                    
                    indices3 = find(out.x3(1,:));
                    x3 = out.x3(:,indices3);
                    df3 = dif_dat(indices3);
                    ind_cal3 = find(df3 == min(df3),1);
                    if ~isempty(ind_cal3)    
                        %in_fcal_3 = find(dif_dat == df3(ind_cal3),1);
                        delta3 = x3(1,ind_cal3);
                        global_delta3 = out.x3_s(1);
                        v03 = x3(2,ind_cal3);
                        global_v03 = out.x3_s(2);
                        
                    end
                    aod_aeronet3 = aero_aod(aero, index_aero, 408);
                    
                    indices4 = find(out.x4(1,:));
                    x4 = out.x4(:,indices4);
                    df4 = dif_dat(indices4);
                    ind_cal4 = find(df4 == min(df4),1);
                    if ~isempty(ind_cal4)
                        %in_fcal_4 = find(dif_dat == df4(ind_cal4),1);
                        delta4 = x4(1, ind_cal4);
                        global_delta4 = out.x4_s(1);
                        v04 = x4(2, ind_cal4);
                        global_v04 = out.x4_s(2);
                       
                    end
                    aod_aeronet4 = aero_aod(aero, index_aero, 408);                    

                    %AOD aeronet





                    %extracción de datos del dia
                    adn = aero.datenum(index_aero);
                    dn = stgo.datenum(index_stgo);
                    dt = stgo.date(index_stgo);
                    dt_aero = aero.date(index_aero);

                    r = stgo.r(index_stgo);
                    p = stgo.pressure(index_stgo);
                    m = stgo.m(index_stgo);

                    s1 = stgo.sens1(index_stgo);
                    fs1 = filter_sn(s1, dn, adn);


                    if ~isempty(fs1)
                        %dns1 = denoise(s1, dn, fs1);
                        aod1 = aod_2(s1(fs1),r(fs1),p(fs1),m(fs1),v01,408,delta1);
                        gl_aod1 = aod_2(s1(fs1),r(fs1),p(fs1),m(fs1),global_v01,408,global_delta1);
                        %aod_dns1 = aod(dns1(fs1),r(fs1),p(fs1),m(fs1),v01,lambda1);
                        %aod1 = aod(s1(fs1),r(fs1),p(fs1),m(fs1),v01,410);
                        %aod_dns1 = aod(dns1(fs1),r(fs1),p(fs1),m(fs1),v01,410);

                        fig1 = figure(1);

                        plot(dt_aero,aod_aeronet1,'.-');
                        c1 = c1+1;
                        ax.ColorOrderIndex = c1;
                        hold on;
                        grid on;
                        plot(dt(fs1),aod1, '.-');
                        c1 = c1+1;
                        ax.ColorOrderIndex = c1;
                        plot(dt(fs1),gl_aod1, '.-');
                        c1 = c1+1;                        
                        ax.ColorOrderIndex = c1;
                        %plot(dt(fs1),real(aod_dns1),'.-')
                        %c1 = c1+1;
                        %ax.ColorOrderIndex = c1;
                        ylim([0 0.5]);
                        legend(lg1);
                        xlabel('Time');
                        ylabel(strcat("AOD",{' '}, num2str(408),{' '}, "nm"));
                        title('Sensor 0');
                        hold off;
                        saveas(fig1, strcat('aod_2/',unidad,'_s1_',place,'_',num2str(year_a),'_',num2str(month_a),'_',num2str(day_a),'.fig'));
                        saveas(fig1, strcat('aod_2/',unidad,'_s1_',place,'_',num2str(year_a),'_',num2str(month_a),'_',num2str(day_a),'.png'));
                        
                        figure(5);
                        hold on;
                        plot(dt_aero,aod_aeronet1,'.-');
                        c0 = c0+1;
                        ax.ColorOrderIndex = c0;
                        plot(dt(fs1),aod1, '.-');
                        c0 = c0+1;
                        ax.ColorOrderIndex = c0;
                        hold off;
                        
                    end

                    s2 = stgo.sens2(index_stgo);
                    fs2 = filter_sn(s2, dn, adn);

                    if ~isempty(fs2)
                        %dns2 = denoise(s2, dn, fs2);
                        aod2 = aod_2(s2(fs2),r(fs2),p(fs2),m(fs2),v02,408,delta2);
                        gl_aod2 = aod_2(s2(fs2),r(fs2),p(fs2),m(fs2),global_v02,408,global_delta2);
                        %aod_dns2 = aod(dns2(fs2),r(fs2),p(fs2),m(fs2),v02,lambda2);
                        %aod2 = aod(s2(fs2),r(fs2),p(fs2),m(fs2),v02,410);
                        %aod_dns2 = aod(dns2(fs2),r(fs2),p(fs2),m(fs2),v02,410);

                        fig2 = figure(2);

                        plot(dt_aero,aod_aeronet2,'.-');
                        c2 = c2+1;
                        ax.ColorOrderIndex = c2;

                        hold on;
                        grid on;
                        plot(dt(fs2),aod2, '.-');
                        c2 = c2+1;
                        ax.ColorOrderIndex = c2;
                        plot(dt(fs2),gl_aod2, '.-');
                        c2 = c2+1;                        
                        ax.ColorOrderIndex = c2;
                        %plot(dt(fs2),real(aod_dns2),'.-')
                        %c2 = c2+1;
                        %ax.ColorOrderIndex = c2;
                        ylim([0 0.5]);
                        legend(lg2);
                        xlabel('Time');
                        ylabel(strcat("AOD",{' '}, num2str(408),{' '}, "nm"));
                        title('Sensor 1');
                        hold off;
                        saveas(fig2, strcat('aod_2/',unidad,'_s2_',place,'_',num2str(year_a),'_',num2str(month_a),'_',num2str(day_a),'.fig'));
                        saveas(fig2, strcat('aod_2/',unidad,'_s2_',place,'_',num2str(year_a),'_',num2str(month_a),'_',num2str(day_a),'.png'));
                        
                        figure(5);
                        hold on;
                        plot(dt_aero,aod_aeronet2,'.-');
                        c0 = c0+1;
                        ax.ColorOrderIndex = c0;
                        plot(dt(fs2),aod2, '.-');
                        c0 = c0+1;
                        ax.ColorOrderIndex = c0;
                        hold off;
                    end

                    s3 = stgo.sens3(index_stgo);
                    fs3 = filter_sn(s3, dn, adn);

                    if ~isempty(fs3)
                        %dns3 = denoise(s3, dn, fs3);
                        aod3 = aod_2(s3(fs3),r(fs3),p(fs3),m(fs3),v03,408,delta3);
                        gl_aod3 = aod_2(s3(fs3),r(fs3),p(fs3),m(fs3),global_v03,408,global_delta3);
                        %aod_dns3 = aod(dns3(fs3),r(fs3),p(fs3),m(fs3),v03,lambda3);
                        %aod3 = aod(s3(fs3),r(fs3),p(fs3),m(fs3),v03,410);
                        %aod_dns3 = aod(dns3(fs3),r(fs3),p(fs3),m(fs3),v03,410);

                        fig3 = figure(3);

                        plot(dt_aero,aod_aeronet3,'.-');
                        c3 = c3+1;
                        ax.ColorOrderIndex = c3;

                        hold on;
                        grid on;
                        plot(dt(fs3),aod3, '.-');
                        c3 = c3+1;
                        ax.ColorOrderIndex = c3;
                        plot(dt(fs3),gl_aod3, '.-');
                        c3 = c3+1;
                        ax.ColorOrderIndex = c3;
                        %plot(dt(fs3),real(aod_dns3),'.-')
                        %c3 = c3+1;
                        %ax.ColorOrderIndex = c3;
                        ylim([0 0.5]);
                        legend(lg3);
                        xlabel('Time');
                        ylabel(strcat("AOD",{' '}, num2str(408),{' '}, "nm"));
                        title('Sensor 2');
                        hold off;
                        saveas(fig3, strcat('aod_2/',unidad,'_s3_',place,'_',num2str(year_a),'_',num2str(month_a),'_',num2str(day_a),'.fig'));
                        saveas(fig3, strcat('aod_2/',unidad,'_s3_',place,'_',num2str(year_a),'_',num2str(month_a),'_',num2str(day_a),'.png')); 
                        
                        figure(5);
                        hold on;
                        plot(dt_aero,aod_aeronet3,'.-');
                        c0 = c0+1;
                        ax.ColorOrderIndex = c0;
                        plot(dt(fs3),aod3, '.-');
                        c0 = c0+1;
                        ax.ColorOrderIndex = c0;
                        hold off;                        

                    end

                    s4 = stgo.sens4(index_stgo);
                    fs4 = filter_sn(s4, dn, adn);

                    if ~isempty(fs4)
                        %dns4 = denoise(s4, dn, fs4);
                        aod4 = aod_2(s4(fs4),r(fs4),p(fs4),m(fs4),v04,408,delta4);
                        gl_aod4 = aod_2(s4(fs4),r(fs4),p(fs4),m(fs4),global_v04,408,global_delta4);
                        %aod_dns4 = aod(dns4(fs4),r(fs4),p(fs4),m(fs4),v04,lambda4);
                        %aod4 = aod(s4(fs4),r(fs4),p(fs4),m(fs4),v04,410);
                        %aod_dns4 = aod(dns4(fs4),r(fs4),p(fs4),m(fs4),v04,410);

                        fig4 = figure(4);

                        plot(dt_aero,aod_aeronet4,'.-');
                        c4 = c4+1;
                        ax.ColorOrderIndex = c4;

                        hold on;
                        grid on;
                        plot(dt(fs4),aod4, '.-');
                        c4 = c4+1;
                        ax.ColorOrderIndex = c4;
                        plot(dt(fs4),gl_aod4, '.-');
                        c4 = c4+1;
                        ax.ColorOrderIndex = c4;
                        %plot(dt(fs4),real(aod_dns4),'.-')
                        %c4 = c4+1;
                        %ax.ColorOrderIndex = c4;
                        ylim([0 0.5]);
                        legend(lg4);
                        xlabel('Time');
                        ylabel(strcat("AOD",{' '}, num2str(408),{' '}, "nm"));
                        title('Sensor 3');
                        hold off;
                        saveas(fig4, strcat('aod_2/',unidad,'_s4_',place,'_',num2str(year_a),'_',num2str(month_a),'_',num2str(day_a),'.fig'));
                        saveas(fig4, strcat('aod_2/',unidad,'_s4_',place,'_',num2str(year_a),'_',num2str(month_a),'_',num2str(day_a),'.png'));                
                        
                        figure(5);
                        hold on;
                        plot(dt_aero,aod_aeronet4,'.-');
                        c0 = c0+1;
                        ax.ColorOrderIndex = c0;
                        plot(dt(fs4),aod4, '.-');
                        c0 = c0+1;
                        ax.ColorOrderIndex = c0;
                        hold off;

                    end

                end

            end
        end
        set(0,'defaultFigureVisible','on');
      
    end

    if flag
        figure(5);
        hold on
        grid on
        ylim([0 0.5]);
        legend(lg);
        xlabel('Time');
        ylabel(strcat("AOD",{' '}, num2str('390-420'),{' '}, "nm"));
        title('All');
        hold off;
        saveas(figure(5), strcat('aod_2/','All','_',num2str(year_a),'_',num2str(month_a),'_',num2str(day_a),'.fig'));
        saveas(figure(5), strcat('aod_2/','All','_',num2str(year_a),'_',num2str(month_a),'_',num2str(day_a),'.png'));  
    end
    day_ind = day_ind + datenum(0,0,1,0,0,0);
end
