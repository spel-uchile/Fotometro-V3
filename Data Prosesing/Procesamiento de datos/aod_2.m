function out = aod_2(v,r,p,m,v0,l,d)
    out = ((log(v0./(r.^2))-log(v)-reyleigh(l).*(p./1013.25).*m)./m+d);
end