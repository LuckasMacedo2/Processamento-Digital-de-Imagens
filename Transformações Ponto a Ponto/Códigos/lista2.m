img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 2\Imagens\img.jpg');

img_cinza = rgb2gray(img);
imshow(img_cinza);
title('Imagem em escala de cinza');

img_norm = normaliza(img_cinza);
figure();
imshow(img_norm);
title('Imagem normalizada');

img_bin = binariza(img_norm, 0.68);
figure();
imshow(img_bin);
title('Imagem Binarizada');