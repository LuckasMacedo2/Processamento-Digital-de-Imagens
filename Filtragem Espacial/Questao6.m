img = imread('D:\Estudos\Eng. de Computa��o\Processamento Digital de Imagens\Listas\Lista 3\Imagens\img.jpg');
% 
mascara2 = [0 0 0 0 0; 1 1 1 1 1; 0 0 0 0 0; -1 -1 -1 -1 -1; 0 0 0 0 0];
angulo = 196
filtro = imrotate(mascara2, angulo, 'crop')

img_imfilter = imfilter(img, filtro);
img_fun = corr_conv(img, filtro, 'corr');

figure();
imshow(img_imfilter);
title(strcat('Imagem filtrada com imfilter, �ngulo = ', num2str(angulo)));

figure();
imshow(img_fun);
title(strcat('Imagem filtrada com a fun��o desenvolvida, �ngulo = ', num2str(angulo)));