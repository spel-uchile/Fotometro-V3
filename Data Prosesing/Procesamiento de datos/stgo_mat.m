function stgo = stgo_mat(direction, files,sub_folder)
% Obtine una estructura bruta
format long g
    k = 1;
    for j = 1:1:length(files(:,1))
        file = strcat(direction,'/',files(j,:))
        data = csvread(file);
     
        for i = 1:1:length(data(:,1))
            dato = data(i,:);
            Y = dato(10);
            M = dato(9);
            D = dato(8);
            H = dato(11);
            MN = dato(12);
            S = dato(13);
            muestra = datenum(Y,M,D,H,MN,S);
            %si hay elementos verificar que la medición está incluida
            if k == 1
                out_r.datenum(1,k) = datenum(-1,-1,-1,-1,-1,-1);
            end
            
            if ismember(muestra, out_r.datenum)== 0 && Y>2016 && Y<2030
                out_r.id(1,k) = dato(1);
                out_r.sens1(1,k) = dato(2);
                out_r.sens2(1,k) = dato(3);
                out_r.sens3(1,k) = dato(4);
                out_r.sens4(1,k) = dato(5);
                out_r.lat(1,k) = dato(6);
                out_r.long(1,k) = dato(7);
                out_r.day(1,k) = dato(8);
                out_r.month(1,k) = dato(9);
                out_r.year(1,k) = dato(10);
                out_r.hour(1,k) = dato(11);
                out_r.minute(1,k) = dato(12);
                out_r.second(1,k) = dato(13);
                out_r.altitude_gps(1,k) = dato(14);
                out_r.temp(1,k) = dato(15);
                out_r.pressure(1,k) = dato(16);
                out_r.altitude_bmp(1,k) = dato(17);
                out_r.date(1,k) = datetime(Y,M,D,H,MN,S);
                out_r.datenum(1,k) = datenum(Y,M,D,H,MN,S);
                out_r.m(1,k) = 0;
                out_r.r(1,k) = 0;
                out_r.zenith(1,k) = 0;
                k = k+1;
            end
        end 
    end
    datenum_list = sort(out_r.datenum);
    k = 1;
    for i = 1:1: length(datenum_list)
        index = find(out_r.datenum == datenum_list(i));
        stgo.id(1,k) = out_r.id(1,index);
        stgo.sens1(1,k) = out_r.sens1(1,index);
        stgo.sens2(1,k) = out_r.sens2(1,index);
        stgo.sens3(1,k) = out_r.sens3(1,index);
        stgo.sens4(1,k) = out_r.sens4(1,index);
        stgo.lat(1,k) = out_r.lat(1,index);
        stgo.long(1,k) = out_r.long(1,index);
        stgo.day(1,k) = out_r.day(1,index);
        stgo.month(1,k) = out_r.month(1,index);
        stgo.year(1,k) = out_r.year(1,index);
        stgo.hour(1,k) = out_r.hour(1,index);
        stgo.minute(1,k) = out_r.minute(1,index);
        stgo.second(1,k) = out_r.second(1,index);
        stgo.altitude_gps(1,k) = out_r.altitude_gps(1,index);
        stgo.temp(1,k) = out_r.temp(1,index);
        stgo.pressure(1,k) = out_r.pressure(1,index);
        stgo.altitude_bmp(1,k) = out_r.altitude_bmp(1,index);
        stgo.date(1,k) = out_r.date(1,index);
        stgo.datenum(1,k) = out_r.datenum(1,index);
        stgo.m(1,k) = out_r.m(1,index);
        stgo.r(1,k) = out_r.r(1,index);
        stgo.zenith(1,k) = out_r.zenith(1,index);
        k = k+1;
    end
    save(strcat('Stgo/',sub_folder,'.mat'), 'stgo')
end