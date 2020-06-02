function out = constants2(aero, stgo, lt, ln, dig)
%calibra las constandes del fotometro por dia, total y promedio
    mn = 1;
    spa_const
    pressure = 950;
    temperature = 25;
    
    %longitudes de onda
    low_wl = aero.e_340*1000;
    high_wl = aero.e_440*1000;
    amstrong = aero.ams_340_440;
    
    s_valid1 = [];
    s_valid2 = [];
    s_valid3 = [];
    s_valid4 = [];
    
    p = 1;
    while mn < length(aero.date)
        index_aero = find((aero.date >= datetime(aero.year(mn),aero.month(mn),aero.day(mn),0,0,0))&(aero.date <= datetime(aero.year(mn),aero.month(mn),aero.day(mn),23,59,59)));
        index_stgo = find((stgo.date >= datetime(aero.year(mn),aero.month(mn),aero.day(mn),0,0,0))&(stgo.date <= datetime(aero.year(mn),aero.month(mn),aero.day(mn),23,59,59)));
        
        mn_stgo = min(index_stgo);
                      %altura: se prefiere la del GPS por sobre el BMP  
        length(index_stgo)
        if ~isempty(index_stgo)
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
            
            delta_sens1 = [];
            delta_sens2 = [];
            delta_sens3 = [];
            delta_sens4 = [];
            %calculo diferencias
            for i = 1:1:(length(index_stgo)-1)
                delta_sens1(i) = (stgo.sens1(mn_stgo+i)-stgo.sens1(mn_stgo+i-1))/(stgo.datenum(mn_stgo+i)-stgo.datenum(mn_stgo+i-1));
                delta_sens2(i) = (stgo.sens2(mn_stgo+i)-stgo.sens2(mn_stgo+i-1))/(stgo.datenum(mn_stgo+i)-stgo.datenum(mn_stgo+i-1));
                delta_sens3(i) = (stgo.sens3(mn_stgo+i)-stgo.sens3(mn_stgo+i-1))/(stgo.datenum(mn_stgo+i)-stgo.datenum(mn_stgo+i-1));
                delta_sens4(i) = (stgo.sens4(mn_stgo+i)-stgo.sens4(mn_stgo+i-1))/(stgo.datenum(mn_stgo+i)-stgo.datenum(mn_stgo+i-1));
            end
    
             %calculo diferencias de las diferencias
            delta2_sens1 = [];
            delta2_sens2 = [];
            delta2_sens3 = [];
            delta2_sens4 = [];
            
            for i = 1:1:(length(index_stgo)-2)
                delta2_sens1(i) = (delta_sens1(i+1)-delta_sens1(i))/(stgo.datenum(mn_stgo+i)-stgo.datenum(mn_stgo+i-1));
                delta2_sens2(i) = (delta_sens2(i+1)-delta_sens2(i))/(stgo.datenum(mn_stgo+i)-stgo.datenum(mn_stgo+i-1));
                delta2_sens3(i) = (delta_sens3(i+1)-delta_sens3(i))/(stgo.datenum(mn_stgo+i)-stgo.datenum(mn_stgo+i-1));
                delta2_sens4(i) = (delta_sens4(i+1)-delta_sens4(i))/(stgo.datenum(mn_stgo+i)-stgo.datenum(mn_stgo+i-1));
            end
    
            q_1 = quantile(delta2_sens1, [0.25, 0.75]);
            q_2 = quantile(delta2_sens2, [0.25, 0.75]);
            q_3 = quantile(delta2_sens3, [0.25, 0.75]);
            q_4 = quantile(delta2_sens4, [0.25, 0.75]);

            %dif de cuartos para valores atipicos
            d_1 = 1.5*(q_1(2)-q_1(1));
            d_2 = 1.5*(q_2(2)-q_2(1));
            d_3 = 1.5*(q_3(2)-q_3(1));
            d_4 = 1.5*(q_4(2)-q_4(1));
    
            %cotas inferiores y superiores para valores validos
            l_1 = q_1(1) - d_1;
            u_1 = q_1(2) + d_1;

            l_2 = q_2(1) - d_2;
            u_2 = q_2(2) + d_2;

            l_3 = q_3(1) - d_3;
            u_3 = q_3(2) + d_3;

            l_4 = q_4(1) - d_4;
            u_4 = q_4(2) + d_4;
    
            valid1 = [];
            valid2 = [];
            valid3 = [];
            valid4 = [];
            
            %mn;
            %index_stgo;
    
            for i = 1:1:(length(index_stgo)-2)
                if stgo.sens1(mn_stgo+i) > 150 && stgo.sens1(mn_stgo+i)< 3000 
                    if delta2_sens1(i) >= l_1 && delta2_sens1(i) <= u_1
                        valid1 = [valid1 mn_stgo+i];
                    end
                end
        
                if stgo.sens2(mn_stgo+i) > 150 && stgo.sens2(mn_stgo+i)< 3000 
                    if delta2_sens2(i) >= l_2 && delta2_sens2(i) <= u_2
                        valid2 = [valid2 mn_stgo+i];
                   end
                end
        
                if stgo.sens3(mn_stgo+i) > 150 && stgo.sens3(mn_stgo+i)< 3000 
                    if delta2_sens3(i) >= l_3 && delta2_sens3(i) <= u_3
                        valid3 = [valid3 mn_stgo+i];
                    end
                end
        
                if stgo.sens4(mn_stgo+i) > 150 && stgo.sens4(mn_stgo+i)< 3000
                    if delta2_sens4(i) >= l_4 && delta2_sens4(i) <= u_4
                        valid4 = [valid4 mn_stgo+i];
                    end
                end
            end
            
            valid1_pc = [];
            valid2_pc = [];
            valid3_pc = [];
            valid4_pc = [];
        
            for j = 1:1:length(valid1)
                i = valid1(j);
                if ~isempty(find((aero.datenum(index_aero) <= stgo.datenum(i)+datenum(0,0,0,0,1,0))&(aero.datenum(index_aero) >= stgo.datenum(i)-datenum(0,0,0,0,5,0)),1))
                    valid1_pc = [valid1_pc i];
                    %s_valid1 = [s_valid1 i];
                end
            end
        
            for j = 1:1:length(valid2)
                i = valid2(j);
                if ~isempty(find((aero.datenum(index_aero) <= stgo.datenum(i)+datenum(0,0,0,0,1,0))&(aero.datenum(index_aero) >= stgo.datenum(i)-datenum(0,0,0,0,5,0)),1))
                    valid2_pc = [valid2_pc i];
                    %s_valid2 = [s_valid2 i];
                end
            end
        
            for j = 1:1:length(valid3)
                i = valid3(j);
                if ~isempty(find((aero.datenum(index_aero) <= stgo.datenum(i)+datenum(0,0,0,0,1,0))&(aero.datenum(index_aero) >= stgo.datenum(i)-datenum(0,0,0,0,5,0)),1))
                    valid3_pc = [valid3_pc i];
                    %s_valid3 = [s_valid3 i];
                end
            end
        
            for j = 1:1:length(valid4)
                i = valid4(j);
                if ~isempty(find((aero.datenum(index_aero) <= stgo.datenum(i)+datenum(0,0,0,0,1,0))&(aero.datenum(index_aero) >= stgo.datenum(i)-datenum(0,0,0,0,5,0)),1))
                    valid4_pc = [valid4_pc i];
                    %s_valid4 = [s_valid4 i];
                end
            end
            %Separar los que tengan medciones de CIMEL cercanas CHECK
            %Aplicar algoritmo de calibracion
            %guardar las constantes en una estrucutra para su posterior uso
            %y analisis
            
            %define la función objetivo por dia ESTA PARTE DEBE ADAPTARSE

    
            %Interpolacion de datos
            ir1_340 = interp1(aero.datenum(index_aero), aero.aod_340(index_aero), stgo.datenum(valid1_pc),'nearest','extrap');    
            ir1_440 = interp1(aero.datenum(index_aero), aero.aod_440(index_aero), stgo.datenum(valid1_pc),'nearest','extrap');
            ams_1 = interp1(aero.datenum(index_aero), amstrong(index_aero), stgo.datenum(valid1_pc),'nearest','extrap');
            hig_1 = interp1(aero.datenum(index_aero), high_wl(index_aero), stgo.datenum(valid1_pc),'nearest','extrap');
    
            ir2_340 = interp1(aero.datenum(index_aero), aero.aod_340(index_aero), stgo.datenum(valid2_pc),'nearest','extrap');    
            ir2_440 = interp1(aero.datenum(index_aero), aero.aod_440(index_aero), stgo.datenum(valid2_pc),'nearest','extrap');
            ams_2 = interp1(aero.datenum(index_aero), amstrong(index_aero), stgo.datenum(valid2_pc),'nearest','extrap');
            hig_2 = interp1(aero.datenum(index_aero), high_wl(index_aero), stgo.datenum(valid2_pc),'nearest','extrap');
    
            ir3_340 = interp1(aero.datenum(index_aero), aero.aod_340(index_aero), stgo.datenum(valid3_pc),'nearest','extrap');    
            ir3_440 = interp1(aero.datenum(index_aero), aero.aod_440(index_aero), stgo.datenum(valid3_pc),'nearest','extrap');
            ams_3 = interp1(aero.datenum(index_aero), amstrong(index_aero), stgo.datenum(valid3_pc),'nearest','extrap');
            hig_3 = interp1(aero.datenum(index_aero), high_wl(index_aero), stgo.datenum(valid3_pc),'nearest','extrap');
    
            ir4_340 = interp1(aero.datenum(index_aero), aero.aod_340(index_aero), stgo.datenum(valid4_pc),'nearest','extrap');    
            ir4_440 = interp1(aero.datenum(index_aero), aero.aod_440(index_aero), stgo.datenum(valid4_pc),'nearest','extrap');
            ams_4 = interp1(aero.datenum(index_aero), amstrong(index_aero), stgo.datenum(valid4_pc),'nearest','extrap');
            hig_4 = interp1(aero.datenum(index_aero), high_wl(index_aero), stgo.datenum(valid4_pc),'nearest','extrap');
    
            r1 = stgo.r(valid1_pc);
            m1 = stgo.m(valid1_pc);
            p1 = stgo.pressure(valid1_pc)./1013.25;
            r2 = stgo.r(valid2_pc);
            m2 = stgo.m(valid2_pc);
            p2 = stgo.pressure(valid2_pc)./1013.25;
            r3 = stgo.r(valid3_pc);
            m3 = stgo.m(valid3_pc);
            p3 = stgo.pressure(valid3_pc)./1013.25;
            r4 = stgo.r(valid4_pc);
            m4 = stgo.m(valid4_pc);
            p4 = stgo.pressure(valid4_pc)./1013.25;
            

            %valid4;
            %valid4_pc;
            l = 0;
            d = 0;
            mse_1 = @(v) sum((((log(v./(r1.^2))-log(stgo.sens1(valid1_pc))-reyleigh(408).*p1.*m1)./m1)-(ir1_440.*(408./hig_1).^(-ams_1))).^2);
            mse_2 = @(v) sum((((log(v./(r2.^2))-log(stgo.sens2(valid2_pc))-reyleigh(408).*p2.*m2)./m2)-(ir2_440.*(408./hig_2).^(-ams_2))).^2);
            mse_3 = @(v) sum((((log(v./(r3.^2))-log(stgo.sens3(valid3_pc))-reyleigh(408).*p3.*m3)./m3)-(ir3_440.*(408./hig_3).^(-ams_3))).^2);
            mse_4 = @(v) sum((((log(v./(r4.^2))-log(stgo.sens4(valid4_pc))-reyleigh(408).*p4.*m4)./m4)-(ir4_440.*(408./hig_4).^(-ams_4))).^2);         
            
            n1 = length((stgo.sens1(valid1_pc)));
            n2 = length((stgo.sens2(valid2_pc)));
            n3 = length((stgo.sens3(valid3_pc)));
            n4 = length((stgo.sens4(valid4_pc)));
            
            if ~isempty(valid1_pc)
                [x1, fval1] = opt3(mse_1, n1, 4095);                
            else
                x1 = [4095];
                fval1 = 0;
            end
            
            if ~isempty(valid2_pc)
                [x2, fval2] = opt3(mse_2, n2, 4095);                
            else
                x2 = [4095];
                fval2 = 0;
            end
            
            if ~isempty(valid3_pc)
                [x3, fval3] = opt3(mse_3, n3, 4095);                
            else
                x3 = [4095];
                fval3 = 0;
            end
            
            if ~isempty(valid4_pc)
                [x4, fval4] = opt3(mse_4, n4, 4095);
            else
                x4 = [4095];
                fval4 = 0;
            end

            out.date(1,p) = datetime(aero.year(mn),aero.month(mn),aero.day(mn),0,0,0);
            out.datenum(1,p) = datenum(aero.year(mn),aero.month(mn),aero.day(mn),0,0,0);
            out.x1(1,p) = -1;
            out.x2(1,p) = -1;
            out.x3(1,p) = -1;
            out.x4(1,p) = -1;
            out.fval1(1,p) = -1;
            out.fval2(1,p) = -1;
            out.fval3(1,p) = -1;
            out.fval4(1,p) = -1;
            
            %if (x1(1) >= 395) && (x1(1) <= 425)
            out.x1(1,p) = x1;
            out.fval1(1,p) = fval1;
            for i = 1:1:length(valid1_pc)
                s_valid1 = [s_valid1 valid1_pc(i)];
            end
            %end
            %if (x2(1) >= 395) && (x2(1) <= 425)
            out.x2(1,p) = x2;
            out.fval2(1,p) = fval2;
            for i = 1:1:length(valid2_pc)
                s_valid2 = [s_valid2 valid2_pc(i)];
            end
            %end
            %if (x3(1) >= 395) && (x3(1) <= 425)
            out.x3(1,p) = x3;
            out.fval3(1,p) = fval3;
            for i = 1:1:length(valid3_pc)
                s_valid3 = [s_valid3 valid3_pc(i)];
            end
            %end
            %if (x4(1) >= 395) && (x4(1) <= 425)
            out.x4(1,p) = x4;
            out.fval4(1,p) = fval4;
            for i = 1:1:length(valid4_pc)
                s_valid4 = [s_valid4 valid4_pc(i)];
            end
            %end            
            
            p = p + 1;
            
        end
        
        mx = max(index_aero);
        mn = mx+1;
    end
    
    %Interpolacion de datos
    ir1_340 = interp1(aero.datenum, aero.aod_340, stgo.datenum(s_valid1),'nearest','extrap');    
    ir1_440 = interp1(aero.datenum, aero.aod_440, stgo.datenum(s_valid1),'nearest','extrap');
    ams_1 = interp1(aero.datenum, amstrong, stgo.datenum(s_valid1),'nearest','extrap');
    hig_1 = interp1(aero.datenum, high_wl, stgo.datenum(s_valid1),'nearest','extrap');
    
    ir2_340 = interp1(aero.datenum, aero.aod_340, stgo.datenum(s_valid2),'nearest','extrap');    
    ir2_440 = interp1(aero.datenum, aero.aod_440, stgo.datenum(s_valid2),'nearest','extrap');
    ams_2 = interp1(aero.datenum, amstrong, stgo.datenum(s_valid2),'nearest','extrap');
    hig_2 = interp1(aero.datenum, high_wl, stgo.datenum(s_valid2),'nearest','extrap');
    
    ir3_340 = interp1(aero.datenum, aero.aod_340, stgo.datenum(s_valid3),'nearest','extrap');    
    ir3_440 = interp1(aero.datenum, aero.aod_440, stgo.datenum(s_valid3),'nearest','extrap');
    ams_3 = interp1(aero.datenum, amstrong, stgo.datenum(s_valid3),'nearest','extrap');
    hig_3 = interp1(aero.datenum, high_wl, stgo.datenum(s_valid3),'nearest','extrap');
    
    ir4_340 = interp1(aero.datenum, aero.aod_340, stgo.datenum(s_valid4),'nearest','extrap');    
    ir4_440 = interp1(aero.datenum, aero.aod_440, stgo.datenum(s_valid4),'nearest','extrap');
    ams_4 = interp1(aero.datenum, amstrong, stgo.datenum(s_valid4),'nearest','extrap');
    hig_4 = interp1(aero.datenum, high_wl, stgo.datenum(s_valid4),'nearest','extrap');
    
    r1 = stgo.r(s_valid1);
    m1 = stgo.m(s_valid1);
    p1 = stgo.pressure(s_valid1)./1013.25;
    r2 = stgo.r(s_valid2);
    m2 = stgo.m(s_valid2);
    p2 = stgo.pressure(s_valid2)./1013.25;
    r3 = stgo.r(s_valid3);
    m3 = stgo.m(s_valid3);
    p3 = stgo.pressure(s_valid3)./1013.25;
    r4 = stgo.r(s_valid4);
    m4 = stgo.m(s_valid4);
    p4 = stgo.pressure(s_valid4)./1013.25;
            

    %valid4;
    %valid4_pc;
  
    mse_1 = @(v) sum((((log(v./(r1.^2))-log(stgo.sens1(s_valid1))-reyleigh(408).*p1.*m1)./m1)-(ir1_440.*(408./hig_1).^(-ams_1))).^2);
    mse_2 = @(v) sum((((log(v./(r2.^2))-log(stgo.sens2(s_valid2))-reyleigh(408).*p2.*m2)./m2)-(ir2_440.*(408./hig_2).^(-ams_2))).^2);
    mse_3 = @(v) sum((((log(v./(r3.^2))-log(stgo.sens3(s_valid3))-reyleigh(408).*p3.*m3)./m3)-(ir3_440.*(408./hig_3).^(-ams_3))).^2);
    mse_4 = @(v) sum((((log(v./(r4.^2))-log(stgo.sens4(s_valid4))-reyleigh(408).*p4.*m4)./m4)-(ir4_440.*(408./hig_4).^(-ams_4))).^2);
        
    n1 = length((stgo.sens1(s_valid1)));
    n2 = length((stgo.sens2(s_valid2)));
    n3 = length((stgo.sens3(s_valid3)));
    n4 = length((stgo.sens4(s_valid4)));
    
    
    if ~isempty(s_valid1)
        [x1, fval1] = opt3(mse_1, n1, 4095);        
    else
        x1 = [4095];
        fval1 = 0;
    end
    
    if ~isempty(s_valid2)
        [x2, fval2] = opt3(mse_2, n2, 4095);       
    else
        x2 = [4095];
        fval2 = 0;
    end
            
    if ~isempty(s_valid3)
        [x3, fval3] = opt3(mse_3, n3, 4095);
    else
        x3 = [4095];
        fval3 = 0;
    end
            
    if ~isempty(s_valid4)
        [x4, fval4] = opt3(mse_4, n4, 4095);
    else
        x4 = [4095];
        fval4 = 0;
    end
    
    out.x1_s(1) = x1;

    out.x2_s(1) = x2;

    out.x3_s(1) = x3;

    out.x4_s(1) = x4;

    out.fval1_s = sqrt(fval1);
    out.fval2_s = sqrt(fval2);
    out.fval3_s = sqrt(fval3);
    out.fval4_s = sqrt(fval4);
    
    if ~isempty(s_valid1)
        out.valid_1(1,:) = s_valid1;
        stgo.valid_1(1,:) = s_valid1;
    else
        out.valid_1 = false;
        stgo.valid_1 = false;
    end
    
    if ~isempty(s_valid2)
        out.valid_2(1,:) = s_valid2;
        stgo.valid_2(1,:) = s_valid2;
    else
        out.valid_2 = false;
        stgo.valid_2 = false;
    end    
    
    if ~isempty(s_valid3)
        out.valid_3(1,:) = s_valid3;
        stgo.valid_3(1,:) = s_valid3;
    else
        out.valid_3 = false;
        stgo.valid_3 = false;
    end    
    
    if ~isempty(s_valid4)
        out.valid_4(1,:) = s_valid4;
        stgo.valid_4(1,:) = s_valid4;
    else
        out.valid_4 = false;
        stgo.valid_4 = false;
    end    
    
    save(strcat('Stgo/',dig,'.mat'), 'stgo')
    save(strcat('Calb3/',dig,'.mat'), 'out')
end