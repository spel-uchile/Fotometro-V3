function [p,r] = regresion(x,y)
p = polyfit(x,y,1);

yfit = p(1)*x + p(2);
yresid = y - yfit;

SSresid = sum(yresid.^2);
SStotal = (length(y)-1) * var(y);

r = 1 - SSresid/SStotal;
end