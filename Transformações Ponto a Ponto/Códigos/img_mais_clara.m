function imagem = img_mais_clara(img, c)
    [i j k] = size(img);

    imagem = zeros(i, j, k, 'uint8');    
    
    for x = 1 : i
       for y = 1 : j
          imagem(x, y, :) = img(x, y, :) + c;
       end
    end
end