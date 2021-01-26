% Carregando a imagem
img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 4\Imagens\img.jpg');

% Imagem em escala de cinza
img_cinza = rgb2gray(img);

figure();
imshow(img_cinza);
title('Imagem em escala de cinza');

% Aplciando a transformada
img_fft = fft2(img_cinza);
img_mag = fftshift(log(abs(img_fft)));

figure();
imshow(img_mag,[]);
title('Magnitude da imagem');