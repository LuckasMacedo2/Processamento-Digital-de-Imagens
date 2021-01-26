function imagem = limiarizacao(img, L)
    [i j k] = size(img);
    
    imagem = zeros(i, j, k, 'uint8');
    
    for x = 1 : i
       for y = 1 : j
          for z = 1: k 
                imagem(x, y, z) = verifica(img(x, y, z), L);
          end
       end
    end
end

function pixel = verifica(pixel_ant, L)
    if pixel_ant >= L
        pixel = 255;
    else
        pixel = 0;
    end
end

