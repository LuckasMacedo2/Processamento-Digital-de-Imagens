function imagem = rotacao(img, teta)
    [i j k] = size(img);
    imagem = zeros(j, i, k, 'uint8');
    
    xf = ceil(i * abs(cosd(teta)) + j * abs(sind(teta)));
    yf = ceil(i * abs(sind(teta)) + j * abs(cosd(teta)));


    imagem = zeros(xf, yf, k, 'uint8');

    l = ceil(i / 2);
    h = ceil(j / 2);

    [a b c] = size(imagem);
    meio_rot_x = ceil(a / 2);
    meio_rot_y = ceil(b / 2);

    for x  = 1: a
       for y  = 1: b
           x1 = round((x - meio_rot_x) * cosd(teta) + (y - meio_rot_y) * sind(teta)) + l;
           y1 = round(-(x - meio_rot_x) * sind(teta) + (y - meio_rot_y) * cosd(teta)) + h;
           if (x1 >= 1 && y1 >= 1 && x1 <= i && y1 <= j)
                imagem(x, y, :) = img(x1, y1, :);
           end
       end
    end
  
end