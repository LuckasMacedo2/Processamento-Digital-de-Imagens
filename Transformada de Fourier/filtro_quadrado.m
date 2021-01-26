function filtro = filtro_quadrado(i, j, k, m, n)
    % i -> quantidade de linhas da imagem
    % j -> quantidade de colunas da imagem
    % k -> quantidade de canais de cor da imagem
    % m x n dimensões do filtro

    filtro = zeros(i, j, k, 'double');
    
    
    x0 = round(i/2 - m/2);
    y0 = round(j/2 - n/2);

    for x = x0: m + x0
        for y = y0: n + y0
           filtro(x, y,:) = 1;
        end
    end

end