function rey = reyleigh(lambda)
    %if (lambda <= 500 && lambda >= 200)
    if lambda <= 500
        A = 6.50362e-3;
        B = 3.55212;
        C = 1.35579;
        D = 0.11563;
    elseif lambda >= 500
        A = 8.64627e-3;
        B = 3.99668;
        C = 1.10298e-3;
        D = 2.71393e-2;
    end
    rey = A.*(lambda./1e3).^-(B+C*(lambda./1e3)+D./(lambda./1e3));
    %rey = A*(lambda).^-(B+C*(lambda)+D/(lambda));
end