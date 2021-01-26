function imagem = fatiamento_bit(img, bit)
    [i j k] = size(img);
    
    imagem = zeros(i, j, k, 'uint8');
    
    for x = 1 : i
       for y = 1 : j
           
           imagem(x, y, :) = (img(x, y, :) / 2^(bit));
       end
    end
    
end