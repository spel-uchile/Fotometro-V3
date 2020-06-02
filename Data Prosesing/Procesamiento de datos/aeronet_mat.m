function aero = aeronet_mat(direction, files,sub_folder,places)
% Obtine una estructura bruta
format long g
    k = 1;
    for j = 1:1:length(files(:,1))
        file = strcat(direction,'/',files(j,:))
     
        raw = fileread(file);
        raw = string(raw);
        raw = splitlines(raw);
   
        aer_label = strsplit(raw(7),',');
        aer_data = strsplit(raw(8),',');
        for i = 9:1:(length(raw)-1)
            row = strsplit(raw(i),',');
            aer_data = [aer_data; row];
        end
        
        for i = 1:1:length(aer_data(:,1))
            fecha = strsplit(aer_data(i,1),':');
            hora = strsplit(aer_data(i,2),':');
            out_r.day(1,k) = str2num(char(fecha(1)));
            out_r.month(1,k) = str2num(char(fecha(2)));
            out_r.year(1,k) = str2num(char(fecha(3)));
            out_r.hour(1,k) = str2num(char(hora(1)));
            out_r.minute(1,k) = str2num(char(hora(2)));
            out_r.second(1,k) = str2num(char(hora(3)));
            out_r.aod_1640(1,k) = str2num(char(aer_data(i,5)));
            out_r.aod_1020(1,k) = str2num(char(aer_data(i,6)));
            out_r.aod_870(1,k) = str2num(char(aer_data(i,7)));
            out_r.aod_675(1,k) = str2num(char(aer_data(i,10)));
            out_r.aod_500(1,k) = str2num(char(aer_data(i,19)));
            out_r.aod_440(1,k) = str2num(char(aer_data(i,22)));
            out_r.aod_380(1,k) = str2num(char(aer_data(i,25)));
            out_r.aod_340(1,k) = str2num(char(aer_data(i,26)));
            out_r.p_water(1,k) = str2num(char(aer_data(i,27)));
            out_r.ams_440_870(1,k) = str2num(char(aer_data(i,65)));
            out_r.ams_380_500(1,k) = str2num(char(aer_data(i,66)));
            out_r.ams_440_675(1,k) = str2num(char(aer_data(i,67)));
            out_r.ams_500_870(1,k) = str2num(char(aer_data(i,68)));
            out_r.ams_340_440(1,k) = str2num(char(aer_data(i,69)));
            out_r.ams_440_675(1,k) = str2num(char(aer_data(i,70)));
            out_r.cimel(1,k) = str2num(char(aer_data(i,72)));
            out_r.latitude(1,k) = str2num(char(aer_data(i,74)));
            out_r.longitude(1,k) = str2num(char(aer_data(i,75)));
            out_r.elevation(1,k) = str2num(char(aer_data(i,76)));
            out_r.zenith(1,k) = str2num(char(aer_data(i,77)));
            out_r.m(1,k) = str2num(char(aer_data(i,78)));
            out_r.temperature(1,k) = str2num(char(aer_data(i,79)));
            out_r.ozone(1,k) = str2num(char(aer_data(i,80)));
            out_r.no2(1,k) = str2num(char(aer_data(i,81)));
            out_r.e_1640(1,k) = str2num(char(aer_data(i,84)));
            out_r.e_1020(1,k) = str2num(char(aer_data(i,85)));
            out_r.e_870(1,k) = str2num(char(aer_data(i,86)));
            out_r.e_675(1,k) = str2num(char(aer_data(i,89)));
            out_r.e_500(1,k) = str2num(char(aer_data(i,98)));
            out_r.e_440(1,k) = str2num(char(aer_data(i,101)));
            out_r.e_380(1,k) = str2num(char(aer_data(i,104)));
            out_r.e_340(1,k) = str2num(char(aer_data(i,105))); 
            out_r.date(1,k) = datetime(out_r.year(1,k),out_r.month(1,k),out_r.day(1,k),out_r.hour(1,k),out_r.minute(1,k),out_r.second(1,k));
            out_r.datenum(1,k) = datenum(out_r.year(1,k),out_r.month(1,k),out_r.day(1,k),out_r.hour(1,k),out_r.minute(1,k),out_r.second(1,k));
            k = k+1;
        end
    end
    datenum_list = sort(out_r.datenum);
    k = 1;
    for i = 1:1: length(datenum_list)
        index = find(out_r.datenum == datenum_list(i));
        aero.day(1,k) = out_r.day(1,index);
        aero.month(1,k) = out_r.month(1,index);
        aero.year(1,k) = out_r.year(1,index);
        aero.hour(1,k) = out_r.hour(1,index);
        aero.minute(1,k) = out_r.minute(1,index);
        aero.second(1,k) = out_r.second(1,index);
        aero.aod_1640(1,k) = out_r.aod_1640(1,index);
        aero.aod_1020(1,k) = out_r.aod_1020(1,index);
        aero.aod_870(1,k) = out_r.aod_870(1,index);
        aero.aod_675(1,k) = out_r.aod_675(1,index);
        aero.aod_500(1,k) = out_r.aod_500(1,index);
        aero.aod_440(1,k) = out_r.aod_440(1,index);
        aero.aod_380(1,k) = out_r.aod_380(1,index);
        aero.aod_340(1,k) = out_r.aod_340(1,index);
        aero.p_water(1,k) = out_r.p_water(1,index);
        aero.ams_440_870(1,k) = out_r.ams_440_870(1,index);
        aero.ams_380_500(1,k) = out_r.ams_380_500(1,index);
        aero.ams_440_675(1,k) = out_r.ams_440_675(1,index);
        aero.ams_500_870(1,k) = out_r.ams_500_870(1,index);
        aero.ams_340_440(1,k) = out_r.ams_340_440(1,index);
        aero.ams_440_675(1,k) = out_r.ams_440_675(1,index);
        aero.cimel(1,k) = out_r.cimel(1,index);
        aero.latitude(1,k) = out_r.latitude(1,index);
        aero.longitude(1,k) = out_r.longitude(1,index);
        aero.elevation(1,k) = out_r.elevation(1,index);
        aero.zenith(1,k) = out_r.zenith(1,index);
        aero.m(1,k) = out_r.m(1,index);
        aero.temperature(1,k) = out_r.temperature(1,index);
        aero.ozone(1,k) = out_r.ozone(1,index);
        aero.no2(1,k) = out_r.no2(1,index);
        aero.e_1640(1,k) = out_r.e_1640(1,index);
        aero.e_1020(1,k) = out_r.e_1020(1,index);
        aero.e_870(1,k) = out_r.e_870(1,index);
        aero.e_675(1,k) = out_r.e_675(1,index);
        aero.e_500(1,k) = out_r.e_500(1,index);
        aero.e_440(1,k) = out_r.e_440(1,index);
        aero.e_380(1,k) = out_r.e_380(1,index);
        aero.e_340(1,k) = out_r.e_340(1,index); 
        aero.date(1,k) = out_r.date(1,index);
        aero.datenum(1,k) = out_r.datenum(1,index);
        k = k+1;
    end
    save(strcat('Aero/','aero_',sub_folder,'_', places,'.mat'), 'aero')
end