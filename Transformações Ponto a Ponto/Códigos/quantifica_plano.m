function imagem = quantifica_plano(img, n)
    [i j k] = size(img);
    
    imagem = zeros(i, j, k, 'uint8');
    
    % Cria o vetor de cores
    passo = 256/2^n;
    cores = 0:passo:256;
    
    for x = 1 : i
       for y = 1 : j
           % Aplica a equação a cada pixel da imagem
            imagem(x, y, 1) = cores((img(x, y, 1) / passo) + 1);
            imagem(x, y, 2) = cores((img(x, y, 2) / passo) + 1);
            imagem(x, y, 3) = cores((img(x, y, 3) / passo) + 1);            
       end
    end
end
