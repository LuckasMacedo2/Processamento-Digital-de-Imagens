function imagem = normaliza(img)

    L = max(max(img)); % Define o maior valor da escala, por ser uma matriz foi necess�rio usar a fun��o max duas veze

    [i j k] = size(img);
    
    imagem = zeros(i, j, k, 'double');
        
    for x = 1: i
       for y = 1: j
           imagem(x, y, :) = double(img(x, y, :)) ./ double(L);
       end
    end
end
