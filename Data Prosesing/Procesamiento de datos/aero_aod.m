function out = aero_aod(aero_data, fl, l)
    low_wl = aero_data.e_340(fl)*1000;
    high_wl = aero_data.e_440(fl)*1000;
    amstrong = aero_data.ams_340_440(fl);
    out = real(aero_data.aod_440(fl).*(l./high_wl).^(-amstrong));
end