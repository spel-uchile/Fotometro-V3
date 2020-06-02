function [out1, out2] = rm_outlier(vector, feature, mod)
    % Remueve outliers por recortando el vector
    if mod == 1
        k = 1.5;
    elseif mod == 2
        k = 3;
    end
    
    q = quantile(vector, [0.25, 0.75]);
    %dif de cuartos para valores atipicos
    delta = k*(q(2)-q(1));
    
    lwb = q(1) - delta;
    upb = q(2) + delta;
    
    index = find((vector >= lwb) & (vector <= upb));
    
    out1 = vector(index);
    out2 = feature(index);
    
end