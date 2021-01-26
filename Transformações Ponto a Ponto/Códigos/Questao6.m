img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 2\Imagens\img.jpg');
L = 128;
img_lim = limiarizacao(img, L);

imshow(img);
title('Imagem original');

figure();
imshow(img_lim);
title(strcat('Imagem Limiarizada com L = ', num2str(L)));
