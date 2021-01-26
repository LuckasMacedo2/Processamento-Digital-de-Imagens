% Filtro passa-baixa
function pixel = passa_baixa(d_u_v, d0)
    pixel = 0;
    if d_u_v <= d0
        pixel = 1;
    end
end