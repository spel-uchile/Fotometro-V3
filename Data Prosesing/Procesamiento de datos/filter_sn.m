function ind_fil = filter_sn(stgo, date_num, aero_datenum)
% Filtra outliders de un día
    delta_sens1 = [];
    %calculo diferencias
    for i = 1:1:(length(stgo)-1)
        delta_sens1(i) = (stgo(i+1)-stgo(i))/(date_num(i+1)-date_num(i));
    end
    
    %calculo diferencias de las diferencias
    delta2_sens1 = [];
            
    for i = 1:1:(length(stgo)-2)
        delta2_sens1(i) = (delta_sens1(i+1)-delta_sens1(i))/(date_num(i+1)-date_num(i));
    end
    
    q_1 = quantile(delta2_sens1, [0.25, 0.75]);
    %dif de cuartos para valores atipicos
    d_1 = 1.5*(q_1(2)-q_1(1));
    
    %cotas inferiores y superiores para valores validos
    l_1 = q_1(1) - d_1;
    u_1 = q_1(2) + d_1;

    valid1 = [];
            
            %mn;
            %index_stgo;
    
    for i = 1:1:(length(stgo)-2)
        if stgo(i+1) > 150 && stgo(i+1)< 3000 
            if delta2_sens1(i) >= l_1 && delta2_sens1(i) <= u_1
                valid1 = [valid1 i];
            end
        end
    end
    
    valid1_pc = [];
    
    for j = 1:1:length(valid1)
        i = valid1(j);
        if ~isempty(find((aero_datenum <= date_num(i)+datenum(0,0,0,0,1,0))&(aero_datenum >= date_num(i)-datenum(0,0,0,0,5,0)),1))
            valid1_pc = [valid1_pc i];
        end
    end
    ind_fil = valid1_pc;
end