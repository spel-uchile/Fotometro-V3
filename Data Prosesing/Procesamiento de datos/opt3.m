function [x1, fval1] = opt3(o1, n1, v0)
%Calcula el optimo de lambda y voltaje extra terrestre
    obj_1 = @(x) (o1(x))./(n1);
    
    x0 = v0;
    
    options = optimoptions('fminunc','Algorithm','quasi-newton','MaxFunctionEvaluations',1000);
    options.Display = 'iter';
    
    [x1, fval1, exitflag1, out1] = fminunc(obj_1, x0, options);
end