img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 2\Imagens\img.jpg');

c = 100;

img_clara = img_mais_clara(img, c);

imshow(img_clara);
title('Imagem mais clara');