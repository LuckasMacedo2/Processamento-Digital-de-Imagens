function imagem = aumento_escala(img, ex, ey)
% ex escala em x
% ey escala em y
    [i j k] = size(img);
    imagem = zeros(ex*i, ey*j, k, 'uint8');
   
    xi = 1;
    yi = 1;

    for x = 1: i
       for y = 1: j
           k = 1;
           while k <= ex
               l = 1;
               while l <= ey
                    imagem(xi + k, yi + l, :) = img(x, y, :);
                    l = l + 1;
               end
               k = k + 1;
               yi = yi + 1;
           end
       end
       xi = xi + ex;
       yi = 1;
    end
end
