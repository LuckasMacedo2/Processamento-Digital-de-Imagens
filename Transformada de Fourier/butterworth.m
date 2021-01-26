% Filtro butterworth
function pixel = butterworth(d_u_v, d0, N)
    pixel = 1./(1 + (d_u_v/d0)^(2*N));
end