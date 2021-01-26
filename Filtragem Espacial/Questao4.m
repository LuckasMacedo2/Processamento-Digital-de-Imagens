img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 3\Imagens\img.jpg');


figure();
imshow(img);
title('Imagem Original');

Tam = 10;
Mascara = 1/(Tam*Tam) * ones(Tam,Tam);

img_filter = corr_conv(img, Mascara, 'corr');
figure();
imshow(img_filter);
title(strcat('Imagem filtrada com Tam = ', num2str(Tam)));

img_filter1 = imfilter(img, Mascara);
figure();
imshow(img_filter1);
title('Imagem filtrada com imfilter');
