function [data, date, adata, adate] = aod_data(aero, out, stgo, day, month, year, cday, cmonth, cyear, s)
    %Sailda de datos filtrados y listos para graficar

    % Indices de evaluacion
    index_aero = find((aero.date >= datetime(year,month,day,0,0,0))&(aero.date <= datetime(year,month,day,23,59,59)));
    index_stgo = find((stgo.date >= datetime(year,month,day,0,0,0))&(stgo.date <= datetime(year,month,day,23,59,59)));
    % Datos de calibracion
    index_cal = find(out.date == (datetime(cyear,cmonth,cday,0,0,0)));

    %extracción de datos del dia
    adn = aero.datenum(index_aero);
    dn = stgo.datenum(index_stgo);
    dt = stgo.date(index_stgo);
    adate= aero.date(index_aero);

    r = stgo.r(index_stgo);
    p = stgo.pressure(index_stgo);
    m = stgo.m(index_stgo);
    
    % Calculo de datos con cada sensor
    if s == 1
        lambda1 = out.x1(1, index_cal);
        v01 = out.x1(2, index_cal);
        s1 = stgo.sens1(index_stgo);
        fs1 = filter_sn(s1, dn, adn);
        date = dt(fs1);
        data = aod(s1(fs1),r(fs1),p(fs1),m(fs1),v01,lambda1);
        adata = aero_aod(aero, index_aero, lambda1);
    elseif s == 2
        lambda2 = out.x2(1, index_cal);
        v02 = out.x2(2, index_cal);
        s2 = stgo.sens2(index_stgo);
        fs2 = filter_sn(s2, dn, adn);
        date = dt(fs2);
        data = aod(s2(fs2),r(fs2),p(fs2),m(fs2),v02,lambda2);    
        adata = aero_aod(aero, index_aero, lambda2);
    elseif s == 3
        lambda3 = out.x3(1, index_cal);
        v03 = out.x3(2, index_cal);
        s3 = stgo.sens3(index_stgo);
        fs3 = filter_sn(s3, dn, adn);
        date = dt(fs3);
        data = aod(s3(fs3),r(fs3),p(fs3),m(fs3),v03,lambda3);    
        adata = aero_aod(aero, index_aero, lambda3);
    elseif s == 4
        lambda4 = out.x4(1, index_cal);
        v04 = out.x4(2, index_cal);
        s4 = stgo.sens4(index_stgo);
        fs4 = filter_sn(s4, dn, adn);
        date = dt(fs4);
        data = aod(s4(fs4),r(fs4),p(fs4),m(fs4),v04,lambda4);
        adata = aero_aod(aero, index_aero, lambda4);
    else
        date = 0;
        data = 0;
        adate = 0;
        adata = 0;
    end

end