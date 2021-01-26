function imagem = espelhar_horizontal(img)
    [i j k] = size(img);
    imagem = zeros(j, i, k, 'uint8');

    for x = 1: i
        for y = 1: j
            imagem(y, x, :) = img(x, y, :);
        end
    end
    
end