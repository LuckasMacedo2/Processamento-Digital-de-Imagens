function imagem = translacao(img, dx, dy)
% dx quantos pixels serão transladados em x
% dy quantos pixels serão transladados em y
    [i j k] = size(img);
    imagem = img;
    
    for x = 1: dx
        for y = 1: dy
            imagem(x, y, :) = 0;
            imagem(x, j - y, :) = img(x, y, :);
        end
    end

end
