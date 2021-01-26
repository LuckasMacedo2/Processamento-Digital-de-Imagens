function imagem = escala_cinza(img)
    [i j k] = size(img);
    
    imagem = zeros(i, j, 'uint8');
    
    for x = 1 : i
       for y = 1 : j
          imagem(x, y) = 0.29 * img(x, y, 1) +  0.59 * img(x, y, 2) + 0.11 * img(x, y, 3);
       end
    end
end