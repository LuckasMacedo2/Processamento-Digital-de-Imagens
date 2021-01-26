img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 2\Imagens\img.jpg');

bit = 4;

img_pb = quantifica_plano(img, bit);

figure();
imshow(img_pb);
title(strcat('Imagem quantificada com n = ', num2str(bit), ' bits'));

figure();
imshow(img);
title('Imagem original');

figure();
imhist(img_pb);
title(strcat('Hitograma da imagem qunatificada com n = ', num2str(bit), ' bits'));

figure();
imhist(img);
title('Histograma da imagem original');
