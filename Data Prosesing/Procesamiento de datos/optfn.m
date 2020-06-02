function [mse_1, mse_2, mse_3, mse_4, n1, n2, n3, n4] = optfn(aero_data, data)
%define la función objetivo por dia
    %longitudes de onda
    low_wl = aero_data.e_340*1000;
    high_wl = aero_data.e_440*1000;
    amstrong = aero_data.ams_340_440;
    
    %Interpolacion de datos
    ir1_340 = interp1(aero_data.datenum, aero_data.aod_340, data.datenum(data.valid1),'nearest','extrap');    
    ir1_440 = interp1(aero_data.datenum, aero_data.aod_440, data.datenum(data.valid1),'nearest','extrap');
    ams_1 = interp1(aero_data.datenum, amstrong, data.datenum(data.valid1),'nearest','extrap');
    hig_1 = interp1(aero_data.datenum, high_wl, data.datenum(data.valid1),'nearest','extrap');
    
    ir2_340 = interp1(aero_data.datenum, aero_data.aod_340, data.datenum(data.valid2),'nearest','extrap');    
    ir2_440 = interp1(aero_data.datenum, aero_data.aod_440, data.datenum(data.valid2),'nearest','extrap');
    ams_2 = interp1(aero_data.datenum, amstrong, data.datenum(data.valid2),'nearest','extrap');
    hig_2 = interp1(aero_data.datenum, high_wl, data.datenum(data.valid2),'nearest','extrap');
    
    ir3_340 = interp1(aero_data.datenum, aero_data.aod_340, data.datenum(data.valid3),'nearest','extrap');    
    ir3_440 = interp1(aero_data.datenum, aero_data.aod_440, data.datenum(data.valid3),'nearest','extrap');
    ams_3 = interp1(aero_data.datenum, amstrong, data.datenum(data.valid3),'nearest','extrap');
    hig_3 = interp1(aero_data.datenum, high_wl, data.datenum(data.valid3),'nearest','extrap');
    
    ir4_340 = interp1(aero_data.datenum, aero_data.aod_340, data.datenum(data.valid4),'nearest','extrap');    
    ir4_440 = interp1(aero_data.datenum, aero_data.aod_440, data.datenum(data.valid4),'nearest','extrap');
    ams_4 = interp1(aero_data.datenum, amstrong, data.datenum(data.valid4),'nearest','extrap');
    hig_4 = interp1(aero_data.datenum, high_wl, data.datenum(data.valid4),'nearest','extrap');
    
    r1 = data.r(data.valid1);
    m1 = data.m(data.valid1);
    p1 = data.pressure(data.valid1)./1013.25;
    r2 = data.r(data.valid2);
    m2 = data.m(data.valid2);
    p2 = data.pressure(data.valid2)./1013.25;
    r3 = data.r(data.valid3);
    m3 = data.m(data.valid3);
    p3 = data.pressure(data.valid3)./1013.25;
    r4 = data.r(data.valid4);
    m4 = data.m(data.valid4);
    p4 = data.pressure(data.valid4)./1013.25;
    
    mse_1 = @(l,v) sum((((log(v./(r1.^2))-log(data.sens1(data.valid1))-reyleigh(l).*p1.*m1)./m1)-(ir1_440.*(l./hig_1).^(-ams_1))).^2);
    mse_2 = @(l,v) sum((((log(v./(r2.^2))-log(data.sens2(data.valid2))-reyleigh(l).*p2.*m2)./m2)-(ir2_440.*(l./hig_2).^(-ams_2))).^2);
    mse_3 = @(l,v) sum((((log(v./(r3.^2))-log(data.sens3(data.valid3))-reyleigh(l).*p3.*m3)./m3)-(ir3_440.*(l./hig_3).^(-ams_3))).^2);
    mse_4 = @(l,v) sum((((log(v./(r4.^2))-log(data.sens4(data.valid4))-reyleigh(l).*p4.*m4)./m4)-(ir4_440.*(l./hig_4).^(-ams_4))).^2);
    
    n1 = length((data.sens1(data.valid1)));
    n2 = length((data.sens2(data.valid2)));
    n3 = length((data.sens3(data.valid3)));
    n4 = length((data.sens4(data.valid4)));
    
end
