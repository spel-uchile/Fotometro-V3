function  out = plot_aod(data, date, adata, adate,n)
    c1 = 1;
    fig1 = figure(n);
    plot(adate,adata,'.-');
    c1 = c1+1;
    ax.ColorOrderIndex = c1;
    hold on;
    grid on;
    plot(date, data, '.-');
    c1 = c1+1;
    ax.ColorOrderIndex = c1;
    ylim([0 0.5]);
    legend();
    xlabel('Time');
    ylabel(strcat("AOD",{' '}, '408',{' '}, "nm"));
    title('Sensor 0');
    hold off;
    out = fig1;
end