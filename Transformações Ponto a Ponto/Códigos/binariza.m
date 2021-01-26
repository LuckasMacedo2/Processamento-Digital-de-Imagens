function imagem = binariza(img, lim)
    
    [i j k] = size(img);
    
    imagem = zeros(i, j, k, 'double');

    for x = 1: i
       for y = 1: j
           if img(x, y, :) <= lim
               imagem(x, y, :) = 0;
           else
               imagem(x, y, :) = 1;
           end
       end
    end
end