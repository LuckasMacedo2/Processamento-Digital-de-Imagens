% Filtro passa-alta
function pixel = passa_alta(d_u_v, d0)
    pixel = 1;
    if d_u_v <= d0
        pixel = 0;
    end
end