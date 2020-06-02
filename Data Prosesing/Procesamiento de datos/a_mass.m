function air_mass = a_mass(zenit)
    angle = degtorad(zenit);
    air_mass = (1.002432* cos(angle).^2+0.148386*cos(angle)+0.0096467)/(cos(angle).^3+0.149864*cos(angle).^2+0.0102963*cos(angle)+0.000303978);
    %air_mass = (1/(cos(angle)+0.50572*(96.07995-zenit).^-1.6364));
end