function out = denoise(s, dn, fl)
%Funcion EXPERIMENTAL: realiza un denosisng a la señal filtrada usand dwt
    int = interp1(dn(fl),s(fl),dn,'linear','extrap');
    out = wden(int,'modwtsqtwolog','s','mln',4,'db4');
end
