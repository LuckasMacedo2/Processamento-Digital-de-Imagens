img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 3\Imagens\img.jpg');

imshow(img);
title('Imagem Original');

Tam = 3;
Mascara = 1/(Tam*Tam) * ones(Tam,Tam);

img_filter = imfilter(img, Mascara);

figure();
imshow(img_filter);
title('Imagem Filtrada');