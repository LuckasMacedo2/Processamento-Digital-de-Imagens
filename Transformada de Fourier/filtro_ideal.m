function filtro = filtro_ideal(i, j, k, d0, tipo, N)
% i -> quantidade de linhas da imagem
% j -> quantidade de colunas da imagem
% k -> quantidade de canais de cor da imagem
% d0 é o raio (frequencia de corte) do filtro
% tipo é o tipo deo filtro
% 'baixa' -> Filtro passa baixa
% 'alta' -> Filtro passa alta
% 'butt' -> Filtro Butterworth
    
    % Distância entre os pontos
    filtro = zeros(i, j, k, 'double');
    d_u_v = 0;
    for x = 1: i
       for y = 1: j
           % Calcula a distância entre o ponto (x, y) e centro da imagem
           % (i/2, j/2)
           d_u_v = sqrt((x - i/2)^2 + (y - j/2)^2);
           
           % Filtro passa-baixa
           if strcmp(tipo, 'baixa')
               filtro(x, y,:) = passa_baixa(d_u_v, d0);
           elseif strcmp(tipo, 'alta')
               filtro(x, y,:) = passa_alta(d_u_v, d0); 
           elseif strcmp(tipo, 'butt')
               filtro(x, y,:) = butterworth(d_u_v, d0, N);
           end
       end
    end
    
end