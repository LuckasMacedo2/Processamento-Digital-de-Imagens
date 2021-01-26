function imagem = espelhar_vertical(img)
    [i j k] = size(img);
    imagem = zeros(j, i, k, 'uint8');
    
    for x = 1: i
        for y = 1: j
            imagem(i - x + 1, j - y + 1, :) = img(x, y, :);
        end
    end  
end