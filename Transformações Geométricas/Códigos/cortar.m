function imagem = cortar(img, cx, cy)
% cx quantos pixels ser�o cortados em x
% cy quantos pixels ser�o cortados em y
    [i j k] = size(img);
    imagem = zeros(cx, cy, k, 'uint8');
    
    for x = 1: cx
        for y = 1: cy
            imagem(x, y, :) = img(x, y, :);
        end
    end
end
