function imagem = diminui_escala(img, e)
    [i j k] = size(img);
    imagem = zeros(round(i/e), round(j/e), k, 'uint8');

    xi = 1;
    yi = 1;

    for x  = 1: e: i
        yi = 1;
       for y  = 1: e: j
           imagem(xi, yi, :) = img(x, y, :);
           yi = yi + 1;
       end
       xi = xi + 1;
    end
 
end