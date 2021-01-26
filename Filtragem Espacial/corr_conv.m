function imagem = corr_conv(img, w, tipo)
    % img = imagem de entrada
    % w = mascara
    % tipo = operacao a ser realizada 'corr' = correlação, 'conv' = convolução

    % Rotaciona w em 1800º
    if (tipo == 'conv')
       w = rot90(w, 2);  
    end

    [a b k] = size(img);
    [m n] = size(w);
    
    img_zeros = preenche_zeros(img, m-1, n-1);
    
    imagem = zeros(a + m -1, b + n - 1, k, 'uint8');
    
    for i = 1 : a + m - 1
       for j = 1: b + n - 1
           imagem(i, j, :) = calculo(img_zeros(i: i + m - 1, j:j + n - 1, :), w);
       end
    end
end
    

function mat = preenche_zeros(f, m, n)
    [x y k] = size(f);
    mat = zeros(x + 2 * m, y + 2 * n, k);
    
    for i = 1: x
        for j = 1: y
           mat(i + m , j + n, :) = f(i, j, :);
        end
    end
end

function pixel = calculo (f, w)
    [a b k] = size(f);
    
    pixel = 0;
    
    for i = 1: a
       for j = 1: b
           pixel = pixel + f(i, j, :) * w(i, j);
       end
    end
end