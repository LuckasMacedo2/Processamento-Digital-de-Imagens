function imagem = cisalhamento(img, sx, sy)
    % sx e sy, definem o cisalhamento horizontal ou vertical
    % se sx então o cisalhamento é na vertical, se sy = 0 então o
    % cisalhamneto é na horizontal
    % Economizando assim, linhas de código

    [i j k] = size(img);
    imagem = zeros(j, i, k, 'uint8');
    
    for x = 1: i
        for y = 1: j
            x1 = round(x + sx * y); % round caso o coeficiente seja um numero real
            y1 = round(y + sy * x);
            imagem(x1, y1, :) = img(x, y, :);
        end
    end

end