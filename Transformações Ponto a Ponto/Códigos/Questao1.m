img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 2\Imagens\img.jpg');

L = 0.68;

img_cinza = escala_cinza(img);
imshow(img_cinza);
title('Imagem em escala de cinza');

img_norm = normaliza(img_cinza);
figure();
imshow(img_norm);
title('Imagem normalizada');

img_bin = binariza(img_norm, L);
figure();
imshow(img_bin);
title(strcat('Imagem Binarizada com L = ', num2str(L)));