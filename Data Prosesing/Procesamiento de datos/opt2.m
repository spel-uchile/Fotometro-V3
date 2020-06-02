function [x1, fval1] = opt2(o1, n1, v0, l0, d0)
%Calcula el optimo de lambda y voltaje extra terrestre
    obj_1 = @(x) (o1(x(1),x(2),x(3)))./(n1);
    
    x0 = [l0; v0; d0];
    
    options = optimoptions('fminunc','Algorithm','quasi-newton','MaxFunctionEvaluations',1000);
    options.Display = 'iter';
    
    [x1, fval1, exitflag1, out1] = fminunc(obj_1, x0, options);
end