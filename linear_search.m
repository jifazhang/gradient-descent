function t=linear_search(f,gf,x,dx,alp,bet)
    t0=1;
    while f(x+t0*dx(x))>f(x)+alp*t0*gf(x)*dx(x)
        t0=bet*t0;
    end
    t=t0;
end
